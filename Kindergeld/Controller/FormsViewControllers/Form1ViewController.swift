//
//  FormVC1.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//
///
/// In this View will User enter name, surename and maiden name and save it 
///
import UIKit
class Form1ViewController: UIViewController {
    let titleKG = KGTitle()
    let subTitle = KGSubTitle()
    var helpButton = KGHelpButton(title: String())
    var nameQ = KGTextField(placeholder: String())
    var surenameQ = KGTextField(placeholder: String())
    var maidenNameQ = KGTextField(placeholder: String())
    var nextButton = KGButton(title: String())
    var selectedLanguage = String()
    var helpTitle = String()
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        useSelectedLanguage()
        configHelpBtn()
      configTitle()
        configSubTitle()
        configQ1()
        configNextButton()
        layoutForm1ViewController()
    }
    func useSelectedLanguage() {
        selectedLanguage = defaults.string(forKey: "selectedLanguage")!
        switch selectedLanguage {
        case "slovak":
            titleKG.text = KGTextSK().form1TitleSK
            subTitle.text = KGTextSK().form1SubtitleSK
            helpButton = KGHelpButton(title: KGTextSK().helpButtonTitleSK)
            helpTitle = KGTextSK().helpTitleSK
            nameQ = KGTextField(placeholder: KGTextSK().firstNameSK)
            surenameQ = KGTextField(placeholder: KGTextSK().sureNameSK)
            maidenNameQ = KGTextField(placeholder: KGTextSK().maidenNameSK)
            nextButton = KGButton(title: KGTextSK().nextSK)
        case "german":
            titleKG.text = KGTextGE().form1TitleGE
            subTitle.text = KGTextGE().form1SubtitleGE
            helpButton = KGHelpButton(title: KGTextGE().helpButtonTitleGE)
            helpTitle = KGTextGE().helpTitleGE
            nameQ = KGTextField(placeholder: KGTextGE().firstNameGE)
            surenameQ = KGTextField(placeholder: KGTextGE().sureNameGE)
            maidenNameQ = KGTextField(placeholder: KGTextGE().maidenNameGE)
            nextButton = KGButton(title: KGTextGE().nextGE)
        default:
            titleKG.text = KGTextEN().form1TitleEN
            subTitle.text = KGTextEN().form1SubtitleEN
            helpButton = KGHelpButton(title: KGTextEN().helpButtonTitleEN)
            helpTitle = KGTextEN().helpTitleEN
            nameQ = KGTextField(placeholder: KGTextEN().firstNameEN)
            surenameQ = KGTextField(placeholder: KGTextEN().sureNameEN)
            maidenNameQ = KGTextField(placeholder: KGTextEN().maidenNameEN)
            nextButton = KGButton(title: KGTextEN().nextEN)
        }
    }
    func configViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
        navigationItem.setHidesBackButton(true, animated: true)
    }
    func configHelpBtn() {
        view.addSubview(helpButton)
        helpButton.addTarget(self, action: #selector(showExplanation), for: .touchUpInside)
    }
    func configTitle() {
        view.addSubview(titleKG)
       }
    func configSubTitle() {
        view.addSubview(subTitle)
       }
    @objc func showExplanation() {
        let destVC = KGExplainViewController()
        destVC.title = helpTitle
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
    }
    func configQ1() {
        view.addSubview(nameQ)
        nameQ.keyboardType = .alphabet
        view.addSubview(surenameQ)
        surenameQ.keyboardType = .alphabet
        view.addSubview(maidenNameQ)
        maidenNameQ.keyboardType = .alphabet
        }
    func configNextButton() {
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
    }
    @objc func saveDataAndGoNext() {
        var applicantFirstName: String?
        var applicantSureName: String?
        var applicantMaidenName: String?
        guard nameQ.text != nil else { return }
        applicantFirstName = nameQ.text!
        defaults.set(applicantFirstName, forKey: "applicantFirstName")
        // Saving First Name of Applicant into UserDefaults
        guard surenameQ.text != nil else { return }
        applicantSureName = surenameQ.text!
        defaults.set(applicantSureName, forKey: "applicantSureName")
        guard maidenNameQ.text != nil else { return }
        applicantMaidenName = maidenNameQ.text!
        defaults.set(applicantMaidenName, forKey: "applicantMaidenName")
        print(applicantFirstName!, applicantSureName!, applicantMaidenName!)
        let nextVC = Form2ViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
    }
extension Form1ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
}
