//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Mircea Dragota on 02.06.2022.
//  Copyright © 2022 Essential Developer. All rights reserved.
//

import Foundation

extension HTTPURLResponse {
     private static var OK_200: Int { return 200 }

     var isOK: Bool {
         return statusCode == HTTPURLResponse.OK_200
     }
 }
