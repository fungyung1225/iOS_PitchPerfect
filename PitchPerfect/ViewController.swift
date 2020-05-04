//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Fung on 5/3/20.
//  Copyright © 2020 Fung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var recordBtn: UIButton!
    @IBOutlet var msgLab: UILabel!
    @IBOutlet var stopBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopBtn.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
    }
    
    @IBAction func recordAction(_ sender: UIButton) {
        msgLab.text = "recording, press stop btn to stop record"
        recordBtn.isEnabled = false
        stopBtn.isEnabled = true
    }
    
    @IBAction func stopAction(_ sender: Any) {
        msgLab.text = "tap to record"
        recordBtn.isEnabled = true
        stopBtn.isEnabled = false
    }
}

