//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Mircea Dragota on 02.09.2022.
//

import UIKit

extension UIView {
     func enforceLayoutCycle() {
         layoutIfNeeded()
         RunLoop.current.run(until: Date())
     }
 }
