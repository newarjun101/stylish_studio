//
//  HomePageViewController.swift
//  stylishstudio
//
//  Created by Dev on 22/07/2024.
//

import UIKit

class HomePage: UIViewController {

    // var navItem : UINavigationItem!
    var topNav : UINavigationBar = {
        let nav = UINavigationBar()
        nav.tintColor = .red
        return nav
    }()
    
    
    var logo : UIImageView = {
        let image = UIImageView()
   let  img = UIImage(named:  logoImg)
        image.image = img
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var mainScrollView : UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.showsHorizontalScrollIndicator = false
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    var searchField : TextField = {
        let field = TextField()
        field.backgroundColor = .white
        field.placeholder = "Search"
        field.backgroundColor = .white
        field.leftViewMode = UITextField.ViewMode.always
        field.leftImage = UIImage(named: searchImg)
        field.layer.cornerRadius = 55
        field.clearButtonMode = UITextField.ViewMode.whileEditing
        field.translatesAutoresizingMaskIntoConstraints = false
        field.borderStyle = UITextField.BorderStyle.none
        field.layer.cornerRadius = 14
        field.layer.masksToBounds = false
        field.layer.shadowRadius = 6.0
        field.layer.shadowColor = UIColor.lightGray.cgColor
        field.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        field.layer.shadowOpacity = 0.2
        field.layer.borderWidth = 0
        return field
    }()
    private let subView1: UIView = {
    let view = UIView()
    view.heightAnchor.constraint(equalToConstant: 200).isActive = true
    view.backgroundColor = UIColor.blue
    return view
    }()
    private let subview2: UIView = {
    let view = UIView()
    view.heightAnchor.constraint(equalToConstant: 300).isActive = true
    view.backgroundColor = UIColor.cyan
    return view
    }()
    private let subview3: UIView = {
    let view = UIView()
    view.heightAnchor.constraint(equalToConstant: 400).isActive = true
    view.backgroundColor = UIColor.gray
    return view
    }()
    var navTitle : UILabel = {
        let label = UILabel()
        label.text = "StylishStudio"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .titleBlue
        label.font = UIFont.systemFont(ofSize: 18,weight: .semibold)
        return label
    }()
     
    let navTitleView : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        return stack
    }()
    private let scrollStackViewContainer: UIStackView = {
    let view = UIStackView()
    view.axis = .vertical
    view.spacing = 0
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        makeAppBarTitle()
        view.backgroundColor = .appBackground
        navigationController?.isNavigationBarHidden = false
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        UINavigationBar.appearance().isTranslucent = false
        appearance.titleTextAttributes = [.font: UIFont.boldSystemFont(ofSize: 20.0),.foregroundColor: UIColor.white]
        appearance.shadowColor = .clear
        // Customizing our navigation bar
        navigationController?.navigationBar.tintColor = .red
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationItem.titleView = navTitleView
        view.addSubview(searchField)
        view.addSubview(mainScrollView)
        mainScrollView.addSubview(scrollStackViewContainer)
        
        // search field
        NSLayoutConstraint.activate([
            searchField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 20),
            searchField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 16),
            searchField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -16),
            searchField.heightAnchor.constraint(equalToConstant:48)
        ])
        
        // search field
        NSLayoutConstraint.activate([
            mainScrollView.topAnchor.constraint(equalTo: searchField.bottomAnchor,constant: 20),
            mainScrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 16),
            mainScrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -16),
            mainScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ]) 
        NSLayoutConstraint.activate([
            scrollStackViewContainer.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor,constant: 0),
            scrollStackViewContainer.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor,constant: 0),
            scrollStackViewContainer.topAnchor.constraint(equalTo: mainScrollView.topAnchor,constant: 0),
            scrollStackViewContainer.bottomAnchor.constraint(equalTo: mainScrollView.bottomAnchor,constant: 0),
            scrollStackViewContainer.widthAnchor.constraint(equalTo: mainScrollView.widthAnchor),
        
        ])
        configureContainerView()
        
    }
    
    private func configureContainerView() {
        scrollStackViewContainer.addArrangedSubview(subView1)
        scrollStackViewContainer.addArrangedSubview(subview2)
        scrollStackViewContainer.addArrangedSubview(subview3)


    }
    func makeAppBarTitle() {
    
        navTitleView.addArrangedSubview(logo)
        navTitleView.addArrangedSubview(navTitle)
        navTitleView.setCustomSpacing(8, after: logo)
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}

extension HomePage {

    
    @objc func addTapped() {
        
        print("hello wolrd")
    }
    
}
