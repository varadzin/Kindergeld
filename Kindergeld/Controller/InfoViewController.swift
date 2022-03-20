//
//  InfoVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//
// Simple Info about App

import UIKit
class InfoViewController: UIViewController {
    let titleKG = KGTitle()
    let subTitle = KGSubTitle()
    let textField = UILabel()
    let scrollView = UIScrollView()
    let startButton = UIButton()
    let defaults = UserDefaults.standard
    var selectedLanguage = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        useSelectedLanguage()
        configTitle()
        configSubTitle()
        configTextField()
        configNextBtn()
        layoutInfoViewController()
    }
    func useSelectedLanguage() {
        selectedLanguage = defaults.string(forKey: "selectedLanguage")!
        switch selectedLanguage {
        case "slovak":
            titleKG.text = KGTextSK().infoViewTitleSK
            subTitle.text = KGTextSK().infoViewSubtitleSK
        case "german":
            titleKG.text = KGTextGE().infoViewTitleGE
            subTitle.text = KGTextGE().infoViewSubtitleGE
        default:
            titleKG.text = KGTextEN().infoViewTitleEN
            subTitle.text = KGTextEN().infoViewSubtitleEN
        }
    }
    func configViewController() {
        view.backgroundColor = .systemBackground
    }
    func configTitle() {
        view.addSubview(titleKG)
//        titleKG.text = "Kindergeld - Child benefit"
    }
    func configSubTitle() {
        view.addSubview(subTitle)
//        subTitle.text = "How can this App help you:"
    }
    func configTextField() {
        view.addSubview(textField)
        textField.font = UIFont(name: "Times New Roman", size: 18)
        textField.numberOfLines = 0
        textField.textAlignment = .center
        textField.text = """
With this App you can easily fill the Application for Child benefit in Germany.
Enter all informations, answer all questions and when you are done just print the Application.
If you are not sure with answer, please find HELP in top right corner.
You agree that by using this App you have read, understood,
and agree to be bound by all of these Terms and Conditions Use.
"""
    }
    func configNextBtn() {
        view.addSubview(startButton)
        startButton.setTitle("Start", for: .normal)
        startButton.backgroundColor = .systemOrange
        startButton.layer.cornerRadius = 10
        startButton.addTarget(self, action: #selector(goToMoreInfoVC), for: .touchUpInside)
    }
    @objc func goToMoreInfoVC() {
        navigationController?.pushViewController(Form1ViewController(), animated: true)
    }
}
