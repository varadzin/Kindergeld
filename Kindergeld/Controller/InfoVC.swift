//
//  InfoVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class InfoVC: UIViewController {
    
    let titleKG = UILabel()
    let subTitle = UILabel()
    let textField = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
        configSubTitle()
        configTextField()

    }
    
    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
      }
  
    func configTitle() {
        view.addSubview(titleKG)
        
        titleKG.text = "Kindergeld"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
  
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            titleKG.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
 
        ])
    }
    
    func configSubTitle() {
        view.addSubview(subTitle)
        
        subTitle.text = "čo potrebuješ vedieť"
        subTitle.font = UIFont(name: "Times New Roman", size: 18)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
        
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func configTextField() {
        view.addSubview(textField)
        
        textField.backgroundColor = .systemGray6
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            textField.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 10),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            textField.heightAnchor.constraint(equalToConstant: 500)
        ])
        
    }
    
    
    
}
