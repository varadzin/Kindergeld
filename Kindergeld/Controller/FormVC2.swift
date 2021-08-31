//
//  FormVC2.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 29/08/2021.
//

import UIKit

class FormVC2: UIViewController {
    
    let scrollView = UIScrollView()
    let titleKG = UILabel()
    let subTitle = UILabel()
    
    let dateBirthQ = KGTextField(placeholder: " Dátum narodenia žiadateľa - DD.MM.RRRR ")
    let placeBirthQ = KGTextField(placeholder: " Štát narodenia žiadateľa napr. Slowakei ")
    var sexOfApplicant : String?
    var segController = UISegmentedControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configVC()
        configTitle()
        configSubTitle()
        
        configQ2()
        configSexQ()
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
        
        subTitle.text = "Údaje žiadateľa"
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
    
    
    
    
    @objc func showExplanation() {
        let destVC = KGExplainVC()
        destVC.title = "Žiadateľ o Kindergeld"
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
        
    }
    
    func configQ2() {
        
        view.addSubview(dateBirthQ)
        
        dateBirthQ.keyboardType = .numbersAndPunctuation
        
        NSLayoutConstraint.activate([
            dateBirthQ.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            dateBirthQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dateBirthQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dateBirthQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        view.addSubview(placeBirthQ)
        
        placeBirthQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            placeBirthQ.topAnchor.constraint(equalTo: dateBirthQ.bottomAnchor, constant: 15),
            placeBirthQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            placeBirthQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            placeBirthQ.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configSexQ() {
        let shortText = KGTextLabel()
        shortText.text = "Žiadateľ / ka je:"
        shortText.textColor = .label
        view.addSubview(shortText)
        
        
        NSLayoutConstraint.activate([
            shortText.topAnchor.constraint(equalTo: placeBirthQ.bottomAnchor, constant: 20),
            shortText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            shortText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            shortText.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        let items = ["Muž", "Žena"]
        segController = UISegmentedControl(items: items)
        segController.selectedSegmentIndex = 0
        segController.addTarget(self, action: #selector(saveSex), for: .valueChanged)
        
        
        view.addSubview(segController)
        
        segController.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segController.topAnchor.constraint(equalTo: shortText.bottomAnchor, constant: 10),
            segController.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            segController.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            segController.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    @objc func saveSex(sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            sexOfApplicant = "Man"
        case 1:
            sexOfApplicant = "Woman"
        default:
            sexOfApplicant = "Man"
        }
        print(sexOfApplicant!)
    }
    
    func configNextButton() {
        let nextButton = KGButton(title: "ďalej ->>")
        view.addSubview(nextButton)
        
                nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: segController.bottomAnchor, constant: 25),
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
            backButton.topAnchor.constraint(equalTo: segController.bottomAnchor, constant: 25),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
        
    }


@objc func saveDataAndGoNext() {
    
    
    
    
    let nextVC = FormVC3()
    navigationController?.pushViewController(nextVC, animated: true)
        
    
}
}
extension FormVC2: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
}
