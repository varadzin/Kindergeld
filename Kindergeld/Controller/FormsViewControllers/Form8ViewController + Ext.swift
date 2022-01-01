//
//  FormVC8 + Ext.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 17.12.21.
//

import UIKit

extension Form8ViewController {
    func layoutForm8ViewControllerA() {
        helpButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            helpButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            helpButton.widthAnchor.constraint(equalToConstant: 100),
            helpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            helpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: helpButton.bottomAnchor, constant: 5),
            titleKG.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
        NSLayoutConstraint.activate([
            ibanQ.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            ibanQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            ibanQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            ibanQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            bicQ.topAnchor.constraint(equalTo: ibanQ.bottomAnchor, constant: 15),
            bicQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            bicQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            bicQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            bankNameQ.topAnchor.constraint(equalTo: bicQ.bottomAnchor, constant: 20),
            bankNameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            bankNameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            bankNameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            accountNameQ.topAnchor.constraint(equalTo: bankNameQ.bottomAnchor, constant: 15),
            accountNameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            accountNameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            accountNameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func layoutForm8ViewControllerB() {
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: accountNameQ.bottomAnchor, constant: 25),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: accountNameQ.bottomAnchor, constant: 25),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
