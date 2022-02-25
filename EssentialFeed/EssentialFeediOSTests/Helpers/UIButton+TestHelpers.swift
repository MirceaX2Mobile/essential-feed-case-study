//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Mircea Dragota on 25.02.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
