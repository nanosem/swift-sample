//
//  DataManager.swift
//  PixelsMatter
//
//  Created by Sem Vasiutin on 12.05.2020.
//  Copyright © 2020 nanosem. All rights reserved.
//

import Foundation

class DataManager {

    // MARK: - Variables
    static var dataSource = [Event]()

    // MARK: - Functions
    static func updateDataSource(completion: @escaping () -> Void) {
        DispatchQueue.global().async {
            if let path = Bundle.main.path(forResource: "events", ofType: "json") {
                do {
                    let data = try Data(contentsOf: URL(fileURLWithPath: path))
                    let events: EventList = try JSONDecoder().decode(EventList.self, from: data)
                    dataSource = events.events
                } catch {
                    print("Failed to decode event list")
                }
            }

            DispatchQueue.main.async {
                completion()
            }
        }
    }
}
