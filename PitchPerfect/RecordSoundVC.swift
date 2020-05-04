//
//  RecordSoundVC.swift
//  PitchPerfect
//
//  Created by Fung on 5/3/20.
//  Copyright © 2020 Fung. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundVC: UIViewController {
    var audioRecorder: AVAudioRecorder!    //declare av recorder variable
    
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
        
        stopRecord()
    }
    
    func startRecord(){
        print("start record func")
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        print(filePath as Any)
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)

        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    func stopRecord(){
        print("stop record func")
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
}//end of class

