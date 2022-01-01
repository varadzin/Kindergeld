//
//  FormVC1.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class Form1ViewController: UIViewController {
    let titleKG = KGTitle()
    let subTitle = UILabel()
    let helpButton = KGHelpButton(title: "        Help")
    let nameQ = KGTextField(placeholder: " First name ")
    let surenameQ = KGTextField(placeholder: " Name ")
    let maidenNameQ = KGTextField(placeholder: " Maiden name / name from former marriage ")
    let nextButton = KGButton(title: "next ->>")
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        configHelpBtn()
        configTitle()
        configSubTitle()
        configQ1()
        configNextButton()
        layoutForm1ViewController()
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
        var nameParent: String?
        var sureNameParent: String?
        var maidenNameParent: String?
        guard nameQ.text != nil else { return }
        nameParent = nameQ.text!
        guard surenameQ.text != nil else { return }
        sureNameParent = surenameQ.text!
        guard maidenNameQ.text != nil else { return }
        maidenNameParent = maidenNameQ.text!
        print(nameParent!, sureNameParent!, maidenNameParent!)
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
