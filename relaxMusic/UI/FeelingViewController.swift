//
//  FeelingViewController.swift
//  relaxMusic
//

import UIKit

class FeelingViewController: UIViewController {

    @IBOutlet weak var feelingHeaderImg: UIImageView!
    
    @IBOutlet weak var feelingBtn1: UIButton!
    @IBOutlet weak var feelingBtn2: UIButton!
    @IBOutlet weak var feelingBtn3: UIButton!
    @IBOutlet weak var feelingBtn4: UIButton!
    @IBOutlet weak var feelingBtn5: UIButton!
    @IBOutlet weak var feelingBtn6: UIButton!
    @IBOutlet weak var feelingBtn7: UIButton!
    
    /// 画面起動
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 嬉しい
        feelingBtn1.layer.masksToBounds = true
        let imgUrl1 = URL(string:
            "https://images.unsplash.com/photo-1495399769161-85d6521c0d1f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1778&q=80")
        feelingBtn1.sd_setBackgroundImage(with: imgUrl1, for: .normal)
        
        // 前向き
        feelingBtn2.layer.masksToBounds = true
        let imgUrl2 = URL(string:
            "https://images.unsplash.com/photo-1541878578057-63a626f9ed7b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMDk0fQ&auto=format&fit=crop&w=1550&q=80")
        feelingBtn2.sd_setBackgroundImage(with: imgUrl2, for: .normal)
        
        // 安らぎ
        feelingBtn3.layer.masksToBounds = true
        let imgUrl3 = URL(string:
            "https://images.unsplash.com/photo-1585237637981-a61398493db1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80")
        feelingBtn3.sd_setBackgroundImage(with: imgUrl3, for: .normal)
        
        // 愛しい
        feelingBtn4.layer.masksToBounds = true
        let imgUrl4 = URL(string:
            "https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80")
        feelingBtn4.sd_setBackgroundImage(with: imgUrl4, for: .normal)
        
        // 悲しい
        feelingBtn5.layer.masksToBounds = true
        let imgUrl5 = URL(string:
            "https://images.unsplash.com/photo-1524316607912-93c3468d9d28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
        feelingBtn5.sd_setBackgroundImage(with: imgUrl5, for: .normal)
        
        // 不安
        feelingBtn6.layer.masksToBounds = true
        let imgUrl6 = URL(string:
            "https://images.unsplash.com/photo-1490661001679-6c363837a4e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80")
        feelingBtn6.sd_setBackgroundImage(with: imgUrl6, for: .normal)
        
        // 苦しい
        feelingBtn7.layer.masksToBounds = true
        let imgUrl7 = URL(string:
            "https://images.unsplash.com/photo-1511108727986-c35fa356ee8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
        feelingBtn7.sd_setBackgroundImage(with: imgUrl7, for: .normal)
    }
    
    enum actionTag: Int {
        case action1 = 1
        case action2 = 2
        case action3 = 3
        case action4 = 4
        case action5 = 5
        case action6 = 6
        case action7 = 7
    }
    
    /// ボタン押下
    /// - Parameter sender: ボタン
    @IBAction func btnAction(_ sender: Any) {
        var soundName = NSDataAsset(name: "happy")
        
        if let button = sender as? UIButton {
            if let tag = actionTag(rawValue: button.tag) {
                switch tag {
                case .action1:
                    soundName = NSDataAsset(name: "happy")
                case .action2:
                    soundName = NSDataAsset(name: "positive")
                case .action3:
                    soundName = NSDataAsset(name: "relax")
                case .action4:
                    soundName = NSDataAsset(name: "love")
                case .action5:
                    soundName = NSDataAsset(name: "sad")
                case .action6:
                    soundName = NSDataAsset(name: "painful")
                case .action7:
                    soundName = NSDataAsset(name: "sleep6")
                }
            }
            
            Transition.toPlaySoundView(soundName: soundName, sceneNum: 3)
        }
    }
}
