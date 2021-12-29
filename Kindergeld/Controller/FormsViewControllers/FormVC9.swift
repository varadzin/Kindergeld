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
    var boyGirlFirstSegController = UISegmentedControl()
    var boyGirlSecondSegController = UISegmentedControl()
    var boyGirlThirdSegController = UISegmentedControl()
    var boyGirlFourthSegController = UISegmentedControl()
    var sexOfFirstChild: String?
    var sexOfSecondChild: String?
    var sexOfThirdChild: String?
    var sexOfFourthChild: String?
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
       show1KidOnly()
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
    func show1KidOnly() {
        configNameOfFirstKid()
        configBoyGirlSegController1()
        hide2and3and4Kid()
    }
    func show1_2Kids() {
        configNameOfSecondKid()
        configBoyGirlSegController2()
        unhide2Kid()
        hide3and4Kid()
    }
    func show1_2_3Kids() {
        configNameOfSecondKid()
        configBoyGirlSegController2()
        configNameOfThirdKid()
        configBoyGirlSegController3()
        unhide2Kid()
        unhide3Kid()
        hide4Kid()
    }
    func show1_2_3_4Kids() {
        configNameOfSecondKid()
        configBoyGirlSegController2()
        configNameOfThirdKid()
        configBoyGirlSegController3()
        configNameOfFourthKid()
        configBoyGirlSegController4()
        unhide2Kid()
        unhide3Kid()
        unhide4Kid()
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
           show1_2Kids()
            scrollView.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 200)
        case 2:
            nOfKids = "3"
          show1_2_3Kids()
            scrollView.contentSize =  CGSize(width: view.frame.width, height: view.frame.height + 300)
        case 3:
            nOfKids = "4"
          show1_2_3_4Kids()
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
        boyGirlFourthSegController.isHidden = true
    }
    func hide3and4Kid() {
        hide4Kid()
        labelThirdChild.isHidden = true
        nameOfThirdKid.isHidden = true
        sureNameOfThirdKid.isHidden = true
        boyGirlThirdSegController.isHidden = true
    }
    func hide2and3and4Kid() {
        labelSecondChild.isHidden = true
        nameOfSecondKid.isHidden = true
        sureNameOfSecondKid.isHidden = true
        boyGirlSecondSegController.isHidden = true
        hide3and4Kid()
//        labelThirdChild.isHidden = true
//        nameOfThirdKid.isHidden = true
//        sureNameOfThirdKid.isHidden = true
//        labelFourthChild.isHidden = true
//        nameOfFourthKid.isHidden = true
//        sureNameOfFourthKid.isHidden = true
    }
    func unhide2Kid() {
        labelSecondChild.isHidden = false
        nameOfSecondKid.isHidden = false
        sureNameOfSecondKid.isHidden = false
        boyGirlSecondSegController.isHidden = false
    }
    func unhide3Kid() {
        labelThirdChild.isHidden = false
        nameOfThirdKid.isHidden = false
        sureNameOfThirdKid.isHidden = false
        boyGirlThirdSegController.isHidden = false
    }
    func unhide4Kid() {
        labelFourthChild.isHidden = false
        nameOfFourthKid.isHidden = false
        sureNameOfFourthKid.isHidden = false
        boyGirlFourthSegController.isHidden = false
    }
    func configBoyGirlSegController1() {
        let items = ["Boy", "Girl"]
        boyGirlFirstSegController = UISegmentedControl(items: items)
        boyGirlFirstSegController.selectedSegmentIndex = 0
        boyGirlFirstSegController.addTarget(self, action: #selector(configSexOfFirstChild), for: .valueChanged)
        scrollView.addSubview(boyGirlFirstSegController)
        boyGirlFirstSegController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boyGirlFirstSegController.topAnchor.constraint(equalTo: numberOfKidsSegController.bottomAnchor, constant: 25),
            boyGirlFirstSegController.leadingAnchor.constraint(equalTo: labelFirstChild.trailingAnchor, constant: 10),
            boyGirlFirstSegController.widthAnchor.constraint(equalToConstant: 200),
            boyGirlFirstSegController.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    @objc func configSexOfFirstChild(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sexOfFirstChild = "Boy"
        case 1:
            sexOfFirstChild = "Girl"
        default:
            sexOfFirstChild = "Boy"
        }
    }
    func configBoyGirlSegController2() {
        let items = ["Boy", "Girl"]
        boyGirlSecondSegController = UISegmentedControl(items: items)
        boyGirlSecondSegController.selectedSegmentIndex = 0
        boyGirlSecondSegController.addTarget(self, action: #selector(configSexOfSecondChild), for: .valueChanged)
        scrollView.addSubview(boyGirlSecondSegController)
        boyGirlSecondSegController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boyGirlSecondSegController.topAnchor.constraint(equalTo: sureNameOfFirstKid.bottomAnchor, constant: 25),
            boyGirlSecondSegController.leadingAnchor.constraint(equalTo: labelSecondChild.trailingAnchor, constant: 10),
            boyGirlSecondSegController.widthAnchor.constraint(equalToConstant: 200),
            boyGirlSecondSegController.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    @objc func configSexOfSecondChild(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sexOfSecondChild = "Boy"
        case 1:
            sexOfSecondChild = "Girl"
        default:
            sexOfSecondChild = "Boy"
        }
    }
    func configBoyGirlSegController3() {
        let items = ["Boy", "Girl"]
        boyGirlThirdSegController = UISegmentedControl(items: items)
        boyGirlThirdSegController.selectedSegmentIndex = 0
        boyGirlThirdSegController.addTarget(self, action: #selector(configSexOfThirdChild), for: .valueChanged)
        scrollView.addSubview(boyGirlThirdSegController)
        boyGirlThirdSegController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boyGirlThirdSegController.topAnchor.constraint(equalTo: sureNameOfSecondKid.bottomAnchor, constant: 25),
            boyGirlThirdSegController.leadingAnchor.constraint(equalTo: labelThirdChild.trailingAnchor, constant: 10),
            boyGirlThirdSegController.widthAnchor.constraint(equalToConstant: 200),
            boyGirlThirdSegController.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    @objc func configSexOfThirdChild(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sexOfThirdChild = "Boy"
        case 1:
            sexOfThirdChild = "Girl"
        default:
            sexOfThirdChild = "Boy"
        }
    }
    func configBoyGirlSegController4() {
        let items = ["Boy", "Girl"]
        boyGirlFourthSegController = UISegmentedControl(items: items)
        boyGirlFourthSegController.selectedSegmentIndex = 0
        boyGirlFourthSegController.addTarget(self, action: #selector(configSexOfFourthChild), for: .valueChanged)
        scrollView.addSubview(boyGirlFourthSegController)
        boyGirlFourthSegController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boyGirlFourthSegController.topAnchor.constraint(equalTo: sureNameOfThirdKid.bottomAnchor, constant: 25),
            boyGirlFourthSegController.leadingAnchor.constraint(equalTo: labelFourthChild.trailingAnchor, constant: 10),
            boyGirlFourthSegController.widthAnchor.constraint(equalToConstant: 200),
            boyGirlFourthSegController.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    @objc func configSexOfFourthChild(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sexOfFourthChild = "Boy"
        case 1:
            sexOfFourthChild = "Girl"
        default:
            sexOfFourthChild = "Boy"
        }
    }
}
