//
//  SaveData.swift
//  Kindergeld
//
//  Created by Frantisek Varadzin on 09.01.22.
//

import Foundation
import CoreData
import UIKit

class SaveData {
    func saveEnteredInfo() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        let entityName = "Person"
        
        guard let newEntity = NSEntityDescription.entity(forEntityName: entityName, in: context)
        else { return }
    }
    
    
}
