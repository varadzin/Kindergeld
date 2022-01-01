//
//  moreInfoVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 22/08/2021.
//

import UIKit

class MoreInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configViewController()
    }
    func configViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
      }
}
