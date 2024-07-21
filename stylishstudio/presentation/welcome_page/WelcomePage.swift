//
//  WelcomePage.swift
//  stylishstudio
//
//  Created by Dev on 21/07/2024.
//

import UIKit

class WelcomePage: UIViewController {

    var bgImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: welcomeBg)
        image.contentMode = .scaleToFill
        return image
    }()  
    var welcomeButton : ButtonView = {
        let button = ButtonView()
        button.setTitle("Welcome", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var titleLabel : UILabel = {
        let label = UILabel()
        label.text = "You Want Authe,Here We Go"
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints  = false
        label.font = UIFont.systemFont(ofSize: 32.0,weight: .semibold)
        return label
    }()
    var subtitleLabel : UILabel = {
        let label = UILabel()
        label.text = "Find it here,buy it now"
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints  = false
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        bgImage.frame = self.view.frame
        view.addSubview(bgImage)
        view.addSubview(titleLabel)
        view.addSubview(welcomeButton)
        view.addSubview(subtitleLabel)
        ///for label
        NSLayoutConstraint.activate([
           
            titleLabel.safeAreaLayoutGuide.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            titleLabel.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            titleLabel.bottomAnchor.constraint(equalTo: subtitleLabel.topAnchor, constant: -15),
        
        ])
        ///for subtitle label
        NSLayoutConstraint.activate([
        
            subtitleLabel.safeAreaLayoutGuide.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            subtitleLabel.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            subtitleLabel.bottomAnchor.constraint(equalTo: welcomeButton.topAnchor, constant: -16),
        ])
    
        
        NSLayoutConstraint.activate([
            welcomeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8),
            welcomeButton.safeAreaLayoutGuide.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            welcomeButton.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
        ])
        
        
    
    }
    

  
}
