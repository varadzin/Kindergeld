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
    let shortText1 = UILabel()
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
   
        helpButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            helpButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            helpButton.widthAnchor.constraint(equalToConstant: 100),
            helpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            helpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    
    
    
    
    
    }
    
    func configTitle() {
        scrollView.addSubview(titleKG)
        
        titleKG.text = "Application for Child Benefit"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
        
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: helpButton.bottomAnchor, constant: 5),
            
            titleKG.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
            
        ])
    }
    
    func configSubTitle() {
        scrollView.addSubview(subTitle)
        
        subTitle.text = "Details of children"
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
        
        NSLayoutConstraint.activate([
            shortLabel.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            shortLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortLabel.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        let items = ["1", "2", "3", "4"]
                segKidController = UISegmentedControl(items: items)
                segKidController.selectedSegmentIndex = 0
                segKidController.addTarget(self, action: #selector(numberOfKidsRequest), for: .valueChanged)
        
        
                scrollView.addSubview(segKidController)
        
                segKidController.translatesAutoresizingMaskIntoConstraints = false
        
                NSLayoutConstraint.activate([
                    segKidController.topAnchor.constraint(equalTo: shortLabel.bottomAnchor, constant: 10),
                    segKidController.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
                    segKidController.widthAnchor.constraint(equalToConstant: 300)
                ])
        
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
    
    
    //Questions 1. Kid
    
    func configQ10a() {
        
        scrollView.addSubview(nameKid1Q)
        
        nameKid1Q.keyboardType = .alphabet
        
        nameKid1Q.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameKid1Q.topAnchor.constraint(equalTo: segKidController.bottomAnchor, constant: 20),
            nameKid1Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameKid1Q.widthAnchor.constraint(equalToConstant: 300),
            nameKid1Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        scrollView.addSubview(surenameKid1Q)
        
        surenameKid1Q.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            surenameKid1Q.topAnchor.constraint(equalTo: nameKid1Q.bottomAnchor, constant: 15),
            surenameKid1Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            surenameKid1Q.widthAnchor.constraint(equalToConstant: 300),
            surenameKid1Q.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configSeQa() {
      
        shortText2a.text = "1. child is:"
        shortText2a.textColor = .label
        scrollView.addSubview(shortText2a)
        
        
        shortText2a.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            shortText2a.topAnchor.constraint(equalTo: surenameKid1Q.bottomAnchor, constant: 20),
            shortText2a.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortText2a.widthAnchor.constraint(equalToConstant: 300),
            shortText2a.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        let items = ["Boy", "Girl"]
        segController1 = UISegmentedControl(items: items)
        segController1.selectedSegmentIndex = 0
        segController1.addTarget(self, action: #selector(saveSexa), for: .valueChanged)
        
        
        scrollView.addSubview(segController1)
        
        segController1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segController1.topAnchor.constraint(equalTo: shortText2a.bottomAnchor, constant: 10),
            segController1.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            segController1.widthAnchor.constraint(equalToConstant: 300),
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
        
        nameKid2Q.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameKid2Q.topAnchor.constraint(equalTo: segController1.bottomAnchor, constant: 50),
            nameKid2Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameKid2Q.widthAnchor.constraint(equalToConstant: 300),
            nameKid2Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
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
        
        
        shortText2b.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            shortText2b.topAnchor.constraint(equalTo: surenameKid2Q.bottomAnchor, constant: 10),
            shortText2b.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortText2b.widthAnchor.constraint(equalToConstant: 300),
            shortText2b.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        let items = ["Boy", "Girl"]
        segController2 = UISegmentedControl(items: items)
        segController2.selectedSegmentIndex = 0
        segController2.addTarget(self, action: #selector(saveSexb), for: .valueChanged)
        
        
        scrollView.addSubview(segController2)
        
        segController2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segController2.topAnchor.constraint(equalTo: shortText2b.bottomAnchor, constant: 10),
            segController2.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            segController2.widthAnchor.constraint(equalToConstant: 300),
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
    
    //Questions 3. Kid
    
    
    func configQ10c() {
        
        scrollView.addSubview(nameKid3Q)
      
        nameKid3Q.keyboardType = .alphabet
        
        nameKid3Q.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameKid3Q.topAnchor.constraint(equalTo: segController2.bottomAnchor, constant: 50),
            nameKid3Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameKid3Q.widthAnchor.constraint(equalToConstant: 300),
            nameKid3Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        scrollView.addSubview(surenameKid3Q)
        
        surenameKid3Q.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            surenameKid3Q.topAnchor.constraint(equalTo: nameKid3Q.bottomAnchor, constant: 15),
            surenameKid3Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            surenameKid3Q.widthAnchor.constraint(equalToConstant: 300),
            surenameKid3Q.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configSeQc() {
      
        shortText2c.text = "3. dieťa je:"
        shortText2c.textColor = .label
        scrollView.addSubview(shortText2c)
        
        
        shortText2c.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            shortText2c.topAnchor.constraint(equalTo: surenameKid3Q.bottomAnchor, constant: 10),
            shortText2c.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortText2c.widthAnchor.constraint(equalToConstant: 300),
            shortText2c.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        let items = ["Boy", "Girl"]
        segController3 = UISegmentedControl(items: items)
        segController3.selectedSegmentIndex = 0
        segController3.addTarget(self, action: #selector(saveSexc), for: .valueChanged)
        
        
        scrollView.addSubview(segController3)
        
        segController3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segController3.topAnchor.constraint(equalTo: shortText2c.bottomAnchor, constant: 10),
            segController3.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            segController3.widthAnchor.constraint(equalToConstant: 300),
            segController3.heightAnchor.constraint(equalToConstant: 30)
        ])
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
    
    //Questions 4. Kid
    
    func configQ10d() {
        
        scrollView.addSubview(nameKid4Q)
      
        nameKid4Q.keyboardType = .alphabet
        
        nameKid4Q.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameKid4Q.topAnchor.constraint(equalTo: segController3.bottomAnchor, constant: 50),
            nameKid4Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameKid4Q.widthAnchor.constraint(equalToConstant: 300),
            nameKid4Q.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        scrollView.addSubview(surenameKid4Q)
        
        surenameKid4Q.keyboardType = .alphabet
        
        NSLayoutConstraint.activate([
            surenameKid4Q.topAnchor.constraint(equalTo: nameKid4Q.bottomAnchor, constant: 15),
            surenameKid4Q.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            surenameKid4Q.widthAnchor.constraint(equalToConstant: 300),
            surenameKid4Q.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configSeQd() {
      
        shortText2d.text = "4. Child is:"
        shortText2d.textColor = .label
        scrollView.addSubview(shortText2d)
        
        
        shortText2d.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            shortText2d.topAnchor.constraint(equalTo: surenameKid4Q.bottomAnchor, constant: 10),
            shortText2d.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            shortText2d.widthAnchor.constraint(equalToConstant: 300),
            shortText2d.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        let items = ["Boy", "Girl"]
        segController4 = UISegmentedControl(items: items)
        segController4.selectedSegmentIndex = 0
        segController4.addTarget(self, action: #selector(saveSexd), for: .valueChanged)
        
        
        scrollView.addSubview(segController4)
        
        segController4.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segController4.topAnchor.constraint(equalTo: shortText2d.bottomAnchor, constant: 10),
            segController4.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            segController4.widthAnchor.constraint(equalToConstant: 300),
            segController4.heightAnchor.constraint(equalToConstant: 30)
        ])
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
        
        NSLayoutConstraint.activate([
            nameKidQ.topAnchor.constraint(equalTo: segKidController.bottomAnchor, constant: 25),
            nameKidQ.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            nameKidQ.widthAnchor.constraint(equalToConstant: 300),
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
      
        shortText2.text = "Child is:"
        shortText2.textColor = .label
        scrollView.addSubview(shortText2)
        
        
        NSLayoutConstraint.activate([
            shortText2.topAnchor.constraint(equalTo: surenameKidQ.bottomAnchor, constant: 20),
            shortText2.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 15),
            shortText2.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -50),
            shortText2.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        
        let items = ["Boy", "Girl"]
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
        let nextButton = KGButton(title: "next ->>")
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
        let backButton = KGButton(title: "<<- back")
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
extension FormVC9: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveDataAndGoNext()
        return true
    }
}
