//
//  FormVC6.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 31/08/2021.
//

import UIKit


class FormVC6: UIViewController {
    
    
    
    
    let titleKG = UILabel()
    let subTitle = UILabel()
    let spouseNameQ = KGTextField(placeholder: " Krstné meno partnera / ky ")
    let spouseSurenameQ = KGTextField(placeholder: " Priezvisko partnera / ky ")
    let maidenSpouseNameQ = KGTextField(placeholder: " Rodné priezvisko partnera / ky ")
    let explainButton = KGButton(title: "Vysvetlivky - Partner / ka -  / manžel / ka")
    let simpleText = KGTextLabel()
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
        configSubTitle()
        configSimpleText()
        configDatePicker()
        
        
    }
    
    
    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
    }
    
    
    
    func configTitle() {
        view.addSubview(titleKG)
        
        titleKG.text = "Hlavná žiadosť - (KG1)"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
        
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            
            titleKG.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
            
        ])
    }
    
    func configSubTitle() {
        view.addSubview(subTitle)
        
        subTitle.text = "Údaje o manželke / manželovi, partnerke / partnerovi"
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
    
    func configSimpleText() {
        view.addSubview(simpleText)
        
        simpleText.text = "Dátum narodenia:"
        
        NSLayoutConstraint.activate([
            simpleText.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 10),
            simpleText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            simpleText.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
        
    }
    
    
    func configDatePicker() {
    
        view.addSubview(datePicker)

        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.timeZone = NSTimeZone.local
 
        
      
        datePicker.addTarget(self, action: #selector(FormVC6.datePickerValueChanged(_:)), for: .valueChanged)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            datePicker.topAnchor.constraint(equalTo: simpleText.bottomAnchor, constant: 5),
            datePicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            datePicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            datePicker.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }
    
    @objc func datePickerValueChanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "dd.MM.yyyy"
        
        let selectedDate: String = dateFormatter.string(from: sender.date)
        
        print(selectedDate)
        
        
    }
    
    func configBackButton() {
        let backButton = KGButton(title: "<<- späť")
        view.addSubview(backButton)
        
                backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 15),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
        
    }
    
    
    func configNextButton() {
        let nextButton = KGButton(title: "ďalej ->>")
        view.addSubview(nextButton)
        
        nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 15),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
   @objc func saveDataAndGoNext() {
        
    let nextVC = FormVC7()
    navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    
}
extension FormVC6: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
    
}
