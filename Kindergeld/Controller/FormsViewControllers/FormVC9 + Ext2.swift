//
//  FormVC9 + Ext2.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 22.12.21.
//

import UIKit

extension FormVC9 {
    func configSeQc() {
        shortText2c.text = "3. dieťa je:"
        shortText2c.textColor = .label
        scrollView.addSubview(shortText2c)
      
        let items = ["Boy", "Girl"]
        segController3 = UISegmentedControl(items: items)
        segController3.selectedSegmentIndex = 0
        segController3.addTarget(self, action: #selector(saveSexc), for: .valueChanged)
        scrollView.addSubview(segController3)
    }
    @objc func saveSexc(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sOfKid = "Man"
        case 1:
            sOfKid = "Woman"
        default:
            sOfKid = "Man"
        }
        print(sOfKid!)
    }
    //    func threeKidsRestHide() {
    //        nameKid2Q.isHidden = false
    //        surenameKid2Q.isHidden = false
    //        shortText2b.isHidden = false
    //        segController2.isHidden = false
    //
    //        nameKid3Q.isHidden = false
    //        surenameKid3Q.isHidden = false
    //        shortText2c.isHidden = false
    //        segController3.isHidden = false
    //    }
    func threeKidsRestHide() {
        nameKid4Q.isHidden = true
        surenameKid4Q.isHidden = true
        shortText2d.isHidden = true
        segController4.isHidden = true
    }
    // Questions 4. Kid
    func configQ10d() {
        scrollView.addSubview(nameKid4Q)
        nameKid4Q.keyboardType = .alphabet
        scrollView.addSubview(surenameKid4Q)
        surenameKid4Q.keyboardType = .alphabet
    }
    func configSeQd() {
        shortText2d.text = "4. Child is:"
        shortText2d.textColor = .label
        scrollView.addSubview(shortText2d)
        let items = ["Boy", "Girl"]
        segController4 = UISegmentedControl(items: items)
        segController4.selectedSegmentIndex = 0
        segController4.addTarget(self, action: #selector(saveSexd), for: .valueChanged)
        scrollView.addSubview(segController4)
    }
    @objc func saveSexd(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sOfKid = "Man"
        case 1:
            sOfKid = "Woman"
        default:
            sOfKid = "Man"
        }
        print(sOfKid!)
    }
    func fourKidsRestHide() {
        nameKid2Q.isHidden = false
        surenameKid2Q.isHidden = false
        shortText2b.isHidden = false
        segController2.isHidden = false
        nameKid3Q.isHidden = false
        surenameKid3Q.isHidden = false
        shortText2c.isHidden = false
        segController3.isHidden = false
    }
    func configQ10() {
        scrollView.addSubview(nameKidQ)
        nameKidQ.keyboardType = .alphabet
        scrollView.addSubview(surenameKidQ)
        surenameKidQ.keyboardType = .alphabet
    }
    func configSeQ() {
        shortText2.text = "Child is:"
        shortText2.textColor = .label
        scrollView.addSubview(shortText2)
        let items = ["Boy", "Girl"]
        segController = UISegmentedControl(items: items)
        segController.selectedSegmentIndex = 0
        segController.addTarget(self, action: #selector(saveSex), for: .valueChanged)
        scrollView.addSubview(segController)
    }
    @objc func saveSex(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sOfKid = "Man"
        case 1:
            sOfKid = "Woman"
        default:
            sOfKid = "Man"
        }
        print(sOfKid!)
    }
    func configNextButton() {
        scrollView.addSubview(nextButton)
        nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
    }
    func configBackButton() {
        scrollView.addSubview(backButton)
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
    }
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    @objc func saveDataAndGoNext() {
        let nextVC = FormVC11()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
