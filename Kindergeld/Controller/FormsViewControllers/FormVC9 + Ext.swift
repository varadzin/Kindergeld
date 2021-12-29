//
//  FormVC9 + Ext.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 28.12.21.
//

import UIKit

extension FormVC9 {
    func layoutFormVC9() {
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
        scrollView.addSubview(sexOfFirstChildSegController)
        sexOfFirstChildSegController.translatesAutoresizingMaskIntoConstraints = false
        let items = ["Boy", "Girl"]
        sexOfFirstChildSegController = UISegmentedControl(items: items)
        sexOfFirstChildSegController.selectedSegmentIndex = 0
        sexOfFirstChildSegController.addTarget(self, action: #selector(numberOfKidsRequest), for: .valueChanged)
        scrollView.addSubview(nameOfFirstKid)
        nameOfFirstKid.keyboardType = .alphabet
        nameOfFirstKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfFirstKid)
        sureNameOfFirstKid.keyboardType = .alphabet
        sureNameOfFirstKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelFirstChild.topAnchor.constraint(equalTo: numberOfKidsSegController.bottomAnchor, constant: 10),
            labelFirstChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelFirstChild.widthAnchor.constraint(equalToConstant: 200),
            labelFirstChild.heightAnchor.constraint(equalToConstant: 40),
            nameOfFirstKid.topAnchor.constraint(equalTo: labelFirstChild.bottomAnchor),
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
        labelSecondChild.text = "2. Child"
        labelSecondChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(nameOfSecondKid)
        nameOfSecondKid.keyboardType = .alphabet
        nameOfSecondKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfSecondKid)
        sureNameOfSecondKid.keyboardType = .alphabet
        sureNameOfSecondKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelSecondChild.topAnchor.constraint(equalTo: sureNameOfFirstKid.bottomAnchor, constant: 10),
            labelSecondChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelSecondChild.widthAnchor.constraint(equalToConstant: 200),
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
        labelThirdChild.text = "3. Child"
        labelThirdChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(nameOfThirdKid)
        nameOfThirdKid.keyboardType = .alphabet
        nameOfThirdKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfThirdKid)
        sureNameOfThirdKid.keyboardType = .alphabet
        sureNameOfThirdKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelThirdChild.topAnchor.constraint(equalTo: sureNameOfSecondKid.bottomAnchor, constant: 10),
            labelThirdChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelThirdChild.widthAnchor.constraint(equalToConstant: 200),
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
        labelFourthChild.text = "4. Child"
        labelFourthChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(nameOfFourthKid)
        nameOfFourthKid.keyboardType = .alphabet
        nameOfFourthKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfFourthKid)
        sureNameOfFourthKid.keyboardType = .alphabet
        sureNameOfFourthKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelFourthChild.topAnchor.constraint(equalTo: sureNameOfThirdKid.bottomAnchor, constant: 10),
            labelFourthChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelFourthChild.widthAnchor.constraint(equalToConstant: 200),
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
}
