//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Mircea Dragota on 07.06.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
