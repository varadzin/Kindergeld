//
//  FormVC6.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 31/08/2021.
//

import UIKit
class Form6ViewController: UIViewController {
    let helpButton = KGHelpButton(title: "        Help")
    let titleKG = KGTitle()
    let subTitle = UILabel()
    let spouseNameQ = KGTextField(placeholder: " First Name of spouse ")
    let spouseSurenameQ = KGTextField(placeholder: " Name of spouse ")
    let maidenSpouseNameQ = KGTextField(placeholder: " Maiden Name ")
    let simpleText = KGTextLabel()
    let datePicker = UIDatePicker()
    let spouseNationality = KGTextField(placeholder: "Nationality of spouse")
    let backButton = KGButton(title: "<<- back")
    let nextButton = KGButton(title: "next ->>")
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        configHelpBtn()
        configTitle()
        configSubTitle()
        configDatePicker()
        configQ6()
        configBackButton()
        configNextButton()
        layoutForm6ViewController()
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
        titleKG.text = "Information on the spouse or registered civil partner"
     }
    func configSubTitle() {
        view.addSubview(subTitle)
        subTitle.text = "Date of birth - spouse"
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
    func configDatePicker() {
        view.addSubview(datePicker)
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.timeZone = NSTimeZone.local
        datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .valueChanged)
    }
    @objc func datePickerValueChanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let selectedDate: String = dateFormatter.string(from: sender.date)
        print(selectedDate)
    }
    func configQ6() {
        view.addSubview(spouseNationality)
        spouseNationality.keyboardType = .alphabet
    }
    func configBackButton() {
        view.addSubview(backButton)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
    }
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    func configNextButton() {
        view.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
    }
    @objc func saveDataAndGoNext() {
        let nextVC = Form7ViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
extension Form6ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
}
