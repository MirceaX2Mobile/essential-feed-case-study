//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Mircea Dragota on 16.02.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
