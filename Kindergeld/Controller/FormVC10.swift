//
//  FormVC10.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 05/09/2021.
//

import UIKit

class FormVC10: UIViewController, UIScrollViewDelegate {
    
    
    
    
    let titleKG = UILabel()
    let subTitle = UILabel()
let nameKidQ = KGTextField(placeholder: "Krstné meno dieťaťa")
    let surenameKidQ = KGTextField(placeholder: "Priezvisko dieťaťa")
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

    
    
    
    
    
    
    var nOfKids : String?
    var sOfKid : String?
    let scrollView = UIScrollView()
    let nameKid1Q = KGTextField(placeholder: "Krstné meno 1. dieťaťa")
    let surenameKid1Q = KGTextField(placeholder: "Priezvisko 1. dieťaťa")
    
    let nameKid2Q = KGTextField(placeholder: "Krstné meno 2. dieťaťa")
    let surenameKid2Q = KGTextField(placeholder: "Priezvisko 2. dieťaťa")
    
    let nameKid3Q = KGTextField(placeholder: "Krstné meno 3. dieťaťa")
    let surenameKid3Q = KGTextField(placeholder: "Priezvisko 3. dieťaťa")
    
    let nameKid4Q = KGTextField(placeholder: "Krstné meno 4. dieťaťa")
    let surenameKid4Q = KGTextField(placeholder: "Priezvisko 4. dieťaťa")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configScrollView()
        configTitle()
        configSubTitle()
        numberOfKids()

        configQ10a()
        configSeQa()
        
