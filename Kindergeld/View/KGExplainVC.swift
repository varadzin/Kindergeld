//
//  KGExplainVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 28/08/2021.
//

import UIKit

class KGExplainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configDoneBtn()
    }
    
    func configDoneBtn() {
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }

}
