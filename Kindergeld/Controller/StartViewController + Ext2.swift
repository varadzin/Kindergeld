//
//  StartVC + Ext2.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 22.12.21.
//
import UIKit

extension StartViewController {
    // Extension is only for Autolayout of Elements in StartVC file
    func layoutStartViewController2() {
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
