//
//  OutputVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class OutputVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()

    }
    
    func configVC() {
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
    }
    
}
