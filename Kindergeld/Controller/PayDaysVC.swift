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
    var KGNumber : String?
    var lastNumberIs0 = [String]()
    var NumberForPayDays = Int()
    
    
    
    
    
//    var isKGNumberEntered: Bool { return !KGNumberTextField.text!.isEmpty }
  

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configVC()
        configTitle()
        configSubTitle()
        configKGNumberTextField()
        configButton()
     
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
    
    
    
    func configExplainLabel(lastChar: String) {
        let lastChar0 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
 
    3. September
    5. Október
    4. November
    3. December
    """)
        
        let lastChar1 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
  
    7. September
    7. Október
    5. November
    6. December
    """)
        
        let lastChar2 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
  
    8. September
    8. Október
    8. November
    7. December
    """)
        
        let lastChar3 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:
  
    8. September
    8. Október
    8. November
    7. December
    """)
      
        let lastChar4 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:

    8. September
    8. Október
    8. November
    7. December
    """)
        
        let lastChar5 = ("""
    Pre zadané Kindergeld číslo platia tieto výplatné termíny:

    8. September
    8. Október
    8. November
    7. December
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
        
        explainLabel.textAlignment = .left
        explainLabel.font = UIFont.preferredFont(forTextStyle: .body)
        explainLabel.textColor = .secondaryLabel
        explainLabel.numberOfLines = 0
     
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
        
    
    
  
        
//
//    func configPayDaysInfo(lastChar: Int) -> String? {
//
//        switch lastChar {
//        case 0:
//            return "lastChar0"
//        case 1:
//            return "lastChar1"
//        case 2:
//            return "lastChar2"
//        case 3:
//            return "lastChar3"
//        case 4:
//            return "lastChar4"
//        case 5:
//            return "lastChar5"
//        case 6:
//            return "lastChar6"
//        case 7:
//            return "lastChar7"
//        case 8:
//            return "lastChar8"
//        case 9:
//            return "lastChar9"
//
//        default:
//            return "test"
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
//extension String {
//    subscript(idx: Int) -> String {
//        String(self[index(startIndex, offsetBy: idx)])
//    }
//}
