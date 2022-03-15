//
//  FormVC7.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 01/09/2021.
//

import UIKit

class Form7ViewController: UIViewController {
    let helpButton = KGHelpButton(title: "        Help")
    let titleKG = KGTitle()
    let subTitle = KGSubTitle()
    let addressQ = KGTextField(placeholder: "Street, house number")
    let addressQ2 = KGTextField(placeholder: "postcode, city, country")
    let nextButton = KGButton(title: "next ->>")
    let backButton = KGButton(title: "<<- back")
    let defaults = UserDefaults.standard
    var addressOfSpouse = String()
    var cityOfSpouse = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        configHelpBtn()
        configTitle()
        configSubTitle()
        configQ7()
        configNextButton()
        configBackButton()
        layoutForm7ViewController()
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
        subTitle.text = "Address, if different from applicant’s"
    }
    @objc func showExplanation() {
        let destVC = KGExplainViewController()
        destVC.title = "Help"
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
    }
    func configQ7() {
        view.addSubview(addressQ)
        addressOfSpouse = addressQ.text!
        addressQ.keyboardType = .numbersAndPunctuation
        view.addSubview(addressQ2)
        cityOfSpouse = addressQ2.text!
        addressQ2.keyboardType = .alphabet
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
        let nextVC = Form8ViewController()
        defaults.set(addressOfSpouse, forKey: "addressOfSpouse")
        defaults.set(cityOfSpouse, forKey: "cityOfSpouse")
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
extension Form7ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
}
