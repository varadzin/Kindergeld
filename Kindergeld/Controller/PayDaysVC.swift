//
//  PayDaysVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class PayDaysVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
        configVC()

    }
    
    func configVC() {
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
    }
    
}
