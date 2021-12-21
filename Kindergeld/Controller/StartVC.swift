//
//  StartVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class StartVC: UIViewController {
    let titleKG = UILabel()
    let subTitle = UILabel()
    let babyImg = UIImageView()
    let coinsImg = UIImageView()
    
    let SKBtn = UIButton()
    let SKLabel = UILabel()
    
    let GEBtn = UIButton()
    let GELabel = UILabel()
    
    let GBBtn = UIButton()
    let GBLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
        configSubTitle()
        configImages()
        configLanguageButtons()
        layoutStartVC()
    }
    
    
    func configVC() {
 
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func configTitle() {
        view.addSubview(titleKG)
        
        titleKG.text = "Kindergeld"
        titleKG.font = UIFont(name: "Times New Roman", size: 62)
        titleKG.textColor = .label
        titleKG.textAlignment = .center
        }
    
    
    func configSubTitle() {
        view.addSubview(subTitle)
        
        subTitle.text = "get your Child Benefit"
        subTitle.font = UIFont(name: "Times New Roman", size: 36)
        subTitle.textColor = UIColor.systemOrange
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
        }
    
    
    func configImages() {
        view.addSubview(coinsImg)
        coinsImg.image = UIImage(named: "coinsImg")
        view.addSubview(babyImg)
        babyImg.image = UIImage(named: "babyImg")
     }
    
    
    func configLanguageButtons() {
        //Setting Button - SlovakiaFlag - chosed Slovak Language
        
        view.addSubview(SKBtn)
        SKBtn.setBackgroundImage(UIImage(named: "SlovakiaFlag"), for: .normal)
        SKBtn.addTarget(self, action: #selector(goToInfoVC), for: .touchUpInside)
        
        view.addSubview(SKLabel)
        SKLabel.text = "Slovensky"
        SKLabel.textColor = .label
        SKLabel.font = UIFont(name: "Times New Roman", size: 14)
       
        
        
        //Setting Button - GEFlag - chosed Germany Language
        
        view.addSubview(GEBtn)
        GEBtn.setBackgroundImage(UIImage(named: "GermanyFlag"), for: .normal)
        GEBtn.addTarget(self, action: #selector(goToInfoVC), for: .touchUpInside)
        
        view.addSubview(GELabel)
        GELabel.text = "Deutsch"
        GELabel.textColor = .label
        GELabel.font = UIFont(name: "Times New Roman", size: 14)
    
        
        
        //Setting Button - GBFlag - chosed English Language
       
        view.addSubview(GBBtn)
        GBBtn.setBackgroundImage(UIImage(named: "GBFlag"), for: .normal)
        GBBtn.addTarget(self, action: #selector(goToInfoVC), for: .touchUpInside)
        
        view.addSubview(GBLabel)
        GBLabel.text = "English"
        GBLabel.textColor = .label
        GBLabel.font = UIFont(name: "Times New Roman", size: 14)
        
        
    }
    
    @objc func goToInfoVC() {
        navigationController?.pushViewController(CustomTabBar(), animated: true)
        
    }
    
}
