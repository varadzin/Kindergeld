//
//  LanguageVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 26/08/2021.
//
///
/// Language View Controller
///
import UIKit

class LanguageViewController: UIViewController {
    var titleKG = KGTitle()
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
        configTitle()
    }
    func configViewController() {
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .systemBackground
    }
    func configTitle() {
        view.addSubview(titleKG)
        titleKG.text = "Set your Language"
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            titleKG.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
        ])
    }
}
