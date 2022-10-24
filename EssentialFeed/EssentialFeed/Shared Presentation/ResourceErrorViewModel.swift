//
//  ResourceErrorViewModel.swift
//  EssentialFeed
//
//  Created by Mircea Dragota on 03.03.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
