//
//  FeedImagePresenter.swift
//  EssentialFeediOS
//
//  Created by Mircea Dragota on 22.02.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(description: image.description,
                           location: image.location)
    }
}
