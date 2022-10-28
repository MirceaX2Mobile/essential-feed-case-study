//
//  CommentsViewAdapter.swift
//  EssentialApp
//
//  Created by Mircea Dragota on 28.10.2022.
//

import UIKit
import EssentialFeediOS
import EssentialFeed

final class CommentsViewAdapter: ResourceView {
    private weak var controller: ListViewController?
    
    init(controller: ListViewController) {
        self.controller = controller
    }
    
    public func display(_ viewModel: ImageCommentsViewModel) {
        controller?.display(viewModel.comments.map { viewModel in
            CellController(id: viewModel, ImageCommentCellController(model: viewModel))
        })
    }
}
