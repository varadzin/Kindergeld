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
            textField.text = KGTextSK().infoViewMainTextSK
        case "german":
            titleKG.text = KGTextGE().infoViewTitleGE
            subTitle.text = KGTextGE().infoViewSubtitleGE
            textField.text = KGTextGE().infoViewMainTextGE
        default:
            titleKG.text = KGTextEN().infoViewTitleEN
            subTitle.text = KGTextEN().infoViewSubtitleEN
            textField.text = KGTextEN().infoViewMainTextEN
        }
    }
    func configViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
    }
    func configTitle() {
        view.addSubview(titleKG)
    }
    func configSubTitle() {
        view.addSubview(subTitle)
    }
    func configTextField() {
        view.addSubview(textField)
        textField.font = UIFont(name: "Times New Roman", size: 18)
        textField.numberOfLines = 0
        textField.textAlignment = .center
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
