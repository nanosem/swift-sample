//
//  Event.swift
//  PixelsMatter
//
//  Created by Sem Vasiutin on 12.05.2020.
//  Copyright © 2020 nanosem. All rights reserved.
//

import Foundation

struct Event: Decodable {
    var id: Int
    var name: String
    var active: Bool
}
