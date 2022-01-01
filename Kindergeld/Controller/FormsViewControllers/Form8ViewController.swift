//
//  FormVC8.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 02/09/2021.
//

import UIKit

class Form8ViewController: UIViewController {
    let helpButton = KGHelpButton(title: "        Help")
    let titleKG = KGTitle()
    let subTitle = KGSubTitle()
    let ibanQ = KGTextField(placeholder: "IBAN")
    let bicQ = KGTextField(placeholder: "Account SWIFT / BIC ")
    let bankNameQ = KGTextField(placeholder: "Bank, financial institution")
    let accountNameQ = KGTextField(placeholder: "Account holder")
    let nextButton = KGButton(title: "next ->>")
    let backButton = KGButton(title: "<<- back")
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        configHelpBtn()
        configTitle()
        configSubTitle()
        configQ8()
        configQ9()
        configNextButton()
        configBackButton()
        layoutForm8ViewControllerA()
        layoutForm8ViewControllerB()
    }
    func configViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
    }
    func configHelpBtn() {
        view.addSubview(helpButton)
        helpButton.addTarget(self, action: #selector(showExplanation), for: .touchUpInside)
    }
    func configTitle() {
        view.addSubview(titleKG)
        titleKG.text = "Application for Child Benefit"
    }
    func configSubTitle() {
        view.addSubview(subTitle)
        subTitle.text = "Details of method of payment"
    }
    @objc func showExplanation() {
        let destVC = KGExplainViewController()
        destVC.title = "Help"
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
    }
    func configQ8() {
        view.addSubview(ibanQ)
        ibanQ.keyboardType = .numbersAndPunctuation
        view.addSubview(bicQ)
        bicQ.keyboardType = .alphabet
    }
    func configQ9() {
        view.addSubview(bankNameQ)
        bankNameQ.keyboardType = .numbersAndPunctuation
        view.addSubview(accountNameQ)
        accountNameQ.keyboardType = .alphabet
    }
    func configNextButton() {
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
    }
    func configBackButton() {
        view.addSubview(backButton)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
    }
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    @objc func saveDataAndGoNext() {
        let nextVC = Form9ViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
extension Form8ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
}
