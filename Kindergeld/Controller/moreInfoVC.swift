//
//  moreInfoVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 22/08/2021.
//

import UIKit

class MoreInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     configVC()
    }
    

    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
      }
}
