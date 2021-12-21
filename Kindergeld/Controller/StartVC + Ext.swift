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
        SKBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            SKBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            SKBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            SKBtn.widthAnchor.constraint(equalToConstant: 80),
            SKBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        SKLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            SKLabel.bottomAnchor.constraint(equalTo: SKBtn.topAnchor, constant: -5),
            SKLabel.leadingAnchor.constraint(equalTo: SKBtn.leadingAnchor, constant: 10)
        ])
        
        GEBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            GEBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            GEBtn.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: -40),
            GEBtn.widthAnchor.constraint(equalToConstant: 80),
            GEBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        GELabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            GELabel.bottomAnchor.constraint(equalTo: GEBtn.topAnchor, constant: -5),
            GELabel.leadingAnchor.constraint(equalTo: GEBtn.leadingAnchor, constant: 18)
        ])
        
        
        GBBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            GBBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            GBBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            GBBtn.widthAnchor.constraint(equalToConstant: 80),
            GBBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        GBLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            GBLabel.bottomAnchor.constraint(equalTo: GBBtn.topAnchor, constant: -5),
            GBLabel.leadingAnchor.constraint(equalTo: GBBtn.leadingAnchor, constant: 18)
        ])
    }
}