        configQ10b()
        configSeQb()
        
//        configNextButton()
//        configBackButton()
        
        
    }
    
    
    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
    }
    
    func configScrollView() {
        view.addSubview(scrollView)

        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: view.frame.size.width, height:view.frame.size.height + 400)
    }
    
    func configTitle() {
        scrollView.addSubview(titleKG)
        
        titleKG.text = "Hlavná žiadosť - (KG1)"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
        
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: -40),
            
            titleKG.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
            
        ])
    }
    
    func configSubTitle() {
        scrollView.addSubview(subTitle)
        
        subTitle.text = "Údaje o dieťati na ktoré žiadaš prídavky"
        subTitle.font = UIFont(name: "Times New Roman", size: 22)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
        
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 5),
            subTitle.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            subTitle.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
        ])
    }
    
    func numberOfKids() {
        
        shortText1.text = "Počet detí pre ktoré žiadaš o prídavky:"
        shortText1.textColor = .label
        scrollView.addSubview(shortText1)
        
        NSLayoutConstraint.activate([
            shortText1.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            shortText1.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            shortText1.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            shortText1.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        let items = ["1", "2", "3", "4"]
        segKidController = UISegmentedControl(items: items)
        segKidController.selectedSegmentIndex = 0
        segKidController.addTarget(self, action: #selector(numberOfKidsRequest), for: .valueChanged)
        
        
        scrollView.addSubview(segKidController)
        
        segKidController.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segKidController.topAnchor.constraint(equalTo: shortText1.bottomAnchor, constant: 10),
            segKidController.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 50),
            segKidController.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -50),
            segKidController.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    @objc func numberOfKidsRequest(sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            nOfKids = "1"
        case 1:
            nOfKids = "2"
        case 2:
            nOfKids = "3"
        case 3:
            nOfKids = "4"
            
            
        default:
            nOfKids = "1"
        }
        print(nOfKids!)
    }
    
       
    //Questions 1. Kid
    
    func configQ10a() {
        
        scrollView.addSubview(nameKid1Q)
        
        nameKid1Q.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            nameKid1Q.topAnchor.constraint(equalTo: segKidController.bottomAnchor, constant: 20),
            nameKid1Q.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            nameKid1Q.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
            nameKid1Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        scrollView.addSubview(surenameKid1Q)
        
        surenameKid1Q.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            surenameKid1Q.topAnchor.constraint(equalTo: nameKid1Q.bottomAnchor, constant: 15),
            surenameKid1Q.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            surenameKid1Q.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
            surenameKid1Q.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configSeQa() {
      
        shortText2a.text = "Dieťa je:"
        shortText2a.textColor = .label
        scrollView.addSubview(shortText2a)
        
        
        NSLayoutConstraint.activate([
            shortText2a.topAnchor.constraint(equalTo: surenameKid1Q.bottomAnchor, constant: 20),
            shortText2a.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            shortText2a.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -50),
            shortText2a.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        let items = ["Chlapec", "Dievča"]
        segController1 = UISegmentedControl(items: items)
        segController1.selectedSegmentIndex = 0
        segController1.addTarget(self, action: #selector(saveSexa), for: .valueChanged)
        
        
        scrollView.addSubview(segController1)
        
        segController1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segController1.topAnchor.constraint(equalTo: shortText2a.bottomAnchor, constant: 10),
            segController1.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 50),
            segController1.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -50),
            segController1.heightAnchor.constraint(equalToConstant: 30)
        ])
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
    
    
    
    //Questions 2. Kid
    
    
    func configQ10b() {
        
        scrollView.addSubview(nameKid2Q)
        
        nameKid2Q.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            nameKid2Q.topAnchor.constraint(equalTo: segController1.bottomAnchor, constant: 20),
            nameKid2Q.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            nameKid2Q.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
            nameKid2Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        scrollView.addSubview(surenameKid2Q)
        
        surenameKid2Q.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            surenameKid2Q.topAnchor.constraint(equalTo: nameKid2Q.bottomAnchor, constant: 15),
            surenameKid2Q.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            surenameKid2Q.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
            surenameKid2Q.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configSeQb() {
      
        shortText2b.text = "Dieťa je:"
        shortText2b.textColor = .label
        scrollView.addSubview(shortText2b)
        
        
        NSLayoutConstraint.activate([
            shortText2b.topAnchor.constraint(equalTo: surenameKid2Q.bottomAnchor, constant: 10),
            shortText2b.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            shortText2b.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -50),
            shortText2b.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        let items = ["Chlapec", "Dievča"]
        segController2 = UISegmentedControl(items: items)
        segController2.selectedSegmentIndex = 0
        segController2.addTarget(self, action: #selector(saveSexb), for: .valueChanged)
        
        
        scrollView.addSubview(segController2)
        
        segController2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segController2.topAnchor.constraint(equalTo: shortText2b.bottomAnchor, constant: 10),
            segController2.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 50),
            segController2.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -50),
            segController2.heightAnchor.constraint(equalToConstant: 30)
        ])
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
    
    
    
    
    
    func configQ10() {
        
        scrollView.addSubview(nameKidQ)
        
        nameKidQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            nameKidQ.topAnchor.constraint(equalTo: segKidController.bottomAnchor, constant: 25),
            nameKidQ.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            nameKidQ.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
            nameKidQ.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        scrollView.addSubview(surenameKidQ)
        
        surenameKidQ.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            surenameKidQ.topAnchor.constraint(equalTo: nameKidQ.bottomAnchor, constant: 15),
            surenameKidQ.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            surenameKidQ.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
            surenameKidQ.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configSeQ() {
      
        shortText2.text = "Dieťa je:"
        shortText2.textColor = .label
        scrollView.addSubview(shortText2)
        
        
        NSLayoutConstraint.activate([
            shortText2.topAnchor.constraint(equalTo: surenameKidQ.bottomAnchor, constant: 20),
            shortText2.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            shortText2.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -50),
            shortText2.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        let items = ["Chlapec", "Dievča"]
        segController = UISegmentedControl(items: items)
        segController.selectedSegmentIndex = 0
        segController.addTarget(self, action: #selector(saveSex), for: .valueChanged)
        
        
        scrollView.addSubview(segController)
        
        segController.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segController.topAnchor.constraint(equalTo: shortText2.bottomAnchor, constant: 10),
            segController.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 50),
            segController.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -50),
            segController.heightAnchor.constraint(equalToConstant: 30)
        ])
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
        let nextButton = KGButton(title: "ďalej ->>")
        scrollView.addSubview(nextButton)
        
                nextButton.addTarget(self, action: #selector(saveDataAndGoNext), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: segController.bottomAnchor, constant: 25),
            nextButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 200),
            nextButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -15),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    
    func configBackButton() {
        let backButton = KGButton(title: "<<- späť")
        scrollView.addSubview(backButton)
        
                backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: segController.bottomAnchor, constant: 25),
            backButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            backButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -200),
            backButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
        
    }


@objc func saveDataAndGoNext() {
    
    
    
    
    let nextVC = FormVC11()
    navigationController?.pushViewController(nextVC, animated: true)
        
    
}
}
extension FormVC10: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
}
