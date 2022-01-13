//
//  ManagedFeedImage.swift
//  EssentialFeed
//
//  Created by Mircea Dragota on 12.01.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation
import CoreData

@objc(ManagedFeedImage)
class ManagedFeedImage: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var imageDescription: String?
    @NSManaged var location: String?
    @NSManaged var url: URL
    @NSManaged var cache: ManagedCache
}
