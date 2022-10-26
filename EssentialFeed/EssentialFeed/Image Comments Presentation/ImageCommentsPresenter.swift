//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Mircea Dragota on 26.10.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

public final class ImageCommentsPresenter {
    public static var title: String {
        return NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
                                 tableName: "ImageComments",
                                 bundle: Bundle(for: Self.self),
                                 comment: "Title for the image comments view")
    }
    
//    public static func map(_ feed: [FeedImage]) -> FeedViewModel {
//        FeedViewModel(feed: feed)
//    }
}
