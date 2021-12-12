//
//  InfoVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit


class InfoVC: UIViewController {
    
    let titleKG = UILabel()
    let subTitle = UILabel()
    let textField = UILabel()
    let scrollView = UIScrollView()
    let startButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
        configSubTitle()
        configTextField()
        configNextBtn()
        layoutInfoVC()
            }
    
    func configVC() {
        view.backgroundColor = .systemBackground
//        navigationController?.isNavigationBarHidden = true
    }
    
    
    func configTitle() {
        view.addSubview(titleKG)
        
        titleKG.text = "Kindergeld - Child benefit"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
        titleKG.textAlignment = .center
    }
    
    func configSubTitle() {
        view.addSubview(subTitle)
        subTitle.text = "How can this App help you:"
        subTitle.font = UIFont(name: "Times New Roman", size: 18)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
    }
    
    func configTextField() {
        view.addSubview(textField)
        textField.font = UIFont(name: "Times New Roman", size: 18)
        textField.numberOfLines = 0
        textField.textAlignment = .center
        textField.text = """
With this App you can easily fill the Application for Child benefit in Germany. Enter all informations, answer all questions and when you are done just print the Application. If you are not sure with answer, please find HELP in top right corner.

You agree that by using this App you have read, understood, and agree to be bound by all of these Terms and Conditions Use.
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
        navigationController?.pushViewController(FormVC1(), animated: true)
    }
}
