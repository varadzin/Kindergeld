//
//  DisclaimerVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 26/08/2021.
//

import UIKit

class DisclaimerVC: UIViewController {

    var titleKG = UILabel()
    let textField = UILabel()
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
        configTextField()
      

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
    
    func configTextField() {
        view.addSubview(textField)
        
        textField.font = UIFont(name: "Times New Roman", size: 18)
        textField.numberOfLines = 0
        textField.textAlignment = .center
        textField.text = """
Podmienky používania aplikácie Kindergeld:
Autor aplikácie nenesie zodpovednosť za akékoľvek škody, straty alebo ujmy spôsobené používaním aplikácie, najmä za škodu spôsobenú nesprávnym vyplnením formulárov, prípadne uvedením nepravdivých údajov pri žiadosti o prídavky.

Ochrana osobných údajov:
Všetky údaje zadané užívateľom ostávajú v telefóne. Aplikácia sa nepripája na internet a neodosiela žiadne dáta. Aplikácia nezbiera ani nikomu neposkytuje žiadne údaje. Po vyplnení formulára si vieš hotové PDF vytlačiť z telefónu, alebo preniesť bezpečne do počítača a následne z počítača vytlačiť. Používaním aplikácie dávaš najavo súhlas s podmienkami používania.

"""
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            textField.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 10),
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        
        ])
        
    }


}
