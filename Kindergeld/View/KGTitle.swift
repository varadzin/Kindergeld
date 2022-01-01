//
//  KGTitle.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 05/09/2021.
//

import UIKit

class KGTitle: UILabel {
    override init(frame: CGRect) {
        super .init(frame: frame)
        configTitle()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configTitle() {
        font = UIFont(name: "Times New Roman", size: 28)
        textColor = .secondaryLabel
        numberOfLines = 0
        textAlignment = .center
        translatesAutoresizingMaskIntoConstraints = false
    }
}
