//
//  FormVC5.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 31/08/2021.
//

import UIKit

class FormVC5: UIViewController {
    
    
    
    let helpButton = KGHelpButton(title: "        Help")
    let titleKG = UILabel()
    let subTitle = UILabel()
    let spouseNameQ = KGTextField(placeholder: " First Name ")
      let spouseSurenameQ = KGTextField(placeholder: " Name")
      let maidenSpouseNameQ = KGTextField(placeholder: " Maiden name or name from former marriage ")
  

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configVC()
        configHelpBtn()
        configTitle()
        configSubTitle()

        
        configQ5()
        configNextButton()
        configBackButton()
   
        
    }
    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
    }
    
    func configHelpBtn() {
        view.addSubview(helpButton)
        helpButton.addTarget(self, action: #selector(showExplanation), for: .touchUpInside)
        
        helpButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            helpButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            helpButton.widthAnchor.constraint(equalToConstant: 100),
            helpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            helpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configTitle() {
        view.addSubview(titleKG)
        
        titleKG.text = "Information on the spouse or registered civil partner"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
        titleKG.numberOfLines = 0
        titleKG.textAlignment = .center
        
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: helpButton.bottomAnchor, constant: 5),
            
            titleKG.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
            
        ])
    }
    
    func configSubTitle() {
        view.addSubview(subTitle)
        
        subTitle.text = "or the other biological or step-parent in the common household"
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
        destVC.title = "Help"
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
        
    }
    
    func configQ5() {
         
        view.addSubview(spouseNameQ)
        
        spouseNameQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            spouseNameQ.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 15),
            spouseNameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            spouseNameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            spouseNameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
         
        view.addSubview(spouseSurenameQ)
        
        spouseSurenameQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            spouseSurenameQ.topAnchor.constraint(equalTo: spouseNameQ.bottomAnchor, constant: 15),
            spouseSurenameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            spouseSurenameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            spouseSurenameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    
        view.addSubview(maidenSpouseNameQ)
        
        maidenSpouseNameQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            maidenSpouseNameQ.topAnchor.constraint(equalTo: spouseSurenameQ.bottomAnchor, constant: 15),
            maidenSpouseNameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            maidenSpouseNameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            maidenSpouseNameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    func configBackButton() {
        let backButton = KGButton(title: "<<- back")
        view.addSubview(backButton)
        
                backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: maidenSpouseNameQ.bottomAnchor, constant: 15),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
        
    }
    
    
    func configNextButton() {
        let nextButton = KGButton(title: "next ->>")
        view.addSubview(nextButton)
        
        nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: maidenSpouseNameQ.bottomAnchor, constant: 15),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
   @objc func saveDataAndGoNext() {
        var nameSpouse : String?
        var sureNameSpouse : String?
        var maidenNameSpouse : String?
      
    
    guard spouseNameQ.text != nil else { return }
        nameSpouse = spouseNameQ.text!
 
    guard spouseSurenameQ.text != nil else { return }
    sureNameSpouse = spouseSurenameQ.text!
    
    guard maidenSpouseNameQ.text != nil else { return }
    maidenNameSpouse = maidenSpouseNameQ.text!
    
           
        print(nameSpouse!, sureNameSpouse!, maidenNameSpouse!)
       
    let nextVC = FormVC6()
    navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    
}
extension FormVC5: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
    
}
