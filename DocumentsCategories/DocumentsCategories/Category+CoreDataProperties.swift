//
//  Category+CoreDataProperties.swift
//  DocumentsCategories
//
//  Created by Chris Rehagen on 3/1/19.
//  Copyright © 2019 Chris Rehagen. All rights reserved.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var name: String?
    @NSManaged public var documents: Document?

}
