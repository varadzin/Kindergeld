//
//  StartVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class StartVC: UIViewController {
    
    let titleKG = UILabel()
    let subTitle = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
configSubTitle()
    }
    
    
    func configVC() {
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
    }
    
    func configTitle() {
        view.addSubview(titleKG)
        
        titleKG.text = "Kindergeld"
        titleKG.font = UIFont(name: "Times New Roman", size: 62)
        titleKG.textColor = .label
        titleKG.textAlignment = .center
//        titleKG.backgroundColor = .systemGray
        
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            titleKG.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleKG.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    
    func configSubTitle() {
            view.addSubview(subTitle)
        
        subTitle.text = "prídavky na deti v Nemecku"
        subTitle.font = UIFont(name: "Times New Roman", size: 36)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
//        subTitle.backgroundColor = .systemPink
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
//            subTitle.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        
    }
   
    
}
