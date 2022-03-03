//
//  UIRefreshControl.swift
//  EssentialFeediOS
//
//  Created by Mircea Dragota on 03.03.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
