//
//  PayDaysVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class PayDaysVC: UIViewController {
    
    let titleKG = UILabel()
    let subTitle = UILabel()
//    let textLabelYourNummber = UILabel()
    let KGNumberTextField = KGTextField()
    let CTAButton = KGButton(title: "Ok")
    let explainLabel = UILabel()
    var KGNumber = String()
    var lastNumberIs0 = [String]()
    
    let lastChar0 = ("""
5.Januar
5.Februar
3.März
7.April
5.Mai
2.Juni
5.Juli
5.August
3.September
5.Oktober
4.November
3.Dezember
""")
    
    
    
//    var isKGNumberEntered: Bool { return !KGNumberTextField.text!.isEmpty }
  

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configVC()
        configTitle()
        configSubTitle()
        configKGNumberTextField()
        configButton()
        configExplainLabel()
        createDismissKeyboardTapGesture()
        
    }
    
    func configVC() {
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .systemBackground
    }
    
    func configTitle() {
        view.addSubview(titleKG)
        
        titleKG.text = "Kindergeld"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
        
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            titleKG.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
            
            
        ])
    }
    
    func configSubTitle() {
        view.addSubview(subTitle)
        
        subTitle.text = "výplatné termíny"
        subTitle.font = UIFont.preferredFont(forTextStyle: .body)
        subTitle.textColor = UIColor.systemOrange
        
        
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
        
        
//        view.addSubview(textLabelYourNummber)
//
//        textLabelYourNummber.text = "Tvoje Kindergeld číslo:"
//        textLabelYourNummber.font = UIFont(name: "Times New Roman", size: 18)
//
//        textLabelYourNummber.textColor = .secondaryLabel
//        textLabelYourNummber.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            textLabelYourNummber.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
//            textLabelYourNummber.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//        ])
    }
    
    func configKGNumberTextField() {
        view.addSubview(KGNumberTextField)
        KGNumberTextField.delegate = self
        
        NSLayoutConstraint.activate([
            KGNumberTextField.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            KGNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            KGNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            KGNumberTextField.heightAnchor.constraint(equalToConstant: 50)
         
        ])
        
    }
    
    func configButton() {
        view.addSubview(CTAButton)
        
        CTAButton.addTarget(self, action: #selector(showPayDays), for: .touchUpInside)
        NSLayoutConstraint.activate([
            CTAButton.topAnchor.constraint(equalTo: KGNumberTextField.bottomAnchor, constant: 15),
            CTAButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135),
            CTAButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -135),
            CTAButton.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }
    
    func configExplainLabel() {
        view.addSubview(explainLabel)
        
        explainLabel.textAlignment = .left
        explainLabel.font = UIFont.preferredFont(forTextStyle: .body)
        explainLabel.textColor = .secondaryLabel
        explainLabel.numberOfLines = 0
     
        explainLabel.text = """
Zadaj tvoje Kindergeld číslo uvedené v liste od Famillienkasse v tvare:

003FK123456

Číslo ti bude pridelené, po podaní žiadosti a nájdeš ho vpravo hore v každom dokumente od Famillienkasse.
"""
   
        explainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            explainLabel.topAnchor.constraint(equalTo: CTAButton.bottomAnchor, constant: 50),
            explainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            explainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        
        ])
    }
    
    //check if enteres string has 11 characters
  @objc func showPayDays() {
    KGNumber = KGNumberTextField.text!
    if KGNumber.count == 11 {
        showPayDaysText()
    } else {
        showAlert()
    }
        
    }
        
    func showPayDaysText() {
        let lastChar = KGNumber.last
        print(lastChar!)
        
    }
    

    
    
//    func configPayDaysInfo(lastChar: Int) {
//
//
//
//
//
//
//        switch lastChar {
//        case 0:
//            return
//        default:
//            <#code#>
//        }
//
//    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Pozor", message: "číslo Kindergeld je v tvare XXXFKXXXXXX tzn. tri čísla, potom písmená FK a potom šesť čísel, všetko písané spolu", preferredStyle: .alert)
       
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(alert, animated: true)
    }
    
    
    func createDismissKeyboardTapGesture() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    
}

extension PayDaysVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        showPayDays()
        return true
    }
}
