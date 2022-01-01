//
//  FormVC1 + Ext.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 12.12.21.
//

import UIKit

extension Form1ViewController {
    func layoutForm1ViewController() {
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
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 10),
            subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
        NSLayoutConstraint.activate([
            nameQ.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            nameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            nameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            surenameQ.topAnchor.constraint(equalTo: nameQ.bottomAnchor, constant: 15),
            surenameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            surenameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            surenameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            maidenNameQ.topAnchor.constraint(equalTo: surenameQ.bottomAnchor, constant: 15),
            maidenNameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            maidenNameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            maidenNameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: maidenNameQ.bottomAnchor, constant: 20),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
