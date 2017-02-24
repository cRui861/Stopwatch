//
//  ViewController.swift
//  Stopwatch
//
//  Created by Rena Chen on 2/23/17.
//  Copyright © 2017 Rena Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var stopwatch = Stopwatch()
    
    @IBAction func start(_ sender: UIButton) {
        stopwatch.start()
        Timer.scheduledTimer(timeInterval: 0.1, target: self,
                                 selector: #selector(ViewController.updateTimerLabel(_:)),
                                 userInfo: nil,
                                 repeats: true)
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func stop(_ sender: UIButton) {
        stopwatch.stop()
    }
    
    func updateTimerLabel(_ timer: Timer) {
        if (!stopwatch.isRunning()) {
            timer.invalidate()
        } else {
            timeLabel.text = stopwatch.getTimeElapsed()
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

