//
//  FormVC7 + Ext.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 17.12.21.
//

import UIKit

extension Form7ViewController {
    func layoutForm7ViewController() {
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
        NSLayoutConstraint.activate([
            addressQ.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            addressQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            addressQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            addressQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
        NSLayoutConstraint.activate([
            addressQ2.topAnchor.constraint(equalTo: addressQ.bottomAnchor, constant: 15),
            addressQ2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            addressQ2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            addressQ2.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: addressQ2.bottomAnchor, constant: 25),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: addressQ2.bottomAnchor, constant: 25),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
