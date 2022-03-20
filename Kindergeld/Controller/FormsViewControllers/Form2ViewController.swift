//
//  FormVC2.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 29/08/2021.
//

import UIKit

class Form2ViewController: UIViewController {
    let scrollView = UIScrollView()
    let titleKG = KGTitle()
    let subTitle = KGSubTitle()
    var helpButton = KGHelpButton(title: String())
    let dateBirthQ = KGTextField(placeholder: " Day of birth - DD.MM.RRRR ")
    let placeBirthQ = KGTextField(placeholder: " Place of birth")
    var sexOfApplicant: String?
    var segController = UISegmentedControl()
    let shortText = KGTextLabel()
    var helpTitle = String()
    var nextButton = KGButton(title: String())
    var backButton = KGButton(title: String())
    var dateOfBirthApplicant = "Moj datum"
    var placeOfBirthApplicant = "Moje mesto"
    let defaults = UserDefaults.standard
    var selectedLanguage = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        configHelpBtn()
        configTitle()
        configSubTitle()
        configQ2()
        configSexQ()
        configNextButton()
        configBackButton()
        layoutForm2ViewControllerA()
        layoutForm2ViewControllerB()
    }
    func useSelectedLanguage() {
        selectedLanguage = defaults.string(forKey: "selectedLanguage")!
        switch selectedLanguage {
        case "slovak":
            titleKG.text = KGTextSK().form1TitleSK
            subTitle.text = KGTextSK().form1SubtitleSK
            helpButton = KGHelpButton(title: KGTextSK().helpButtonTitleSK)
            helpTitle = KGTextSK().helpTitleSK
         
            nextButton = KGButton(title: KGTextSK().nextSK)
        case "german":
            titleKG.text = KGTextGE().form1TitleGE
            subTitle.text = KGTextGE().form1SubtitleGE
            helpButton = KGHelpButton(title: KGTextGE().helpButtonTitleGE)
            helpTitle = KGTextGE().helpTitleGE
            
            nextButton = KGButton(title: KGTextGE().nextGE)
        default:
            titleKG.text = KGTextEN().form1TitleEN
            subTitle.text = KGTextEN().form1SubtitleEN
            helpButton = KGHelpButton(title: KGTextEN().helpButtonTitleEN)
            helpTitle = KGTextEN().helpTitleEN
            nextButton = KGButton(title: KGTextEN().nextEN)
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
    func configQ2() {
        view.addSubview(dateBirthQ)
        dateBirthQ.keyboardType = .numbersAndPunctuation
        view.addSubview(placeBirthQ)
        placeBirthQ.keyboardType = .alphabet
    }
    func configSexQ() {
        shortText.text = "Person making application is:"
        shortText.textColor = .label
        view.addSubview(shortText)
        let items = ["Man", "Woman"]
        segController = UISegmentedControl(items: items)
        segController.selectedSegmentIndex = 0
        segController.addTarget(self, action: #selector(saveSex), for: .valueChanged)
        view.addSubview(segController)
    }
    @objc func saveSex(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sexOfApplicant = "Man"
        case 1:
            sexOfApplicant = "Woman"
        default:
            sexOfApplicant = "Man"
        }
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
        let nextVC = Form3ViewController()
        dateOfBirthApplicant = dateBirthQ.text!
        defaults.set(dateOfBirthApplicant, forKey: "dateOfBirthApplicant")
        placeOfBirthApplicant = placeBirthQ.text!
        defaults.set(placeOfBirthApplicant, forKey: "placeOfBirthApplicant")
        defaults.set(sexOfApplicant, forKey: "sexOfApplicant")
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

extension Form2ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
}
