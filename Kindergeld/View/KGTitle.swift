//
//  KGTitle.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 05/09/2021.
//

import UIKit

let titleKG = UILabel()
class KGTitle: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configTitle()
    }
    

func configTitle() {
    view.addSubview(titleKG)
    
    titleKG.text = "Hlavná žiadosť - (KG1)"
    titleKG.font = UIFont(name: "Times New Roman", size: 28)
    titleKG.textColor = .secondaryLabel
    
    titleKG.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
        titleKG.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
        
        titleKG.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        titleKG.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        
    ])
}
}
