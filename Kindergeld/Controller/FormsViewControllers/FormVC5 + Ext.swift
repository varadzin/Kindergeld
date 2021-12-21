//
//  FormVC5 + Ext.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 16.12.21.
//

import UIKit

extension FormVC5 {
    func layoutFormVC5() {
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
            spouseNameQ.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 15),
            spouseNameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            spouseNameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            spouseNameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            maidenSpouseNameQ.topAnchor.constraint(equalTo: spouseSurenameQ.bottomAnchor, constant: 15),
            maidenSpouseNameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            maidenSpouseNameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            maidenSpouseNameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            spouseSurenameQ.topAnchor.constraint(equalTo: spouseNameQ.bottomAnchor, constant: 15),
            spouseSurenameQ.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            spouseSurenameQ.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            spouseSurenameQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: maidenSpouseNameQ.bottomAnchor, constant: 15),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: maidenSpouseNameQ.bottomAnchor, constant: 15),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
