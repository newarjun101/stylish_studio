//

//  TextField.swift

//  stylishstudio

//

//  Created by Dev on 22/07/2024.

//




import UIKit




class TextField: UITextField, UITextFieldDelegate {

    private enum Constants {

        static let iconLength: CGFloat = 24.0

        static let imageTextSpacing: CGFloat = 8.0

        static let horizontalPadding: CGFloat = 12.0
        static let verticlePadding: CGFloat = 12.0

        static let placeholderColor = UIColor.lightGray

    }





    var leftImage: UIImage? { didSet { updateView() } }

    var rightImage: UIImage? { didSet { updateView() } }

    override var placeholder: String? {

        didSet {

            attributedPlaceholder = NSAttributedString(string: placeholder != nil ?  placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: Constants.placeholderColor])

        }

    }

 



    init() {

        super.init(frame: .zero)


        layer.cornerRadius = 24
             textColor = UIColor.white
            textColor = UIColor.black
                  delegate = self
            font = UIFont.systemFont(ofSize: 14)
            borderStyle = UITextField.BorderStyle.roundedRect
                  clearsOnBeginEditing = true

        // Any additional setup you may need.

        

     /*   clipsToBounds = true

        keyboardType = .asciiCapable

        backgroundColor = UIColor(hexString: "#F5F5F5")

        */




        updateView()

    }




    required init?(coder: NSCoder) {

        fatalError("init(coder:) has not been implemented")

    }




    private func updateView() {

        leftViewMode = .always

        rightViewMode = .always

        if let image = leftImage {

            // Setting the rendering mode allows us to set the tint color and change the entire color of the image.

            let imageView = UIImageView(image: image.withRenderingMode(.alwaysTemplate))

            imageView.translatesAutoresizingMaskIntoConstraints = false

            imageView.widthAnchor.constraint(equalToConstant: Constants.iconLength).isActive = true

            imageView.heightAnchor.constraint(equalToConstant: Constants.iconLength).isActive = true

            imageView.contentMode = .scaleAspectFit

            imageView.tintColor = Constants.placeholderColor

            let stack = UIStackView(arrangedSubviews: [

                createHorizontalPaddingView(),

                imageView,

                createImageToTextPaddingView()

            ])

            stack.axis = .horizontal

            leftView = stack

        } else {

            leftView = createHorizontalPaddingView()

        }




        if let image = rightImage {

            // Setting the rendering mode allows us to set the tint color and change the entire color of the image.

            let imageView = UIImageView(image: image.withRenderingMode(.alwaysTemplate))

            imageView.translatesAutoresizingMaskIntoConstraints = false

            imageView.widthAnchor.constraint(equalToConstant: Constants.iconLength).isActive = true

            imageView.heightAnchor.constraint(equalToConstant: Constants.iconLength).isActive = true

            imageView.contentMode = .scaleAspectFit

            imageView.tintColor = Constants.placeholderColor

            let stack = UIStackView(arrangedSubviews: [

                createImageToTextPaddingView(),

                imageView,

                createHorizontalPaddingView()

            ])

            stack.axis = .horizontal

            rightView = stack

        } else {

            rightView = createHorizontalPaddingView()

        }

    }




    private func createHorizontalPaddingView() -> UIView {

        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints = false

        view.widthAnchor.constraint(equalToConstant: Constants.horizontalPadding).isActive = true
     

        return view

    }



    private func createImageToTextPaddingView() -> UIView {

        let view = UIView()

        view.translatesAutoresizingMaskIntoConstraints = false

        view.widthAnchor.constraint(equalToConstant: Constants.imageTextSpacing).isActive = true

        return view

    }


}










extension UITextField {

  func setLeftView(image: UIImage) {

    let iconView = UIImageView(frame: CGRect(x: 10, y: 10, width: 25, height: 25)) // set your Own size

    iconView.image = image

    let iconContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 45))

    iconContainerView.addSubview(iconView)

    leftView = iconContainerView

    leftViewMode = .always

    self.tintColor = .lightGray

  }

}
