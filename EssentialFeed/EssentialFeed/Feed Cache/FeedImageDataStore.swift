//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Mircea Dragota on 02.06.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
