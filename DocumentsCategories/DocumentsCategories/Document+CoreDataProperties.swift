//
//  Document+CoreDataProperties.swift
//  DocumentsCategories
//
//  Created by Chris Rehagen on 3/1/19.
//  Copyright © 2019 Chris Rehagen. All rights reserved.
//
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var documentBody: String?
    @NSManaged public var title: String?
    @NSManaged public var rawDateModified: NSDate?
    @NSManaged public var size: Int64
    @NSManaged public var category: Category?

}
