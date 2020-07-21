//
//  save_weight.swift
//  Slurry Calculation
//
//  Created by BBS Developer on 27/11/2561 BE.
//  Copyright © 2561 Wilaiwan. All rights reserved.
//

import CoreData
import UIKit

class save_weight: NSObject {

    private class func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    class func saveObject(name:String, weight:String) -> Bool {
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "ReportWeight", in: context)
        let managededObject = NSManagedObject(entity: entity!, insertInto: context)
        
        managededObject.setValue(name, forKey: "name")
        managededObject.setValue(weight, forKey: "weight")
        
        do {
            try context.save()
            return true
        } catch {
            return false
        }
    }
    
    class func fetchObject() -> [ReportWeight]? {
        let context = getContext()
        var weights: [ReportWeight]? = nil
        
        do {
            weights = try context.fetch(ReportWeight.fetchRequest())
            return weights
        } catch {
            return weights
        }
    }
}
