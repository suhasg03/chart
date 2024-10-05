//
//  Item.swift
//  Chart
//
//  Created by Suhas G on 05/10/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
