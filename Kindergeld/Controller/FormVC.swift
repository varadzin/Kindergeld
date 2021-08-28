//
//  FormVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class FormVC: UIViewController, UIScrollViewDelegate {

    let scrollView = UIScrollView()
    let titleKG = UILabel()
    let subTitle = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configVC()
        configScrollView()
        configTitle()
        configSubTitle()

    }
    
    func configVC() {
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
      }
    
    
    func configScrollView() {
        view.addSubview(scrollView)

        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: view.frame.size.width, height:view.frame.size.height)

 }
    
    func configTitle() {
        scrollView.addSubview(titleKG)
        
        titleKG.text = "Formulár 1"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
  
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: -30),
            
            titleKG.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            titleKG.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 15/16)
 
        ])
    }
    
    func configSubTitle() {
        scrollView.addSubview(subTitle)
        
        subTitle.text = "Hlavná žiadosť - Antrag auf Kindergeld (KG1)"
        subTitle.font = UIFont(name: "Times New Roman", size: 14)
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
    
}
