//
//  StartViewController.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class StartViewController: UIViewController {
    let titleKG = KGTitle()
    let subTitle = KGSubTitle()
    let babyImg = UIImageView()
    let coinsImg = UIImageView()
    let SKButton = UIButton()
    let SKLabel = UILabel()
    let GEButton = UIButton()
    let GELabel = UILabel()
    let GBButton = UIButton()
    let GBLabel = UILabel()
    let defaults = UserDefaults.standard
    var selectedLanguage = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        configTitle()
        configSubTitle()
        configImages()
        configLanguageButtons()
        layoutStartViewController()
        layoutStartViewController2()
    }
    /// View Controller Setup
    func configViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    /// Title and Subtitle Setup
    func configTitle() {
        view.addSubview(titleKG)
        titleKG.text = "Kindergeld"
        titleKG.font = UIFont(name: "Times New Roman", size: 62)
        titleKG.textColor = .label
    }
    func configSubTitle() {
        view.addSubview(subTitle)
        subTitle.text = "get your Child Benefit"
        subTitle.font = UIFont(name: "Times New Roman", size: 36)
       }
    // MARK: - Choose Language - 3 Buttons
    func configImages() {
        view.addSubview(coinsImg)
        coinsImg.image = UIImage(named: "coinsImg")
        view.addSubview(babyImg)
        babyImg.image = UIImage(named: "babyImg")
    }
    func configLanguageButtons() {
        // Setting Button - SlovakiaFlag - chosed Slovak Language
        view.addSubview(SKButton)
        SKButton.setBackgroundImage(UIImage(named: "SlovakiaFlag"), for: .normal)
        SKButton.addTarget(self, action: #selector(goToInfoVCSlovak), for: .touchUpInside)
        view.addSubview(SKLabel)
        SKLabel.text = "Slovensky"
        SKLabel.textColor = .label
        SKLabel.font = UIFont(name: "Times New Roman", size: 14)
        // Setting Button - GEFlag - chosed Germany Language
        view.addSubview(GEButton)
        GEButton.setBackgroundImage(UIImage(named: "GermanyFlag"), for: .normal)
        GEButton.addTarget(self, action: #selector(goToInfoVCGerman), for: .touchUpInside)
        view.addSubview(GELabel)
        GELabel.text = "Deutsch"
        GELabel.textColor = .label
        GELabel.font = UIFont(name: "Times New Roman", size: 14)
        // Setting Button - GBFlag - chosed English Language
        view.addSubview(GBButton)
        GBButton.setBackgroundImage(UIImage(named: "GBFlag"), for: .normal)
        GBButton.addTarget(self, action: #selector(goToInfoVCEnglish), for: .touchUpInside)
        view.addSubview(GBLabel)
        GBLabel.text = "English"
        GBLabel.textColor = .label
        GBLabel.font = UIFont(name: "Times New Roman", size: 14)
    }
    @objc func goToInfoVCSlovak() {
        selectedLanguage = "slovak"
        defaults.set(selectedLanguage, forKey: "selectedLanguage")
        navigationController?.pushViewController(CustomTabBar(), animated: true)
    }
    
    @objc func goToInfoVCGerman() {
        selectedLanguage = "german"
        defaults.set(selectedLanguage, forKey: "selectedLanguage")
        navigationController?.pushViewController(CustomTabBar(), animated: true)
    }
    
    @objc func goToInfoVCEnglish() {
        selectedLanguage = "english"
        defaults.set(selectedLanguage, forKey: "selectedLanguage")
        navigationController?.pushViewController(CustomTabBar(), animated: true)
    }
}
