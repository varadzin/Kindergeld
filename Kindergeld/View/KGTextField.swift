//
//  KGTextField.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 22/08/2021.
//

import UIKit

class KGTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
    
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 12
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .systemGray4
        autocorrectionType = .no
        returnKeyType = .go
        keyboardType = .numbersAndPunctuation
        clearButtonMode = .whileEditing
        placeholder = "Zadaj Kindergeld číslo"
        
        
        
    }
    
    
}
