//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Mircea Dragota on 21.02.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
