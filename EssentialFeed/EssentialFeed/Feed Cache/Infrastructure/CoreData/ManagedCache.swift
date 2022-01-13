//
//  ManagedCache.swift
//  EssentialFeed
//
//  Created by Mircea Dragota on 12.01.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation
import CoreData

@objc(ManagedCache)
class ManagedCache: NSManagedObject {
    @NSManaged var timestamp: Date
    @NSManaged var feed: NSOrderedSet
}

