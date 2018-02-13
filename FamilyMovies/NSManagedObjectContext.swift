//
//  NSManagedObjectContext.swift
//  FamilyMovies
//
//  Created by Chidi Emeh on 2/13/18.
//  Copyright © 2018 DonnyWals. All rights reserved.
//

import Foundation
import CoreData

extension NSManagedObjectContext {
    
    func persist(block: @escaping ()-> Void){
        perform {
            
            do {
                try self.save()
            }catch {
               self.rollback()
            }
        }
    }

    
    
}
