//
//  FormVC2 + Ext.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 13.12.21.
//

import UIKit

extension Form2ViewController {
    func layoutForm2ViewControllerA() {
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
            dateBirthQ.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            dateBirthQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dateBirthQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dateBirthQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            placeBirthQ.topAnchor.constraint(equalTo: dateBirthQ.bottomAnchor, constant: 15),
            placeBirthQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            placeBirthQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            placeBirthQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            shortTextLabel.topAnchor.constraint(equalTo: placeBirthQ.bottomAnchor, constant: 20),
            shortTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            shortTextLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            shortTextLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
        }
    func layoutForm2ViewControllerB() {
        segController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segController.topAnchor.constraint(equalTo: shortTextLabel.bottomAnchor, constant: 10),
            segController.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            segController.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            segController.heightAnchor.constraint(equalToConstant: 30)
        ])
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: segController.bottomAnchor, constant: 25),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: segController.bottomAnchor, constant: 25),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    }
