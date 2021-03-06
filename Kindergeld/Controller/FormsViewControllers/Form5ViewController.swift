//
//  FormVC5.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 31/08/2021.
//

import UIKit

class Form5ViewController: UIViewController {
    let helpButton = KGHelpButton(title: "        Help")
    let titleKG = KGTitle()
    let subTitle = KGSubTitle()
    let spouseNameQ = KGTextField(placeholder: " First Name ")
    let spouseSurenameQ = KGTextField(placeholder: " Name")
    let maidenSpouseNameQ = KGTextField(placeholder: " Maiden name or name from former marriage ")
    let backButton = KGButton(title: "<<- back")
    let nextButton = KGButton(title: "next ->>")
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        configHelpBtn()
        configTitle()
        configSubTitle()
        configQ5()
        configNextButton()
        configBackButton()
        layoutForm5ViewController()
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
        titleKG.text = "Information on the spouse or registered civil partner"
      }
    func configSubTitle() {
        view.addSubview(subTitle)
        subTitle.text = "or the other biological or step-parent in the common household"
    }
    @objc func showExplanation() {
        let destVC = KGExplainViewController()
        destVC.title = "Help"
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
    }
    func configQ5() {
        view.addSubview(spouseNameQ)
        spouseNameQ.keyboardType = .alphabet
        view.addSubview(spouseSurenameQ)
        spouseSurenameQ.keyboardType = .alphabet
        view.addSubview(maidenSpouseNameQ)
        maidenSpouseNameQ.keyboardType = .alphabet
    }
    func configBackButton() {
        view.addSubview(backButton)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
    }
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    func configNextButton() {
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
    }
    @objc func saveDataAndGoNext() {
        var nameSpouse: String?
        var sureNameSpouse: String?
        var maidenNameSpouse: String?
        guard spouseNameQ.text != nil else { return }
        nameSpouse = spouseNameQ.text!
        defaults.set(nameSpouse, forKey: "nameSpouse")
        guard spouseSurenameQ.text != nil else { return }
        sureNameSpouse = spouseSurenameQ.text!
        defaults.set(sureNameSpouse, forKey: "sureNameSpouse")
        guard maidenSpouseNameQ.text != nil else { return }
        maidenNameSpouse = maidenSpouseNameQ.text!
        defaults.set(maidenNameSpouse, forKey: "maidenNameSpouse")
        print(nameSpouse!, sureNameSpouse!, maidenNameSpouse!)
        let nextVC = Form6ViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
extension Form5ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
}
