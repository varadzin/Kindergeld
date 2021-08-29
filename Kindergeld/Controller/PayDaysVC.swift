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
    let KGNumberTextField = KGTextField(placeholder: "Zadaj Kindergeld číslo")
    let CTAButton = KGButton(title: "Ok")
    let explainLabel = UILabel()
    var KGNumber : String?
    var lastNumberIs0 = [String]()
    
    let infoLabel = UILabel()
    
    
    
    
    
    //    var isKGNumberEntered: Bool { return !KGNumberTextField.text!.isEmpty }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configVC()
        configTitle()
        configSubTitle()
        configKGNumberTextField()
        configButton()
        showPayDays()
        configInfoLabel()
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
    
    
    
    func configExplainLabel(lastChar: String) {
        let lastChar0 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
    
    3. September 2021
    5. Október 2021
    4. November 2021
    3. December 2021
    """)
        
        let lastChar1 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
    
    7. September 2021
    7. Október 2021
    5. November 2021
    6. December 2021
    """)
        
        let lastChar2 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
    
    8. September 2021
    8. Október 2021
    8. November 2021
    7. December 2021
    """)
        
        let lastChar3 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
    
    8. September 2021
    8. Október 2021
    8. November 2021
    7. December 2021
    """)
        
        let lastChar4 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
    
    8. September 2021
    8. Október 2021
    8. November 2021
    7. December 2021
    """)
        
        let lastChar5 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
    
    8. September 2021
    8. Október 2021
    8. November 2021
    7. December 2021
    """)
        
        let lastChar6 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
    
    8. September
    8. Október
    8. November
    7. December
    """)
        
        let lastChar7 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
    
    8. September
    8. Október
    8. November
    7. December
    """)
        
        let lastChar8 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
    
    8. September
    8. Október
    8. November
    7. December
    """)
        
        let lastChar9 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
    
    8. September
    8. Október
    8. November
    7. December
    """)
        
        
        view.addSubview(explainLabel)
        
        explainLabel.textAlignment = .center
        explainLabel.font = UIFont.preferredFont(forTextStyle: .body)
        explainLabel.textColor = .secondaryLabel
        explainLabel.numberOfLines = 0
        infoLabel.isHidden = false
        
        switch lastChar {
        case "0":
            explainLabel.text = lastChar0
        case "1":
            explainLabel.text = lastChar1
        case "2":
            explainLabel.text = lastChar2
        case "3":
            explainLabel.text = lastChar3
        case "4":
            explainLabel.text = lastChar4
        case "5":
            explainLabel.text = lastChar5
        case "6":
            explainLabel.text = lastChar6
        case "7":
            explainLabel.text = lastChar7
        case "8":
            explainLabel.text = lastChar8
        case "9":
            explainLabel.text = lastChar9
        default:
            explainLabel.text = """
Zadaj tvoje Kindergeld číslo uvedené v liste od Famillienkasse v tvare:

003FK123456

Číslo ti bude pridelené, po podaní žiadosti a nájdeš ho vpravo hore v každom dokumente od Famillienkasse.
"""
            infoLabel.isHidden = true
            
        }
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
        if KGNumber == nil {
            showAlert()
            return
        }
        
        guard KGNumber?.count != 11 else {
            showAlert()
            return
        }
        
        let lastChar = (KGNumber?.last.map{String($0)} ?? "a")!
        configExplainLabel(lastChar: lastChar)
    }
    
    
    
    
    func showAlert() {
        let alert = UIAlertController(title: "Pozor", message: "číslo Kindergeld je v tvare XXXFKXXXXXX tzn. tri čísla, potom písmená FK a potom šesť čísel, všetko písané spolu", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(alert, animated: true)
    }
    
    
    func createDismissKeyboardTapGesture() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    func configInfoLabel() {
        
        
        view.addSubview(infoLabel)
        
        infoLabel.numberOfLines = 0
        infoLabel.textAlignment = .center
        infoLabel.textColor = .secondaryLabel
        infoLabel.font = UIFont.preferredFont(forTextStyle: .body)
        
        infoLabel.text = "Nasledujúce prídavky na deti ti budú vyplatené o 25 dní."
        
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: explainLabel.bottomAnchor,constant: 15),
            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            infoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        }
    }

extension PayDaysVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        showPayDays()
        return true
    }
}

