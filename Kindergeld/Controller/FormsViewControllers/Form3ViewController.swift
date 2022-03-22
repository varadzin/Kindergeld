//
//  FormVC3.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 29/08/2021.
//

import UIKit

class Form3ViewController: UIViewController {
    var helpButton = KGHelpButton(title: String())
    let titleKG = KGTitle()
    let subTitle = KGSubTitle()
    var nationalityQ = KGTextField(placeholder: String())
    var nationalityPlaceholder = String()
    var addressQ = KGTextField(placeholder: String())
    var addressQPlaceholder = String()
    var addressQ2 = KGTextField(placeholder: String())
    var addressQ2Placeholder = String()
    var nextButton = KGButton(title: String())
    var backButton = KGButton(title: String())
    let defaults = UserDefaults.standard
    var nationalityOfApplicant = String()
    var addressOfApplicant = String()
    var cityOfApplicant = String()
    var selectedLanguage = String()
    var helpTitle = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        useSelectedLanguage()
        configHelpBtn()
        configTitle()
        configSubTitle()
        configQ3()
        configBackButton()
        configNextButton()
        layoutForm3ViewController()
    }
    func useSelectedLanguage() {
        selectedLanguage = defaults.string(forKey: "selectedLanguage")!
        switch selectedLanguage {
        case "slovak":
            titleKG.text = KGTextSK().form1TitleSK
            subTitle.text = KGTextSK().form1SubtitleSK
            helpButton = KGHelpButton(title: KGTextSK().helpButtonTitleSK)
            helpTitle = KGTextSK().helpTitleSK
         backButton = KGButton(title: KGTextSK().backSK)
            nextButton = KGButton(title: KGTextSK().nextSK)
        
            nationalityQ = KGTextField(placeholder: KGTextSK().nationalitySK)
         
        case "german":
            titleKG.text = KGTextGE().form1TitleGE
            subTitle.text = KGTextGE().form1SubtitleGE
            helpButton = KGHelpButton(title: KGTextGE().helpButtonTitleGE)
            helpTitle = KGTextGE().helpTitleGE
            backButton = KGButton(title: KGTextGE().backGE)
            nextButton = KGButton(title: KGTextGE().nextGE)
          
        default:
            titleKG.text = KGTextEN().form1TitleEN
            subTitle.text = KGTextEN().form1SubtitleEN
            helpButton = KGHelpButton(title: KGTextEN().helpButtonTitleEN)
            helpTitle = KGTextEN().helpTitleEN
            nextButton = KGButton(title: KGTextEN().nextEN)
            backButton = KGButton(title: KGTextEN().backEN)
          
        }
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
