//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Mircea Dragota on 03.03.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
