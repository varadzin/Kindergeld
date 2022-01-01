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
    let subTitle = UILabel()
    let nationalityQ = KGTextField(placeholder: "Nationality")
    let addressQ = KGTextField(placeholder: "Street, house number")
    let addressQ2 = KGTextField(placeholder: "postcode, city, country")
    let nextButton = KGButton(title: "next ->>")
    let backButton = KGButton(title: "<<- back")
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
        subTitle.font = UIFont(name: "Times New Roman", size: 22)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
    }
@objc func showExplanation() {
        let destVC = KGExplainViewController()
        destVC.title = "Help"
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
    }
    func configQ3() {
        view.addSubview(nationalityQ)
        nationalityQ.keyboardType = .numbersAndPunctuation
        view.addSubview(addressQ)
        addressQ.keyboardType = .alphabet
        view.addSubview(addressQ2)
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
        let nextVC = Form4ViewController()
        navigationController?.pushViewController(nextVC, animated: true)
        }
    }
