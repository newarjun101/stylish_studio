//
//  ButtonView.swift
//  stylishstudio
//
//  Created by Dev on 21/07/2024.
//

import UIKit

class ButtonView: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        onSetupButton()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        onSetupButton()
    }
    
    func onSetupButton(){
        backgroundColor = .primaryColor
        frame.size.height = 40
        layer.cornerRadius = 6
        
    }
}


