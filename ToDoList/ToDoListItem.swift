//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Петр Царенко on 09.03.2021.
//

import Foundation
import CoreData

class ToDoListItem: NSManagedObject, Identifiable{
    @NSManaged var name: String?
    @NSManaged var createdAt: Date?
}

extension ToDoListItem {
    static func getAllToDoListItems() -> NSFetchRequest<ToDoListItem>{
        let request: NSFetchRequest<ToDoListItem> = ToDoListItem.fetchRequest() as! NSFetchRequest<ToDoListItem>
        
        
        let sort = NSSortDescriptor(key: "createdAt", ascending: true)
        request.sortDescriptors = [sort]
        
        return request
    }
}
