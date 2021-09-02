//
//  FormVC7.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 01/09/2021.
//

import UIKit

class FormVC7: UIViewController {
    
    
    
    
    let titleKG = UILabel()
    let subTitle = UILabel()
    let explainButton = KGButton(title: "Vysvetlivky - adresa partnera / ky")
    

    let addressQ = KGTextField(placeholder: "Ulica a číslo domu")
    let addressQ2 = KGTextField(placeholder: "PSČ, obec, štát")

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
        configSubTitle()
     configExplainButton()
        configQ7()
        configNextButton()
        configBackButton()
        
        
    }
    
    
    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
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
    
    func configSubTitle() {
        view.addSubview(subTitle)
        
        subTitle.text = "Ak sa líši adresa partnera/partnerky od adresy žiadateľa/ky"
        subTitle.font = UIFont(name: "Times New Roman", size: 22)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
        
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
    }
    
    func configExplainButton() {
        view.addSubview(explainButton)
        
        explainButton.addTarget(self, action: #selector(showExplanation), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            explainButton.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            explainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            explainButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            explainButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func showExplanation() {
        let destVC = KGExplainVC()
        destVC.title = "Žiadateľ o Kindergeld"
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
        
    }
    func configQ7() {
        
        view.addSubview(addressQ)
        
        addressQ.keyboardType = .numbersAndPunctuation
        
        NSLayoutConstraint.activate([
            addressQ.topAnchor.constraint(equalTo: explainButton.bottomAnchor, constant: 20),
            addressQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            addressQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            addressQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        view.addSubview(addressQ2)
        
        addressQ2.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            addressQ2.topAnchor.constraint(equalTo: addressQ.bottomAnchor, constant: 15),
            addressQ2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            addressQ2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            addressQ2.heightAnchor.constraint(equalToConstant: 50)
        ])
    
        
    }
    
    
    
    func configNextButton() {
        let nextButton = KGButton(title: "ďalej ->>")
        view.addSubview(nextButton)
        
                nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: addressQ2.bottomAnchor, constant: 25),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    
    func configBackButton() {
        let backButton = KGButton(title: "<<- späť")
        view.addSubview(backButton)
        
                backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: addressQ2.bottomAnchor, constant: 25),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
        
    }


@objc func saveDataAndGoNext() {
    
    
    
    
    let nextVC = FormVC8()
    navigationController?.pushViewController(nextVC, animated: true)
        
    
}
    
    
    
    
}
