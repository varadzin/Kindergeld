//
//  KGHelpButton.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 12.12.21.
//



import UIKit

//Button used in Forms

class KGHelpButton: UIButton {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(title: String) {
        self.init(frame: .zero)
        self.setTitle(title, for: .normal)
    }
    
    
    
    private func configure() {
        titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        setTitleColor(.systemOrange, for: .normal)
   
        
    }
    
}
