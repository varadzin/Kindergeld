//
//  FormVC9 + Ext.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 28.12.21.
//

import UIKit

extension Form9ViewController {
    func layoutForm9ViewController() {
        helpButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            helpButton.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor, constant: 5),
            helpButton.widthAnchor.constraint(equalToConstant: 100),
            helpButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
            helpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: helpButton.bottomAnchor, constant: 5),
            titleKG.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
            ])
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            subTitle.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
        ])
        }
    func configNameOfFirstKid() {
        scrollView.addSubview(labelFirstChild)
        labelFirstChild.text = "1. Child is: "
        labelFirstChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(nameOfFirstKid)
        nameOfFirstKid.keyboardType = .alphabet
        nameOfFirstKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfFirstKid)
        sureNameOfFirstKid.keyboardType = .alphabet
        sureNameOfFirstKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelFirstChild.topAnchor.constraint(equalTo: numberOfKidsSegController.bottomAnchor, constant: 20),
            labelFirstChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelFirstChild.widthAnchor.constraint(equalToConstant: 80),
            labelFirstChild.heightAnchor.constraint(equalToConstant: 40),
            nameOfFirstKid.topAnchor.constraint(equalTo: labelFirstChild.bottomAnchor, constant: 5),
            nameOfFirstKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameOfFirstKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            nameOfFirstKid.heightAnchor.constraint(equalToConstant: 50),
            sureNameOfFirstKid.topAnchor.constraint(equalTo: nameOfFirstKid.bottomAnchor, constant: 5),
            sureNameOfFirstKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            sureNameOfFirstKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            sureNameOfFirstKid.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configNameOfSecondKid() {
        scrollView.addSubview(labelSecondChild)
        labelSecondChild.text = "2. Child is:"
        labelSecondChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(nameOfSecondKid)
        nameOfSecondKid.keyboardType = .alphabet
        nameOfSecondKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfSecondKid)
        sureNameOfSecondKid.keyboardType = .alphabet
        sureNameOfSecondKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelSecondChild.topAnchor.constraint(equalTo: sureNameOfFirstKid.bottomAnchor, constant: 20),
            labelSecondChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelSecondChild.widthAnchor.constraint(equalToConstant: 80),
            labelSecondChild.heightAnchor.constraint(equalToConstant: 40),
            nameOfSecondKid.topAnchor.constraint(equalTo: labelSecondChild.bottomAnchor, constant: 5),
            nameOfSecondKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameOfSecondKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            nameOfSecondKid.heightAnchor.constraint(equalToConstant: 50),
            sureNameOfSecondKid.topAnchor.constraint(equalTo: nameOfSecondKid.bottomAnchor, constant: 5),
            sureNameOfSecondKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            sureNameOfSecondKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            sureNameOfSecondKid.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configNameOfThirdKid() {
        scrollView.addSubview(labelThirdChild)
        labelThirdChild.text = "3. Child is:"
        labelThirdChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(nameOfThirdKid)
        nameOfThirdKid.keyboardType = .alphabet
        nameOfThirdKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfThirdKid)
        sureNameOfThirdKid.keyboardType = .alphabet
        sureNameOfThirdKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelThirdChild.topAnchor.constraint(equalTo: sureNameOfSecondKid.bottomAnchor, constant: 20),
            labelThirdChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelThirdChild.widthAnchor.constraint(equalToConstant: 80),
            labelThirdChild.heightAnchor.constraint(equalToConstant: 40),
            nameOfThirdKid.topAnchor.constraint(equalTo: labelThirdChild.bottomAnchor, constant: 5),
            nameOfThirdKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameOfThirdKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            nameOfThirdKid.heightAnchor.constraint(equalToConstant: 50),
            sureNameOfThirdKid.topAnchor.constraint(equalTo: nameOfThirdKid.bottomAnchor, constant: 5),
            sureNameOfThirdKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            sureNameOfThirdKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            sureNameOfThirdKid.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configNameOfFourthKid() {
        scrollView.addSubview(labelFourthChild)
        labelFourthChild.text = "4. Child is:"
        labelFourthChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(nameOfFourthKid)
        nameOfFourthKid.keyboardType = .alphabet
        nameOfFourthKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfFourthKid)
        sureNameOfFourthKid.keyboardType = .alphabet
        sureNameOfFourthKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelFourthChild.topAnchor.constraint(equalTo: sureNameOfThirdKid.bottomAnchor, constant: 20),
            labelFourthChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelFourthChild.widthAnchor.constraint(equalToConstant: 80),
            labelFourthChild.heightAnchor.constraint(equalToConstant: 40),
            nameOfFourthKid.topAnchor.constraint(equalTo: labelFourthChild.bottomAnchor, constant: 5),
            nameOfFourthKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameOfFourthKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            nameOfFourthKid.heightAnchor.constraint(equalToConstant: 50),
            sureNameOfFourthKid.topAnchor.constraint(equalTo: nameOfFourthKid.bottomAnchor, constant: 5),
            sureNameOfFourthKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            sureNameOfFourthKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            sureNameOfFourthKid.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configBoyGirlSegController1() {
        let items = ["Boy", "Girl"]
        boyGirlFirstSegController = UISegmentedControl(items: items)
        boyGirlFirstSegController.selectedSegmentIndex = 0
        boyGirlFirstSegController.addTarget(self, action: #selector(configSexOfFirstChild), for: .valueChanged)
        scrollView.addSubview(boyGirlFirstSegController)
        boyGirlFirstSegController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boyGirlFirstSegController.topAnchor.constraint(equalTo: numberOfKidsSegController.bottomAnchor, constant: 25),
            boyGirlFirstSegController.leadingAnchor.constraint(equalTo: labelFirstChild.trailingAnchor, constant: 10),
            boyGirlFirstSegController.widthAnchor.constraint(equalToConstant: 200),
            boyGirlFirstSegController.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    @objc func configSexOfFirstChild(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sexOfFirstChild = "Boy"
        case 1:
            sexOfFirstChild = "Girl"
        default:
            sexOfFirstChild = "Boy"
        }
    }
    func configBoyGirlSegController2() {
        let items = ["Boy", "Girl"]
        boyGirlSecondSegController = UISegmentedControl(items: items)
        boyGirlSecondSegController.selectedSegmentIndex = 0
        boyGirlSecondSegController.addTarget(self, action: #selector(configSexOfSecondChild), for: .valueChanged)
        scrollView.addSubview(boyGirlSecondSegController)
        boyGirlSecondSegController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boyGirlSecondSegController.topAnchor.constraint(equalTo: sureNameOfFirstKid.bottomAnchor, constant: 25),
            boyGirlSecondSegController.leadingAnchor.constraint(equalTo: labelSecondChild.trailingAnchor, constant: 10),
            boyGirlSecondSegController.widthAnchor.constraint(equalToConstant: 200),
            boyGirlSecondSegController.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    @objc func configSexOfSecondChild(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sexOfSecondChild = "Boy"
        case 1:
            sexOfSecondChild = "Girl"
        default:
            sexOfSecondChild = "Boy"
        }
    }
    func configBoyGirlSegController3() {
        let items = ["Boy", "Girl"]
        boyGirlThirdSegController = UISegmentedControl(items: items)
        boyGirlThirdSegController.selectedSegmentIndex = 0
        boyGirlThirdSegController.addTarget(self, action: #selector(configSexOfThirdChild), for: .valueChanged)
        scrollView.addSubview(boyGirlThirdSegController)
        boyGirlThirdSegController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boyGirlThirdSegController.topAnchor.constraint(equalTo: sureNameOfSecondKid.bottomAnchor, constant: 25),
            boyGirlThirdSegController.leadingAnchor.constraint(equalTo: labelThirdChild.trailingAnchor, constant: 10),
            boyGirlThirdSegController.widthAnchor.constraint(equalToConstant: 200),
            boyGirlThirdSegController.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    @objc func configSexOfThirdChild(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sexOfThirdChild = "Boy"
        case 1:
            sexOfThirdChild = "Girl"
        default:
            sexOfThirdChild = "Boy"
        }
    }
    func configBoyGirlSegController4() {
        let items = ["Boy", "Girl"]
        boyGirlFourthSegController = UISegmentedControl(items: items)
        boyGirlFourthSegController.selectedSegmentIndex = 0
        boyGirlFourthSegController.addTarget(self, action: #selector(configSexOfFourthChild), for: .valueChanged)
        scrollView.addSubview(boyGirlFourthSegController)
        boyGirlFourthSegController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boyGirlFourthSegController.topAnchor.constraint(equalTo: sureNameOfThirdKid.bottomAnchor, constant: 25),
            boyGirlFourthSegController.leadingAnchor.constraint(equalTo: labelFourthChild.trailingAnchor, constant: 10),
            boyGirlFourthSegController.widthAnchor.constraint(equalToConstant: 200),
            boyGirlFourthSegController.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    @objc func configSexOfFourthChild(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sexOfFourthChild = "Boy"
        case 1:
            sexOfFourthChild = "Girl"
        default:
            sexOfFourthChild = "Boy"
        }
    }
    
    func layoutForm9ViewControllerB() {
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: sureNameOfFirstKid.bottomAnchor, constant: positionOfNextButton),
            nextButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: sureNameOfFirstKid.bottomAnchor, constant: positionOfNextButton),
            backButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}
