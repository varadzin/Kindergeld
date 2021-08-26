//
//  DisclaimerVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 26/08/2021.
//

import UIKit

class DisclaimerVC: UIViewController {

    var titleKG = UILabel()
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
      

    }
    func configVC() {
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .systemBackground
    }
    
    func configTitle() {
        view.addSubview(titleKG)
        
        titleKG.text = "Pravidlá používania"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
        
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            titleKG.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
            
            
        ])
    }
}
