//
//  Student+CoreDataProperties.swift
//  CoreDataDemo1
//
//  Created by STUDENT on 4/25/24.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var rollno: String?
    @NSManaged public var address: String?

}

extension Student : Identifiable {

}
