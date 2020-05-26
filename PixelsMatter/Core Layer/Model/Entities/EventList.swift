//
//  EventList.swift
//  PixelsMatter
//
//  Created by Sem Vasiutin on 12.05.2020.
//  Copyright © 2020 nanosem. All rights reserved.
//

import Foundation

struct  EventList: Decodable {
    enum CodingKeys: String, CodingKey {
        case events
    }

    let events: [Event]
}
