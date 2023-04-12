//
//  FeedImageDataMapper.swift
//  EssentialFeedAPI
//
//  Created by Mircea Dragota on 12.04.2023.
//  Copyright © 2023 Essential Developer. All rights reserved.
//

import Foundation

public final class FeedImageDataMapper {
    public enum Error: Swift.Error {
        case invalidData
    }
    
    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> Data {
        guard response.isOK, !data.isEmpty else {
            throw Error.invalidData
        }
        
        return data
    }
}
