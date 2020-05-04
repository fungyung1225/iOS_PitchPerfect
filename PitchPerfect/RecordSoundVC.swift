//
//  RecordSoundVC.swift
//  PitchPerfect
//
//  Created by Fung on 5/3/20.
//  Copyright © 2020 Fung. All rights reserved.
//

import UIKit

class RecordSoundVC: UIViewController {
    @IBOutlet var recordBtn: UIButton!
    @IBOutlet var msgLab: UILabel!
    @IBOutlet var stopBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopBtn.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        print("didReceiveMemoryWarning")
//    }
    
    @IBAction func recordAction(_ sender: UIButton) {
        msgLab.text = "recording, press stop btn to stop record"
        recordBtn.isEnabled = false
        stopBtn.isEnabled = true
        
        startRecord()
    }
    
    @IBAction func stopAction(_ sender: Any) {
        msgLab.text = "tap to record"
        recordBtn.isEnabled = true
        stopBtn.isEnabled = false
    }
    
    func startRecord(){
        print("start record func")
        
    }
    
    func stopRecord(){
        print("stop record func")
    }
}//end of class

