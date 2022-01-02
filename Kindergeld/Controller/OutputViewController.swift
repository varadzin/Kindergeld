//
//  OutputVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//
///
/// In this View will be Output  - PDF Application 
///

import UIKit

class OutputViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configViewController()
}
    func configViewController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
    }
}
