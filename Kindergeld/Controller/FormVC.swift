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
        configExplainButton()
        configQ1()
        configNextButton()

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
    
    func configQ1() {
        let nameQ = KGTextField(placeholder: "Zadaj krstné meno žiadateľa")
        view.addSubview(nameQ)
        
        nameQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            nameQ.topAnchor.constraint(equalTo: explainButton.bottomAnchor, constant: 15),
            nameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            nameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let surenameQ = KGTextField(placeholder: "Zadaj priezvisko žiadateľa")
        view.addSubview(surenameQ)
        
        surenameQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            surenameQ.topAnchor.constraint(equalTo: nameQ.bottomAnchor, constant: 15),
            surenameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            surenameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            surenameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let maidenNameQ = KGTextField(placeholder: "Zadaj rodné priezvisko žiadateľa")
        view.addSubview(maidenNameQ)
        
        maidenNameQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            maidenNameQ.topAnchor.constraint(equalTo: surenameQ.bottomAnchor, constant: 15),
            maidenNameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            maidenNameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            maidenNameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    func configNextButton() {
        let nextButton = KGButton(title: "ďalej ->>")
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -220),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
}
