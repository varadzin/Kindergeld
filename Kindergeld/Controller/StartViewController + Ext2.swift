//
//  StartVC + Ext2.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 22.12.21.
//
import UIKit

///
/// Layout Setting for Buttons - Flags Slovakia, Great Britain, Germany
///
extension StartViewController {
    func layoutStartViewController2() {
        SKButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            SKButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            SKButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            SKButton.widthAnchor.constraint(equalToConstant: 80),
            SKButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        SKLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            SKLabel.bottomAnchor.constraint(equalTo: SKButton.topAnchor, constant: -5),
            SKLabel.leadingAnchor.constraint(equalTo: SKButton.leadingAnchor, constant: 10)
        ])
        GEButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            GEButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            GEButton.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: -40),
            GEButton.widthAnchor.constraint(equalToConstant: 80),
            GEButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        GELabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            GELabel.bottomAnchor.constraint(equalTo: GEButton.topAnchor, constant: -5),
            GELabel.leadingAnchor.constraint(equalTo: GEButton.leadingAnchor, constant: 18)
        ])
        GBButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            GBButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            GBButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            GBButton.widthAnchor.constraint(equalToConstant: 80),
            GBButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        GBLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            GBLabel.bottomAnchor.constraint(equalTo: GBButton.topAnchor, constant: -5),
            GBLabel.leadingAnchor.constraint(equalTo: GBButton.leadingAnchor, constant: 18)
        ])
    }
}
