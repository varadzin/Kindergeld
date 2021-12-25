//
//  StartVC + Ext.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 12.12.21.
//

import UIKit

extension StartVC {
    // Extension is only for Autolayout of Elements in StartVC file
    func layoutStartVC() {
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            titleKG.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleKG.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        coinsImg.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            coinsImg.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            coinsImg.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            coinsImg.widthAnchor.constraint(equalToConstant: 86),
            coinsImg.heightAnchor.constraint(equalToConstant: 97)
        ])
        babyImg.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            babyImg.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            babyImg.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            babyImg.widthAnchor.constraint(equalToConstant: 245),
            babyImg.heightAnchor.constraint(equalToConstant: 240)
        ])
        }
}
