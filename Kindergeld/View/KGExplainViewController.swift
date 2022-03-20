//
//  KGExplainViewController.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 28/08/2021.
//

import UIKit

// Explanation Button - if you need more info about topic

class KGExplainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configDoneButton()
    }
    func configDoneButton() {
        let doneButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(dismissViewController))
        navigationItem.rightBarButtonItem = doneButton
        }
    @objc func dismissViewController() {
        dismiss(animated: true)
    }

}
