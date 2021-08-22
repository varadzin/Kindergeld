//
//  InfoVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class InfoVC: UIViewController, UIScrollViewDelegate {
    
    let titleKG = UILabel()
    let subTitle = UILabel()
    let textField = UILabel()
    let scrollView = UIScrollView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configScrollView()
        configTitle()
        configSubTitle()
        configTextField()
        configBottomInstructions()
       

    }
    
    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
      }
    
    func configScrollView() {
        view.addSubview(scrollView)
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: view.frame.size.width, height:view.frame.size.height)
        scrollView.alwaysBounceVertical = true

        
//        NSLayoutConstraint.activate([
//            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//                    ])
    }
    
  
    func configTitle() {
        scrollView.addSubview(titleKG)
        
        titleKG.text = "Kindergeld"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
  
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: -30),
            
            titleKG.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
 
        ])
    }
    
    func configSubTitle() {
        scrollView.addSubview(subTitle)
        
        subTitle.text = "čo potrebuješ vedieť"
        subTitle.font = UIFont(name: "Times New Roman", size: 18)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
        
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            subTitle.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
        ])
    }
    
    func configTextField() {
        scrollView.addSubview(textField)
        
        textField.font = UIFont(name: "Times New Roman", size: 18)
        textField.numberOfLines = 0
        textField.text = """
Pomocou tejto aplikácie vieš vyplniť formuláre pre žiadosť o prídavky na deti v Nemecku. O prídavky na deti možeš požiadať aj sám/sama. Nepotrebuješ na to žiadnu agentúru, ktorej zbytočne zaplatíš desiatky €. To čo zadáš pri vypĺňaní formuláru sa ti zobrazí v žiadosti.

Podmienky používania aplikácie Kindergeld:

Autor aplikácie nenesie zodpovednosť za akékoľvek škody, straty alebo ujmy spôsobené používaním aplikácie, najmä za škodu spôsobenú nesprávnym vyplnením formulárov, prípadne uvedením nepravdivých údajov pri žiadosti o prídavky.

Ochrana osobných údajov:
Všetky údaje zadané užívateľom ostávajú v telefóne. Aplikácia sa nepripája na internet a neodosiela žiadne dáta. Aplikácia nezbiera ani nikomu neposkytuje žiadne údaje. Po vyplnení formulára si vieš hotové PDF vytlačiť z telefónu, alebo preniesť bezpečne do počítača a následne z počítača vytlačiť. Používaním aplikácie dávaš najavo súhlas s podmienkami používania.

"""
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            textField.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 10),
            textField.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            textField.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
        
        ])
        
    }
    
    func configBottomInstructions() {
        let infoImg = UIImageView()
        scrollView.addSubview(infoImg)
        
        infoImg.image = UIImage(named: "InfoSK")
        infoImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoImg.bottomAnchor.constraint(equalTo: textField.bottomAnchor, constant: 80),
            infoImg.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 8),
            infoImg.widthAnchor.constraint(equalToConstant: 65),
            infoImg.heightAnchor.constraint(equalToConstant: 59)
         
        ])
        
        let fillFormImg = UIImageView()
        scrollView.addSubview(fillFormImg)
        
        fillFormImg.image = UIImage(named: "fillFormSK")
        fillFormImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            fillFormImg.bottomAnchor.constraint(equalTo: textField.bottomAnchor, constant: 80),
            fillFormImg.leadingAnchor.constraint(equalTo: infoImg.trailingAnchor, constant: 7),
            fillFormImg.widthAnchor.constraint(equalToConstant: 65),
            fillFormImg.heightAnchor.constraint(equalToConstant: 59)
         
        ])
        
        let payDaysImg = UIImageView()
        scrollView.addSubview(payDaysImg)
        
        payDaysImg.image = UIImage(named: "payDaysSK")
        payDaysImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            payDaysImg.bottomAnchor.constraint(equalTo: textField.bottomAnchor, constant: 80),
            payDaysImg.leadingAnchor.constraint(equalTo: fillFormImg.trailingAnchor, constant: 12),
            payDaysImg.widthAnchor.constraint(equalToConstant: 65),
            payDaysImg.heightAnchor.constraint(equalToConstant: 59)
         
        ])
        
        let settingsImg = UIImageView()
        scrollView.addSubview(settingsImg)
        
        settingsImg.image = UIImage(named: "settingsSK")
        settingsImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            settingsImg.bottomAnchor.constraint(equalTo: textField.bottomAnchor, constant: 80),
            settingsImg.leadingAnchor.constraint(equalTo: payDaysImg.trailingAnchor, constant: 10),
            settingsImg.widthAnchor.constraint(equalToConstant: 65),
            settingsImg.heightAnchor.constraint(equalToConstant: 48)
         
        ])
        
        let pdfImg = UIImageView()
        scrollView.addSubview(pdfImg)
        
        pdfImg.image = UIImage(named: "pdfSK")
        pdfImg.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pdfImg.bottomAnchor.constraint(equalTo: textField.bottomAnchor, constant: 80),
            pdfImg.leadingAnchor.constraint(equalTo: settingsImg.trailingAnchor, constant: 9),
            pdfImg.widthAnchor.constraint(equalToConstant: 65),
            pdfImg.heightAnchor.constraint(equalToConstant: 75)
         
        ])
        
    }
    
}
