//
//  FeedPresenter.swift
//  EssentialFeed
//
//  Created by Mircea Dragota on 03.03.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

public final class FeedPresenter {
    public static var title: String {
        return NSLocalizedString("FEED_VIEW_TITLE",
                                 tableName: "Feed",
                                 bundle: Bundle(for: Self.self),
                                 comment: "Title for the feed view")
    }
    
    public static func map(_ feed: [FeedImage]) -> FeedViewModel {
        FeedViewModel(feed: feed)
    }
}
