//
//  FormVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class FormVC: UIViewController {

    let scrollView = UIScrollView()
    let titleKG = UILabel()
    let subTitle = UILabel()
//    let explainText = KGTextLabel()
    let explainButton = KGButton(title: "Vysvetlivky - Kto je žiadateľ")
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configVC()
//        configScrollView()
        configTitle()
        configSubTitle()
//        explainComment()
        configQ1()

    }
    
    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
      }
    
    
//    func configScrollView() {
//        view.addSubview(scrollView)
//
//        scrollView.frame = view.bounds
//        scrollView.contentSize = CGSize(width: view.frame.size.width, height:view.frame.size.height)
//
// }
    
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
        subTitle.font = UIFont(name: "Times New Roman", size: 18)
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
    
//    func explainComment() {
//
//        view.addSubview(explainText)
//
//        explainText.text = """
//            Tu zadávaš údaje žiadateľa.
//            Kto môže byť žiadateľ si pozri vo vysvetlivkách
//            """
//
//        NSLayoutConstraint.activate([
//            explainText.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
//            explainText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            explainText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
//        ])
//
//
//    }
    
    func configExplainButton() {
        view.addSubview(explainButton)
    }
    
    
    
    
    func configQ1() {
        let nameQ = KGTextField(placeholder: "Zadaj krstné meno")
        view.addSubview(nameQ)
        
        nameQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            nameQ.topAnchor.constraint(equalTo: explainButton.bottomAnchor, constant: 15),
            nameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            nameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let surnameQ = KGTextField(placeholder: "Zadaj priezvisko")
        view.addSubview(surnameQ)
        
        surnameQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            surnameQ.topAnchor.constraint(equalTo: nameQ.bottomAnchor, constant: 15),
            surnameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            surnameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            surnameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
    }
    
    
}
