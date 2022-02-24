//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Mircea Dragota on 24.02.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
