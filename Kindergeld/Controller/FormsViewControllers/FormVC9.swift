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
    var sexOfFirstChildSegController = UISegmentedControl()
    var sexOfSecondChildSegController = UISegmentedControl()
    var sexOfThirdChildSegController = UISegmentedControl()
    var sexOfFourthChildSegController = UISegmentedControl()
    var nOfKids: String?
    var sOfKid: String?
    let nameOfFirstKid = KGTextField(placeholder: " First name ")
    let sureNameOfFirstKid = KGTextField(placeholder: " Sure name ")
    let nameOfSecondKid = KGTextField(placeholder: " First name ")
    let sureNameOfSecondKid = KGTextField(placeholder: " Sure name ")
    let nameOfThirdKid = KGTextField(placeholder: " First name ")
    let sureNameOfThirdKid = KGTextField(placeholder: " Sure name ")
    let nameOfFourthKid = KGTextField(placeholder: " First name ")
    let sureNameOfFourthKid = KGTextField(placeholder: " Sure name ")
    let labelFirstChild = UILabel()
    let labelSecondChild = UILabel()
    let labelThirdChild = UILabel()
    let labelFourthChild = UILabel()
    let scrollView = UIScrollView()
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configScrollView()
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
        shortLabel.text = "How many children you apply Benefit for:"
        shortLabel.textColor = .label
        let items = ["1", "2", "3", "4"]
        numberOfKidsSegController = UISegmentedControl(items: items)
        numberOfKidsSegController.selectedSegmentIndex = 0
        numberOfKidsSegController.addTarget(self, action: #selector(numberOfKidsRequest), for: .valueChanged)
        scrollView.addSubview(numberOfKidsSegController)
        shortLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfKidsSegController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            shortLabel.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 5),
            shortLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            numberOfKidsSegController.topAnchor.constraint(equalTo: shortLabel.bottomAnchor, constant: 10),
            numberOfKidsSegController.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            numberOfKidsSegController.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
        ])
    }
    @objc func numberOfKidsRequest(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            nOfKids = "1"
            hide2and3and4Kid()
        case 1:
            nOfKids = "2"
            configNameOfSecondKid()
            unhide2Kid()
            hide3and4Kid()
            scrollView.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 200)
        case 2:
            nOfKids = "3"
            configNameOfSecondKid()
            unhide2Kid()
            configNameOfThirdKid()
            unhide3Kid()
            hide4Kid()
            scrollView.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 300)
        case 3:
            nOfKids = "4"
            configNameOfFourthKid()
            unhide2Kid()
            unhide3Kid()
            unhide4Kid()
            scrollView.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 450)
        default:
            nOfKids = "1"
        }
        print(nOfKids!)
    }
    func hide4Kid() {
        labelFourthChild.isHidden = true
        nameOfFourthKid.isHidden = true
        sureNameOfFourthKid.isHidden = true
    }
    func hide3and4Kid() {
        hide4Kid()
        labelThirdChild.isHidden = true
        nameOfThirdKid.isHidden = true
        sureNameOfThirdKid.isHidden = true
        }
    func hide2and3and4Kid() {
        labelSecondChild.isHidden = true
        nameOfSecondKid.isHidden = true
        sureNameOfSecondKid.isHidden = true
        labelThirdChild.isHidden = true
        nameOfThirdKid.isHidden = true
        sureNameOfThirdKid.isHidden = true
        labelFourthChild.isHidden = true
        nameOfFourthKid.isHidden = true
        sureNameOfFourthKid.isHidden = true
    }
    func unhide2Kid() {
        labelSecondChild.isHidden = false
        nameOfSecondKid.isHidden = false
        sureNameOfSecondKid.isHidden = false
    }
    func unhide3Kid() {
        labelThirdChild.isHidden = false
        nameOfThirdKid.isHidden = false
        sureNameOfThirdKid.isHidden = false
    }
    func unhide4Kid() {
        labelFourthChild.isHidden = false
        nameOfFourthKid.isHidden = false
        sureNameOfFourthKid.isHidden = false
    }
    func configNameOfFirstKid() {
        scrollView.addSubview(labelFirstChild)
        labelFirstChild.text = "1. Child is: "
        labelFirstChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sexOfFirstChildSegController)
        sexOfFirstChildSegController.translatesAutoresizingMaskIntoConstraints = false
        let items = ["Boy", "Girl"]
        sexOfFirstChildSegController = UISegmentedControl(items: items)
        sexOfFirstChildSegController.selectedSegmentIndex = 0
        sexOfFirstChildSegController.addTarget(self, action: #selector(numberOfKidsRequest), for: .valueChanged)
        scrollView.addSubview(nameOfFirstKid)
        nameOfFirstKid.keyboardType = .alphabet
        nameOfFirstKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfFirstKid)
        sureNameOfFirstKid.keyboardType = .alphabet
        sureNameOfFirstKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelFirstChild.topAnchor.constraint(equalTo: numberOfKidsSegController.bottomAnchor, constant: 10),
            labelFirstChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelFirstChild.widthAnchor.constraint(equalToConstant: 200),
            labelFirstChild.heightAnchor.constraint(equalToConstant: 40),
            nameOfFirstKid.topAnchor.constraint(equalTo: labelFirstChild.bottomAnchor),
            nameOfFirstKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameOfFirstKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            nameOfFirstKid.heightAnchor.constraint(equalToConstant: 50),
            sureNameOfFirstKid.topAnchor.constraint(equalTo: nameOfFirstKid.bottomAnchor, constant: 5),
            sureNameOfFirstKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            sureNameOfFirstKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            sureNameOfFirstKid.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configNameOfSecondKid() {
        scrollView.addSubview(labelSecondChild)
        labelSecondChild.text = "2. Child"
        labelSecondChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(nameOfSecondKid)
        nameOfSecondKid.keyboardType = .alphabet
        nameOfSecondKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfSecondKid)
        sureNameOfSecondKid.keyboardType = .alphabet
        sureNameOfSecondKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelSecondChild.topAnchor.constraint(equalTo: sureNameOfFirstKid.bottomAnchor, constant: 10),
            labelSecondChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelSecondChild.widthAnchor.constraint(equalToConstant: 200),
            labelSecondChild.heightAnchor.constraint(equalToConstant: 40),
            nameOfSecondKid.topAnchor.constraint(equalTo: labelSecondChild.bottomAnchor, constant: 5),
            nameOfSecondKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameOfSecondKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            nameOfSecondKid.heightAnchor.constraint(equalToConstant: 50),
            sureNameOfSecondKid.topAnchor.constraint(equalTo: nameOfSecondKid.bottomAnchor, constant: 5),
            sureNameOfSecondKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            sureNameOfSecondKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            sureNameOfSecondKid.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configNameOfThirdKid() {
        scrollView.addSubview(labelThirdChild)
        labelThirdChild.text = "3. Child"
        labelThirdChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(nameOfThirdKid)
        nameOfThirdKid.keyboardType = .alphabet
        nameOfThirdKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfThirdKid)
        sureNameOfThirdKid.keyboardType = .alphabet
        sureNameOfThirdKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelThirdChild.topAnchor.constraint(equalTo: sureNameOfSecondKid.bottomAnchor, constant: 10),
            labelThirdChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelThirdChild.widthAnchor.constraint(equalToConstant: 200),
            labelThirdChild.heightAnchor.constraint(equalToConstant: 40),
            nameOfThirdKid.topAnchor.constraint(equalTo: labelThirdChild.bottomAnchor, constant: 5),
            nameOfThirdKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameOfThirdKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            nameOfThirdKid.heightAnchor.constraint(equalToConstant: 50),
            sureNameOfThirdKid.topAnchor.constraint(equalTo: nameOfThirdKid.bottomAnchor, constant: 5),
            sureNameOfThirdKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            sureNameOfThirdKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            sureNameOfThirdKid.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    func configNameOfFourthKid() {
        scrollView.addSubview(labelFourthChild)
        labelFourthChild.text = "4. Child"
        labelFourthChild.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(nameOfFourthKid)
        nameOfFourthKid.keyboardType = .alphabet
        nameOfFourthKid.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(sureNameOfFourthKid)
        sureNameOfFourthKid.keyboardType = .alphabet
        sureNameOfFourthKid.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelFourthChild.topAnchor.constraint(equalTo: sureNameOfThirdKid.bottomAnchor, constant: 10),
            labelFourthChild.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            labelFourthChild.widthAnchor.constraint(equalToConstant: 200),
            labelFourthChild.heightAnchor.constraint(equalToConstant: 40),
            nameOfFourthKid.topAnchor.constraint(equalTo: labelFourthChild.bottomAnchor, constant: 5),
            nameOfFourthKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameOfFourthKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            nameOfFourthKid.heightAnchor.constraint(equalToConstant: 50),
            sureNameOfFourthKid.topAnchor.constraint(equalTo: nameOfFourthKid.bottomAnchor, constant: 5),
            sureNameOfFourthKid.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            sureNameOfFourthKid.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16),
            sureNameOfFourthKid.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
