//
//  SettingsVC.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 21/08/2021.
//

import UIKit

class SettingsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
   var titleKG = UILabel()
    let tableViewArray = ["Language / Jazyk / Jezyk / Sprache", "Pravidlá používania"]
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configTitle()
        configTableView()
        
    }
    func configVC() {
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .systemBackground
    }
    
    func configTitle() {
        view.addSubview(titleKG)
        titleKG.text = "Nastavenia"
        titleKG.font = UIFont(name: "Times New Roman", size: 28)
        titleKG.textColor = .secondaryLabel
        titleKG.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleKG.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            titleKG.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15)
            ])
    }
    
    func configTableView() {
    let tableView = UITableView()
    view.addSubview(tableView)
 tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: titleKG.bottomAnchor, constant: 10),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableViewArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tableViewArray[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let newVC = LanguageVC()
            navigationController?.pushViewController(newVC, animated: true)
        } else {
            let newVC = DisclaimerVC()
            navigationController?.pushViewController(newVC, animated: true)
        }
    }
}
