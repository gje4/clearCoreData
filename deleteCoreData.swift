//
//  deleteCoreData.swift
//  NanChat
//
//  Created by George Fitzgibbons on 2/29/16.
//  Copyright © 2016 Nanigans. All rights reserved.
//in the ui Controller
    var context: NSManagedObjectContext?
//delating Message
 func deleteMessages(entity: String) {
    do {
        let request = NSFetchRequest(entityName: "Entity Name")
        print(request)
        
        if let result = try context!.executeFetchRequest(request) as? [Message]
        {
            
            for message in result {
                
                context!.deleteObject(message)
                try context!.save()
                print(message)
                self.tableView.reloadData()
            }
        }
    }
    catch {
        print("nothing from core data")
    }
}
