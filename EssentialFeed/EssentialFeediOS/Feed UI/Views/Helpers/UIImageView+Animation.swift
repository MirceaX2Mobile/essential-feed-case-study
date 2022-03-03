//
//  UIImageView+Animation.swift
//  EssentialFeediOS
//
//  Created by Mircea Dragota on 24.02.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import UIKit

extension UIImageView {
    func setImageAnimated(_ newImage: UIImage?) {
        image = newImage
        
        guard newImage != nil else { return }

        alpha = 0
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }
}
