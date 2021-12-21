//
//  KGExplainText.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 28/08/2021.
//

import UIKit

// Text Label used in Forms

class KGTextLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        config()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func config() {
        numberOfLines = 0
        font = UIFont.preferredFont(forTextStyle: .body)
        textColor = .label
        textAlignment = .center
        translatesAutoresizingMaskIntoConstraints = false
    }
    }
