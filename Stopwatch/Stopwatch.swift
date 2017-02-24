//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Rena Chen on 2/23/17.
//  Copyright © 2017 Rena Chen. All rights reserved.
//

import Foundation
import UIKit

class Stopwatch {

    var startDate : Date? = nil
    
    func start() {
        startDate = Date()
    }
    
    func stop() {
        startDate = nil
    }
    
    func isRunning() -> Bool {
        if (startDate != nil) {
            return true
        } else {
            return false
        }
    }
    
    func getTimeElapsed() -> String? {
        //startDate?.timeIntervalSinceNow
        let timeString = String(format: "%.2f",-(startDate?.timeIntervalSinceNow)!)
        return timeString
    }

}
