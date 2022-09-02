//
//  UITableView+HeaderSizing.swift
//  EssentialFeediOS
//
//  Created by Mircea Dragota on 02.09.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    func sizeTableHeaderToFit() {
        guard let header = tableHeaderView else { return }
        
        let size = header.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        
        let needsFrameUpdate = header.frame.height != size.height
        if needsFrameUpdate {
            header.frame.size.height = size.height
            tableHeaderView = header
        }
    }
}
