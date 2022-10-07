//
//  Transition.swift
//  relaxMusic
//

import UIKit

class Transition {
    
    static func toPlaySoundView(soundName: NSDataAsset?, sceneNum: Int) {
        let vc = UIApplication.topViewController?.storyboard?.instantiateViewController(withIdentifier: "statusView") as! StatusViewController
        vc.soundName = soundName
        vc.sceneNum = 1
        UIApplication.topViewController?.present(vc, animated: true, completion: nil)
    }
}
