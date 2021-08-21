//
//  StartVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class StartVC: UIViewController {
    
    let titleKG = UILabel()
    let subTitle = UILabel()
    let babyImg = UIImageView()
    let coinsImg = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
        configSubTitle()
        configImages()
        configLanguageButtons()
    }
    
    
    func configVC() {
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
    }
    
    func configTitle() {
        view.addSubview(titleKG)
        
        titleKG.text = "Kindergeld"
        titleKG.font = UIFont(name: "Times New Roman", size: 62)
        titleKG.textColor = .label
        titleKG.textAlignment = .center
        
        
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            titleKG.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleKG.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    
    func configSubTitle() {
        view.addSubview(subTitle)
        
        subTitle.text = "prídavky na deti v Nemecku"
        subTitle.font = UIFont(name: "Times New Roman", size: 36)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
        
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func configImages() {
        view.addSubview(coinsImg)
        
        coinsImg.image = UIImage(named: "coinsImg")
        coinsImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            coinsImg.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 50),
            coinsImg.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            coinsImg.widthAnchor.constraint(equalToConstant: 86),
            coinsImg.heightAnchor.constraint(equalToConstant: 97)
        ])
        
        view.addSubview(babyImg)
        
        babyImg.image = UIImage(named: "babyImg")
        babyImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            babyImg.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 70),
            babyImg.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            babyImg.widthAnchor.constraint(equalToConstant: 245),
            babyImg.heightAnchor.constraint(equalToConstant: 240)
        ])
    }
    
    func configLanguageButtons() {
        //Setting Button - SlovakiaFlag - chosed Slovak Language
        let SKBtn = UIButton()
        view.addSubview(SKBtn)
        SKBtn.setBackgroundImage(UIImage(named: "SlovakiaFlag"), for: .normal)
        SKBtn.addTarget(self, action: #selector(goToInfoVC), for: .touchUpInside)
        
        
        SKBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            SKBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            SKBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            SKBtn.widthAnchor.constraint(equalToConstant: 80),
            SKBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let SKLabel = UILabel()
        view.addSubview(SKLabel)
        SKLabel.text = "Slovensky"
        SKLabel.textColor = .label
        SKLabel.font = UIFont(name: "Times New Roman", size: 14)
        SKLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            SKLabel.bottomAnchor.constraint(equalTo: SKBtn.topAnchor, constant: -5),
            SKLabel.leadingAnchor.constraint(equalTo: SKBtn.leadingAnchor, constant: 10)
        ])
        
        //Setting Button - GEFlag - chosed Germany Language
        let GEBtn = UIButton()
        view.addSubview(GEBtn)
        GEBtn.setBackgroundImage(UIImage(named: "GermanyFlag"), for: .normal)
        GEBtn.addTarget(self, action: #selector(goToInfoVC), for: .touchUpInside)
        
        
        GEBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            GEBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            GEBtn.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: -40),
            GEBtn.widthAnchor.constraint(equalToConstant: 80),
            GEBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let GELabel = UILabel()
        view.addSubview(GELabel)
        GELabel.text = "Deutsch"
        GELabel.textColor = .label
        GELabel.font = UIFont(name: "Times New Roman", size: 14)
        GELabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            GELabel.bottomAnchor.constraint(equalTo: GEBtn.topAnchor, constant: -5),
            GELabel.leadingAnchor.constraint(equalTo: GEBtn.leadingAnchor, constant: 18)
        ])
        
        //Setting Button - GBFlag - chosed English Language
        let GBBtn = UIButton()
        view.addSubview(GBBtn)
        GBBtn.setBackgroundImage(UIImage(named: "GBFlag"), for: .normal)
        GBBtn.addTarget(self, action: #selector(goToInfoVC), for: .touchUpInside)
        
        GBBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            GBBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            GBBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            GBBtn.widthAnchor.constraint(equalToConstant: 80),
            GBBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let GBLabel = UILabel()
        view.addSubview(GBLabel)
        GBLabel.text = "English"
        GBLabel.textColor = .label
        GBLabel.font = UIFont(name: "Times New Roman", size: 14)
        GBLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            GBLabel.bottomAnchor.constraint(equalTo: GBBtn.topAnchor, constant: -5),
            GBLabel.leadingAnchor.constraint(equalTo: GBBtn.leadingAnchor, constant: 18)
        ])
        
    }
    
    @objc func goToInfoVC() {
        navigationController?.pushViewController(CustomTabBar(), animated: true)
        
    }
    
    
}
