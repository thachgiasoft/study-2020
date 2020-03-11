//
//  Event.swift
//  CoreDataExample
//
//  Created by sh0 on 2020/03/06.
//  Copyright © 2020 com.shofujimoto. All rights reserved.
//

import Foundation
import CoreData

extension Event {
    static func create(in managedObjectContext: NSManagedObjectContext) {
        let newEvent = self.init(context: managedObjectContext)
        newEvent.timestamp = Date()
        
        do {
            try managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}

extension Collection where Element == Event, Index == Int {
    func delete(at indices: IndexSet,
                from managedObjectContext: NSManagedObjectContext) {
        indices.forEach { managedObjectContext.delete(self[$0]) }
        
        do {
            try managedObjectContext.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
