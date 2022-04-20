//
//  SavedObject+CoreDataProperties.swift
//  ViperExample
//
//  Created by Tatsiana Marchanka on 21.04.22.
//
//

import Foundation
import CoreData


extension SavedObject {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SavedObject> {
        return NSFetchRequest<SavedObject>(entityName: "SavedObject")
    }

    @NSManaged public var title: String?
    @NSManaged public var url: String?
    @NSManaged public var productDescription: String?
    @NSManaged public var microDescription: String?

}

extension SavedObject : Identifiable {

}
