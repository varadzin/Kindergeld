//
//  SaveData.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 09.01.22.
//

import CoreData
import UIKit

class SaveData: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        saveEnteredInfo()
        saveApplicant(applicantFirstName: <#T##String#>, applicantSureName: <#T##String#>, applicantMaidenName: <#T##String#>)
    }
    func saveEnteredInfo() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        let entityName = "Person"
        guard let newEntity = NSEntityDescription.entity(forEntityName: entityName, in: context)
        else { return }
//        let newUser =  NSManagedObject(entity: newEntity, insertInto: context)
        // FormVC1
        let destinationViewController = Form1ViewController()
        destinationViewController.selectionDelegate = self
        }
    }

extension SaveData: SaveEnteredInfosDelegate {
    func saveApplicant(applicantFirstName: String, applicantSureName: String, applicantMaidenName: String) {
       print(applicantFirstName, applicantSureName, applicantMaidenName)
    }
}
