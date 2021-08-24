//
//  KGButton.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 22/08/2021.
//

import UIKit

class KGButton: UIButton {

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
        layer.cornerRadius = 12
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        setTitleColor(.white, for: .normal)
        backgroundColor = .systemOrange
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
}
