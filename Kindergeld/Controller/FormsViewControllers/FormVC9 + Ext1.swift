//
//  FormVC9 + Ext.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21.12.21.
//

import UIKit

extension FormVC9 {
    func layoutFormVC9a() {
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
            titleKG.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
        ])
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            subTitle.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
        ])
        NSLayoutConstraint.activate([
            shortLabel.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            shortLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortLabel.widthAnchor.constraint(equalToConstant: 300)
        ])
        segKidController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segKidController.topAnchor.constraint(equalTo: shortLabel.bottomAnchor, constant: 10),
            segKidController.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            segKidController.widthAnchor.constraint(equalToConstant: 300)
        ])
        nameKid1Q.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameKid1Q.topAnchor.constraint(equalTo: segKidController.bottomAnchor, constant: 20),
            nameKid1Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameKid1Q.widthAnchor.constraint(equalToConstant: 300),
            nameKid1Q.heightAnchor.constraint(equalToConstant: 50)
        ])
//        NSLayoutConstraint.activate([
//            nameKidQ.topAnchor.constraint(equalTo: segKidController.bottomAnchor, constant: 25),
//            nameKidQ.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
//            nameKidQ.widthAnchor.constraint(equalToConstant: 300),
//            nameKidQ.heightAnchor.constraint(equalToConstant: 50)
//        ])
//        NSLayoutConstraint.activate([
//            surenameKidQ.topAnchor.constraint(equalTo: nameKidQ.bottomAnchor, constant: 15),
//            surenameKidQ.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
//            surenameKidQ.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
//            surenameKidQ.heightAnchor.constraint(equalToConstant: 50)
//        ])
//        NSLayoutConstraint.activate([
//            shortText2.topAnchor.constraint(equalTo: surenameKidQ.bottomAnchor, constant: 20),
//            shortText2.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
//            shortText2.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -50),
//            shortText2.heightAnchor.constraint(equalToConstant: 30)
//        ])
//        segController.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            segController.topAnchor.constraint(equalTo: shortText2.bottomAnchor, constant: 10),
//            segController.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 50),
//            segController.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -50),
//            segController.heightAnchor.constraint(equalToConstant: 30)
//        ])
    }
    func layoutFormVC9b() {
        surenameKid1Q.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            surenameKid1Q.topAnchor.constraint(equalTo: nameKid1Q.bottomAnchor, constant: 15),
            surenameKid1Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            surenameKid1Q.widthAnchor.constraint(equalToConstant: 300),
            surenameKid1Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        shortText2a.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            shortText2a.topAnchor.constraint(equalTo: surenameKid1Q.bottomAnchor, constant: 20),
            shortText2a.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortText2a.widthAnchor.constraint(equalToConstant: 300),
            shortText2a.heightAnchor.constraint(equalToConstant: 30)
        ])
        segController1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segController1.topAnchor.constraint(equalTo: shortText2a.bottomAnchor, constant: 10),
            segController1.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            segController1.widthAnchor.constraint(equalToConstant: 300),
            segController1.heightAnchor.constraint(equalToConstant: 30)
        ])
        nameKid2Q.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameKid2Q.topAnchor.constraint(equalTo: segController1.bottomAnchor, constant: 50),
            nameKid2Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameKid2Q.widthAnchor.constraint(equalToConstant: 300),
            nameKid2Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        shortText2b.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            shortText2b.topAnchor.constraint(equalTo: surenameKid2Q.bottomAnchor, constant: 10),
            shortText2b.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortText2b.widthAnchor.constraint(equalToConstant: 300),
            shortText2b.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    func layoutFormVC9c() {
        segController2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segController2.topAnchor.constraint(equalTo: shortText2b.bottomAnchor, constant: 10),
            segController2.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            segController2.widthAnchor.constraint(equalToConstant: 300),
            segController2.heightAnchor.constraint(equalToConstant: 30)
        ])
        nameKid3Q.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameKid3Q.topAnchor.constraint(equalTo: segController2.bottomAnchor, constant: 50),
            nameKid3Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameKid3Q.widthAnchor.constraint(equalToConstant: 300),
            nameKid3Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            surenameKid3Q.topAnchor.constraint(equalTo: nameKid3Q.bottomAnchor, constant: 15),
            surenameKid3Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            surenameKid3Q.widthAnchor.constraint(equalToConstant: 300),
            surenameKid3Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        shortText2c.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            shortText2c.topAnchor.constraint(equalTo: surenameKid3Q.bottomAnchor, constant: 10),
            shortText2c.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortText2c.widthAnchor.constraint(equalToConstant: 300),
            shortText2c.heightAnchor.constraint(equalToConstant: 30)
        ])
        segController3.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segController3.topAnchor.constraint(equalTo: shortText2c.bottomAnchor, constant: 10),
            segController3.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            segController3.widthAnchor.constraint(equalToConstant: 300),
            segController3.heightAnchor.constraint(equalToConstant: 30)
        ])
        nameKid4Q.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameKid4Q.topAnchor.constraint(equalTo: segController3.bottomAnchor, constant: 50),
            nameKid4Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameKid4Q.widthAnchor.constraint(equalToConstant: 300),
            nameKid4Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            surenameKid4Q.topAnchor.constraint(equalTo: nameKid4Q.bottomAnchor, constant: 15),
            surenameKid4Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            surenameKid4Q.widthAnchor.constraint(equalToConstant: 300),
            surenameKid4Q.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func layoutFormVC9d() {
        shortText2d.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            shortText2d.topAnchor.constraint(equalTo: surenameKid4Q.bottomAnchor, constant: 10),
            shortText2d.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortText2d.widthAnchor.constraint(equalToConstant: 300),
            shortText2d.heightAnchor.constraint(equalToConstant: 30)
        ])
        segController4.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segController4.topAnchor.constraint(equalTo: shortText2d.bottomAnchor, constant: 10),
            segController4.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            segController4.widthAnchor.constraint(equalToConstant: 300),
            segController4.heightAnchor.constraint(equalToConstant: 30)
        ])
        }
    func layoutFormVC9e() {
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: segController.bottomAnchor, constant: 25),
            nextButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: segController.bottomAnchor, constant: 25),
            backButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
