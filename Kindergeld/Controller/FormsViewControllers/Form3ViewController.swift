//
//  FormVC3.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 29/08/2021.
//

import UIKit

class Form3ViewController: UIViewController {
    let helpButton = KGHelpButton(title: "        Help")
    let titleKG = KGTitle()
    let subTitle = KGSubTitle()
    let nationalityQ = KGTextField(placeholder: "Nationality")
    let addressQ = KGTextField(placeholder: "Street, house number")
    let addressQ2 = KGTextField(placeholder: "postcode, city, country")
    let nextButton = KGButton(title: "next ->>")
    let backButton = KGButton(title: "<<- back")
    let defaults = UserDefaults.standard
    var nationalityOfApplicant = String()
    var addressOfApplicant = String()
    var cityOfApplicant = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        configHelpBtn()
        configTitle()
        configSubTitle()
        configQ3()
        configBackButton()
        configNextButton()
        layoutForm3ViewController()
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
        subTitle.text = "Details of person making application"
    }
@objc func showExplanation() {
        let destVC = KGExplainViewController()
        destVC.title = "Help"
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
    }
    func configQ3() {
        view.addSubview(nationalityQ)
        nationalityOfApplicant = nationalityQ.text!
        nationalityQ.keyboardType = .numbersAndPunctuation
        view.addSubview(addressQ)
        addressOfApplicant = addressQ.text!
        addressQ.keyboardType = .alphabet
        view.addSubview(addressQ2)
        cityOfApplicant = addressQ2.text!
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
        defaults.set(nationalityOfApplicant, forKey: "nationalityOfApplicant")
        defaults.set(addressOfApplicant, forKey: "addressOfApplicant")
        defaults.set(cityOfApplicant, forKey: "cityOfApplicant")
        let nextVC = Form4ViewController()
        navigationController?.pushViewController(nextVC, animated: true)
        }
}
extension Form3ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
}
