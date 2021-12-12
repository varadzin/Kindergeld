//
//  InfoVC + Ext.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 12.12.21.
//
import UIKit

extension InfoVC {
    
    //Extension is only for Autolayout of Elements in InfoVC file
    
    func layoutInfoVC() {
        
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor , constant: 80),
            titleKG.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
        
         subTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 20),
            subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subTitle.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 10),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 120),
            nextButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        
        
    }
    
}
