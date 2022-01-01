//
//  KGSubtitle.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 01.01.22.
//

import UIKit

class KGSubTitle: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configSubTitle()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configSubTitle() {
        font = UIFont(name: "Times New Roman", size: 22)
        textColor = UIColor.systemOrange
        textAlignment = .center
        numberOfLines = 0
    }
}
