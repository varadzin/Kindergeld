//
//  KGTextField.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 22/08/2021.
//

import UIKit


//Text Field used in Forms
class KGTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(placeholder: String) {
        self.init(frame: .zero)
        self.placeholder = placeholder
     
    }
    
    private func configure() {
    
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 12
        layer.borderWidth = 1
        layer.borderColor = UIColor.systemGray3.cgColor
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .systemGray6
        autocorrectionType = .no
        returnKeyType = .go
        keyboardType = .numbersAndPunctuation
        clearButtonMode = .whileEditing
    }
    }
