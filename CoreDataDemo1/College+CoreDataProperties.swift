//
//  College+CoreDataProperties.swift
//  CoreDataDemo1
//
//  Created by Students on 24/04/24.
//
//

import Foundation
import CoreData


extension College {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<College> {
        return NSFetchRequest<College>(entityName: "College")
    }

    @NSManaged public var name: String?
    @NSManaged public var address: String?

}

extension College : Identifiable {

}
