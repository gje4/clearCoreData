//
//  deleteCoreData.swift
//  NanChat
//
//  Created by George Fitzgibbons on 2/29/16.
//  Copyright © 2016 Nanigans. All rights reserved.
//

import Foundation
//delating Message
func deleteMessages() {
    do {
        let request = NSFetchRequest(entityName: "Message")
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
