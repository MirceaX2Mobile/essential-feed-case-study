//
//  ImageCommentsEndpoint.swift
//  EssentialFeedAPI
//
//  Created by Mircea Dragota on 28.10.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get(let id):
            return baseURL.appendingPathComponent("/v1/image/\(id)/comments")
        }
    }
}
