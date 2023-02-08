//
//  FeedViewAdapter.swift
//  EssentialFeediOS
//
//  Created by Mircea Dragota on 28.02.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import UIKit
import EssentialFeed
import EssentialFeediOS
import EssentialFeedAPI

final class FeedViewAdapter: ResourceView {
    private weak var controller: ListViewController?
    private let selection: (FeedImage) -> Void
    private let imageLoader: (URL) -> FeedImageDataLoader.Publisher
    
    init(controller: ListViewController, imageLoader: @escaping (URL) -> FeedImageDataLoader.Publisher, selection: @escaping (FeedImage) -> Void) {
        self.controller = controller
        self.imageLoader = imageLoader
        self.selection = selection
    }
    
    public func display(_ viewModel: Paginated<FeedImage>) {
        controller?.display(viewModel.items.map { model in
            let adapter = LoadResourcePresentationAdapter<Data, WeakRefVirtualProxy<FeedImageCellController>>(loader: { [imageLoader] in
                imageLoader(model.url)
            })

            let view = FeedImageCellController(
                viewModel: FeedImagePresenter.map(model),
                delegate: adapter,
                selection: { [selection] in
                    selection(model)
                }
            )
            
            adapter.presenter = LoadResourcePresenter(
                resourceView: WeakRefVirtualProxy(view),
                loadingView: WeakRefVirtualProxy(view),
                errorView: WeakRefVirtualProxy(view),
                mapper: { data in
                    guard let image = UIImage(data: data) else {
                        throw InvalidImageData()
                    }
                    return image
                }
            )
            
            return CellController(id: model, view)
        })
    }
}

private struct InvalidImageData: Error {}
