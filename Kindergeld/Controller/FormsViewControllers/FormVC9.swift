//
//  FormVC9.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 28.12.21.
//

import UIKit

class FormVC9: UIViewController {
    let helpButton = KGHelpButton(title: "        Help")
    let titleKG = UILabel()
    let subTitle = UILabel()
    let shortLabel = KGTextLabel()
    var numberOfKidsSegController = UISegmentedControl()
    var nOfKids: String?
    var sOfKid: String?
    let nameOfFirstKid = KGTextField(placeholder: " First name ")
    let sureNameOfFirstKid = KGTextField(placeholder: " Sure name ")
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configHelpBtn()
        configTitle()
        configSubTitle()
        configNumberOfKids()
        configNameOfFirstKid()
        layoutFormVC9()
    }
    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
    }
    func configHelpBtn() {
        view.addSubview(helpButton)
        helpButton.addTarget(self, action: #selector(showExplanation), for: .touchUpInside)
    }
    func configTitle() {
        view.addSubview(titleKG)
        titleKG.text = "Application for Child Benefit"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
    }
    func configSubTitle() {
        view.addSubview(subTitle)
        subTitle.text = "Details of children"
        subTitle.font = UIFont(name: "Times New Roman", size: 22)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
    }
    @objc func showExplanation() {
        let destVC = KGExplainVC()
        destVC.title = "Help"
        let navCon = UINavigationController(rootViewController: destVC)
        present(navCon, animated: true)
    }
    func configNumberOfKids() {
        view.addSubview(shortLabel)
        shortLabel.text = "For how many chidren you apply:"
        shortLabel.textColor = .label
        let items = ["1", "2", "3", "4"]
        numberOfKidsSegController = UISegmentedControl(items: items)
        numberOfKidsSegController.selectedSegmentIndex = 0
        numberOfKidsSegController.addTarget(self, action: #selector(numberOfKidsRequest), for: .valueChanged)
        view.addSubview(numberOfKidsSegController)
            shortLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfKidsSegController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            shortLabel.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 5),
            shortLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            shortLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16),
            numberOfKidsSegController.topAnchor.constraint(equalTo: shortLabel.bottomAnchor, constant: 10),
            numberOfKidsSegController.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            numberOfKidsSegController.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16)
        ])
        }
    @objc func numberOfKidsRequest(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            nOfKids = "1"
            hide2and3and4Kid()
        case 1:
            nOfKids = "2"
//            configQ10b()
//            configSeQb()
//            hide3and4Kid()
//            view.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 200)
        case 2:
            nOfKids = "3"
//            configQ10b()
//            configSeQb()
//            configQ10c()
//            configSeQc()
//            view.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 300)
            hide4Kid()
        case 3:
            nOfKids = "4"
//            configQ10b()
//            configSeQb()
//            configQ10c()
//            configSeQc()
//            configQ10d()
//            configSeQd()
//            view.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 450)
        default:
            nOfKids = "1"
        }
        print(nOfKids!)
    }
    func hide4Kid() {
//        nameKid4Q.isHidden = true
//        surenameKid4Q.isHidden = true
//        shortText2d.isHidden = true
//        segController4.isHidden = true
    }
    func hide3and4Kid() {
        hide4Kid()
//        nameKid3Q.isHidden = true
//        surenameKid3Q.isHidden = true
//        shortText2c.isHidden = true
//        segController2.isHidden = true
    }
    func hide2and3and4Kid() {
        hide3and4Kid()
//        nameKid2Q.isHidden = true
//        surenameKid2Q.isHidden = true
//        shortText2b.isHidden = true
//        segController.isHidden = true
    }
    func configNameOfFirstKid() {
        view.addSubview(nameOfFirstKid)
        nameOfFirstKid.keyboardType = .alphabet
        nameOfFirstKid.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sureNameOfFirstKid)
        sureNameOfFirstKid.keyboardType = .alphabet
        sureNameOfFirstKid.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameOfFirstKid.topAnchor.constraint(equalTo: numberOfKidsSegController.bottomAnchor, constant: 10),
            nameOfFirstKid.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameOfFirstKid.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16),
            nameOfFirstKid.heightAnchor.constraint(equalToConstant: 50),
            sureNameOfFirstKid.topAnchor.constraint(equalTo: nameOfFirstKid.bottomAnchor, constant: 5),
            sureNameOfFirstKid.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sureNameOfFirstKid.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 15/16),
            sureNameOfFirstKid.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
