//
//  FormVC9.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 05/09/2021.
//

import UIKit
class FormVC9: UIViewController {
    let helpButton = KGHelpButton(title: "        Help")
    let titleKG = UILabel()
    let subTitle = UILabel()
    let nameKidQ = KGTextField(placeholder: "First Name of Child")
    let surenameKidQ = KGTextField(placeholder: "Name of Child")
    let shortText1 = KGTextLabel()
    let shortText2 = KGTextLabel()
    let shortText2a = KGTextLabel()
    let shortText2b = KGTextLabel()
    let shortText2c = KGTextLabel()
    let shortText2d = KGTextLabel()
    var segController = UISegmentedControl()
    var segController1 = UISegmentedControl()
    var segController2 = UISegmentedControl()
    var segController3 = UISegmentedControl()
    var segController4 = UISegmentedControl()
    var segKidController = UISegmentedControl()
    var nOfKids: String?
    var sOfKid: String?
    let scrollView = UIScrollView()
    let nameKid1Q = KGTextField(placeholder: "First name of 1. Child")
    let surenameKid1Q = KGTextField(placeholder: "Name of 1. Child")
    let nameKid2Q = KGTextField(placeholder: "First name of 2. Child")
    let surenameKid2Q = KGTextField(placeholder: "Name of 2. Child")
    let nameKid3Q = KGTextField(placeholder: "First name of 3. Child")
    let surenameKid3Q = KGTextField(placeholder: "Name of 3. Child")
    let nameKid4Q = KGTextField(placeholder: "First name of 4. Child")
    let surenameKid4Q = KGTextField(placeholder: "Name of 4. Child")
    let textLabel = UILabel()
    let shortLabel = KGTextLabel()
    let nextButton = KGButton(title: "next ->>")
    let backButton = KGButton(title: "<<- back")
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configHelpBtn()
        configScrollView()
        configTitle()
        configSubTitle()
        configNumberOfKids()
        configQ10a()
        configSeQa()
        //        configNextButton()
        //        configBackButton()
        layoutFormVC9a()
        layoutFormVC9b()
//        layoutFormVC9c()
//        layoutFormVC9d()
//        layoutFormVC9e()
    }
    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
    }
    func configScrollView() {
        view.addSubview(scrollView)
        scrollView.frame = view.bounds
        scrollView.contentSize =  CGSize(width: view.frame.width, height: view.frame.height)
    }
    func configHelpBtn() {
        view.addSubview(helpButton)
        helpButton.addTarget(self, action: #selector(showExplanation), for: .touchUpInside)
    }
    func configTitle() {
        scrollView.addSubview(titleKG)
        titleKG.text = "Application for Child Benefit"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
    }
    func configSubTitle() {
        scrollView.addSubview(subTitle)
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
        scrollView.addSubview(shortLabel)
        shortLabel.text = "For how many chidren you apply:"
        shortLabel.textColor = .label
        let items = ["1", "2", "3", "4"]
        segKidController = UISegmentedControl(items: items)
        segKidController.selectedSegmentIndex = 0
        segKidController.addTarget(self, action: #selector(numberOfKidsRequest), for: .valueChanged)
        scrollView.addSubview(segKidController)
    }
    @objc func numberOfKidsRequest(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            nOfKids = "1"
            hide2and3and4Kid()
        case 1:
            nOfKids = "2"
            configQ10b()
            configSeQb()
            hide3and4Kid()
            scrollView.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 200)
        case 2:
            nOfKids = "3"
            configQ10b()
            configSeQb()
            configQ10c()
            configSeQc()
            scrollView.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 300)
            hide4Kid()
        case 3:
            nOfKids = "4"
            configQ10b()
            configSeQb()
            configQ10c()
            configSeQc()
            configQ10d()
            configSeQd()
            scrollView.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 450)
        default:
            nOfKids = "1"
        }
        print(nOfKids!)
    }
    func hide4Kid() {
        nameKid4Q.isHidden = true
        surenameKid4Q.isHidden = true
        shortText2d.isHidden = true
        segController4.isHidden = true
    }
    func hide3and4Kid() {
        hide4Kid()
        nameKid3Q.isHidden = true
        surenameKid3Q.isHidden = true
        shortText2c.isHidden = true
        segController2.isHidden = true
    }
    func hide2and3and4Kid() {
        hide3and4Kid()
        nameKid2Q.isHidden = true
        surenameKid2Q.isHidden = true
        shortText2b.isHidden = true
        segController.isHidden = true
    }
    // Questions 1. Kid
    func configQ10a() {
        scrollView.addSubview(nameKid1Q)
        nameKid1Q.keyboardType = .alphabet
        scrollView.addSubview(surenameKid1Q)
        surenameKid1Q.keyboardType = .alphabet
    }
    func configSeQa() {
        shortText2a.text = "1. child is:"
        shortText2a.textColor = .label
        scrollView.addSubview(shortText2a)
        let items = ["Boy", "Girl"]
        segController1 = UISegmentedControl(items: items)
        segController1.selectedSegmentIndex = 0
        segController1.addTarget(self, action: #selector(saveSexa), for: .valueChanged)
        scrollView.addSubview(segController1)
    }
    @objc func saveSexa(sender: UISegmentedControl) {
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
    // Questions 2. Kid
    func configQ10b() {
        scrollView.addSubview(nameKid2Q)
        nameKid2Q.keyboardType = .alphabet
        scrollView.addSubview(surenameKid2Q)
        surenameKid2Q.keyboardType = .alphabet
        NSLayoutConstraint.activate([
            surenameKid2Q.topAnchor.constraint(equalTo: nameKid2Q.bottomAnchor, constant: 15),
            surenameKid2Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            surenameKid2Q.widthAnchor.constraint(equalToConstant: 300),
            surenameKid2Q.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configSeQb() {
        shortText2b.text = "2. child is:"
        shortText2b.textColor = .label
        scrollView.addSubview(shortText2b)
        let items = ["Boy", "Girl"]
        segController2 = UISegmentedControl(items: items)
        segController2.selectedSegmentIndex = 0
        segController2.addTarget(self, action: #selector(saveSexb), for: .valueChanged)
        scrollView.addSubview(segController2)
    }
    @objc func saveSexb(sender: UISegmentedControl) {
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
    func oneKidRestHide() {
        nameKid2Q.isHidden = true
        surenameKid2Q.isHidden = true
        shortText2b.isHidden = true
        segController2.isHidden = true
    }
    func twoKidsRestHide() {
        nameKid2Q.isHidden = false
        surenameKid2Q.isHidden = false
        shortText2b.isHidden = false
        segController2.isHidden = false
    }
    // Questions 3. Kid
    func configQ10c() {
        scrollView.addSubview(nameKid3Q)
        nameKid3Q.keyboardType = .alphabet
        scrollView.addSubview(surenameKid3Q)
        surenameKid3Q.keyboardType = .alphabet
    }
}
extension FormVC9: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
        }
}
