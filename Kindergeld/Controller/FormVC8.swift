//
//  FormVC8.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 02/09/2021.
//

import UIKit

class FormVC8: UIViewController {
    
    
    
    
    let titleKG = UILabel()
    let subTitle = UILabel()
    let explainButton = KGButton(title: "Vysvetlivky - číslo bankového účtu")
    

    let ibanQ = KGTextField(placeholder: "IBAN")
    let bicQ = KGTextField(placeholder: "SWIFT / BIC účtu")

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
        configSubTitle()
     configExplainButton()
        configQ8()
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
        
        subTitle.text = "Kam budú posielané prídavky na dieťa"
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
    func configQ8() {
        
        view.addSubview(ibanQ)
        
        ibanQ.keyboardType = .numbersAndPunctuation
        
        NSLayoutConstraint.activate([
            ibanQ.topAnchor.constraint(equalTo: explainButton.bottomAnchor, constant: 20),
            ibanQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            ibanQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            ibanQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        view.addSubview(bicQ)
        
        bicQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            bicQ.topAnchor.constraint(equalTo: ibanQ.bottomAnchor, constant: 15),
            bicQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            bicQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            bicQ.heightAnchor.constraint(equalToConstant: 50)
        ])
    
        
    }
    
    
    
    func configNextButton() {
        let nextButton = KGButton(title: "ďalej ->>")
        view.addSubview(nextButton)
        
                nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: bicQ.bottomAnchor, constant: 25),
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
            backButton.topAnchor.constraint(equalTo: bicQ.bottomAnchor, constant: 25),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
        
    }


@objc func saveDataAndGoNext() {
    
    
    
    
    let nextVC = FormVC9()
    navigationController?.pushViewController(nextVC, animated: true)
        
    
}
}
    
    extension FormVC8: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            saveDataAndGoNext()
            return true
        }
        
    }
