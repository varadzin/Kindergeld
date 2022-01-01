//
//  FormVC4.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 31/08/2021.
//

import UIKit

class Form4ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let helpButton = KGHelpButton(title: "        Help")
    let titleKG = KGTitle()
    let subTitle = UILabel()
    let simpleText = KGTextLabel()
    let pickerArray = ["single", "married", "divorced", "widowed", "living in reg.civil partnership", "perm.separated"]
    let pickerView = UIPickerView()
    let sinceQ = KGTextField(placeholder: "Since:")
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        configHelpBtn()
        configTitle()
        configSubTitle()
        configPickerView()
        configQ4()
        sinceQ.isHidden = true
        configNextButton()
        configBackButton()
    }
    func configViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
    }
    func configHelpBtn() {
        view.addSubview(helpButton)
        helpButton.addTarget(self, action: #selector(showExplanation), for: .touchUpInside)
        helpButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            helpButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            helpButton.widthAnchor.constraint(equalToConstant: 100),
            helpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            helpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configTitle() {
        view.addSubview(titleKG)
        titleKG.text = "Application for Child Benefit"
        
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: helpButton.bottomAnchor, constant: 5),
            titleKG.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
    }
    func configSubTitle() {
        view.addSubview(subTitle)
        subTitle.text = "Family status of person making application"
        subTitle.font = UIFont(name: "Times New Roman", size: 22)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
    }
    @objc func showExplanation() {
        let destVC = KGExplainViewController()
        destVC.title = "Help"
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
    }
    func configSimpleText() {
        simpleText.text = "Family status"
        view.addSubview(simpleText)
        NSLayoutConstraint.activate([
            simpleText.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 10),
            simpleText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            simpleText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            simpleText.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configPickerView() {
        view.addSubview(pickerView)
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pickerView.topAnchor.constraint(equalTo: subTitle.bottomAnchor),
            pickerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            pickerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            pickerView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let row = pickerArray[row]
        return row
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow pickedItem: Int, inComponent: Int) {
        switch pickedItem {
        case 0:
            sinceQ.isHidden = true
        default:
            sinceQ.isHidden = false
        }
    }
    func configQ4() {
        view.addSubview(sinceQ)
        sinceQ.keyboardType = .numbersAndPunctuation
        NSLayoutConstraint.activate([
            sinceQ.topAnchor.constraint(equalTo: pickerView.bottomAnchor, constant: 5),
            sinceQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            sinceQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            sinceQ.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configNextButton() {
        let nextButton = KGButton(title: "next ->>")
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: pickerView.bottomAnchor, constant: 70),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configBackButton() {
        let backButton = KGButton(title: "<<- back")
        view.addSubview(backButton)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: pickerView.bottomAnchor, constant: 70),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    @objc func saveDataAndGoNext() {
        let nextVC = Form5ViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
