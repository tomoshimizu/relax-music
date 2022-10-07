//
//  FirstViewController.swift
//  relaxMusic
//

import UIKit

class WorkViewController: UIViewController {
    
    @IBOutlet weak var workHeaderImg: UIImageView!
    
    // 優しいピアノ
    @IBOutlet weak var workBtn1: CustomBtn!
    @IBOutlet weak var workBtn2: CustomBtn!
    @IBOutlet weak var workBtn3: CustomBtn!
    @IBOutlet weak var workBtn4: CustomBtn!
    @IBOutlet weak var workBtn5: CustomBtn!
    @IBOutlet weak var workBtn6: CustomBtn!
    // 陽気なジャズ
    @IBOutlet weak var workBtn7: CustomBtn!
    @IBOutlet weak var workBtn8: CustomBtn!
    @IBOutlet weak var workBtn9: CustomBtn!
    @IBOutlet weak var workBtn10: CustomBtn!
    @IBOutlet weak var workBtn11: CustomBtn!
    @IBOutlet weak var workBtn12: CustomBtn!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        workBtn1.layer.masksToBounds = true
        let imgUrl1 = URL(string: "https://images.unsplash.com/photo-1574235515775-63974d22ccd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1382&q=80")
        workBtn1.sd_setBackgroundImage(with: imgUrl1, for: .normal)
        
        workBtn2.layer.masksToBounds = true
        let imgUrl2 = URL(string: "https://images.unsplash.com/photo-1590204376860-e26ae519fbf3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80")
        workBtn2.sd_setBackgroundImage(with: imgUrl2, for: .normal)
        
        workBtn3.layer.masksToBounds = true
        let imgUrl3 = URL(string: "https://images.unsplash.com/photo-1518837695005-2083093ee35b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
        workBtn3.sd_setBackgroundImage(with: imgUrl3, for: .normal)
        
        workBtn4.layer.masksToBounds = true
        let imgUrl4 = URL(string: "https://images.unsplash.com/photo-1442508748335-fde9c3f58fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1266&q=80")
        workBtn4.sd_setBackgroundImage(with: imgUrl4, for: .normal)
        
        workBtn5.layer.masksToBounds = true
        let imgUrl5 = URL(string: "https://images.unsplash.com/photo-1476673160081-cf065607f449?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80")
        workBtn5.sd_setBackgroundImage(with: imgUrl5, for: .normal)
        
        workBtn6.layer.masksToBounds = true
        let imgUrl6 = URL(string: "https://images.unsplash.com/photo-1428591345840-8f3d75d06246?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80")
        workBtn6.sd_setBackgroundImage(with: imgUrl6, for: .normal)
        
        workBtn7.layer.masksToBounds = true
        let imgUrl7 = URL(string: "https://images.unsplash.com/photo-1517632298125-355d911c3a4c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=939&q=80")
        workBtn7.sd_setBackgroundImage(with: imgUrl7, for: .normal)
        
        workBtn8.layer.masksToBounds = true
        let imgUrl8 = URL(string: "https://images.unsplash.com/photo-1468476396571-4d6f2a427ee7?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")
        workBtn8.sd_setBackgroundImage(with: imgUrl8, for: .normal)
        
        workBtn9.layer.masksToBounds = true
        let imgUrl9 = URL(string: "https://images.unsplash.com/photo-1506099914961-765be7a97019?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
        workBtn9.sd_setBackgroundImage(with: imgUrl9, for: .normal)
        
        workBtn10.layer.masksToBounds = true
        let imgUrl10 = URL(string: "https://images.unsplash.com/photo-1531604250646-2f0e818c4f06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80")
        workBtn10.sd_setBackgroundImage(with: imgUrl10, for: .normal)
        
        workBtn11.layer.masksToBounds = true
        let imgUrl11 = URL(string: "https://images.unsplash.com/photo-1499539582-dd1509980931?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80")
        workBtn11.sd_setBackgroundImage(with: imgUrl11, for: .normal)
        
        workBtn12.layer.masksToBounds = true
        let imgUrl12 = URL(string: "https://images.unsplash.com/photo-1536426910260-61cb1e1df4d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
        workBtn12.sd_setBackgroundImage(with: imgUrl12, for: .normal)
    }
    
    enum actionTag: Int {
        case action1 = 1
        case action2 = 2
        case action3 = 3
        case action4 = 4
        case action5 = 5
        case action6 = 6
        case action7 = 7
        case action8 = 8
        case action9 = 9
        case action10 = 10
        case action11 = 11
        case action12 = 12
    }
    
    /// ボタン押下
    /// - Parameter sender: ボタン
    @IBAction func btnAction(_ sender: Any) {
        var soundName = NSDataAsset(name: "work1")
        
        if let button = sender as? UIButton {
            if let tag = actionTag(rawValue: button.tag) {
                switch tag {
                case .action1:
                    soundName = NSDataAsset(name: "work1")
                case .action2:
                    soundName = NSDataAsset(name: "work2")
                case .action3:
                    soundName = NSDataAsset(name: "work3")
                case .action4:
                    soundName = NSDataAsset(name: "work4")
                case .action5:
                    soundName = NSDataAsset(name: "work5")
                case .action6:
                    soundName = NSDataAsset(name: "work6")
                case .action7:
                    soundName = NSDataAsset(name: "work7")
                case .action8:
                    soundName = NSDataAsset(name: "work8")
                case .action9:
                    soundName = NSDataAsset(name: "work9")
                case .action10:
                    soundName = NSDataAsset(name: "work10")
                case .action11:
                    soundName = NSDataAsset(name: "work11")
                case .action12:
                    soundName = NSDataAsset(name: "work12")
                }
            }
            
            Transition.toPlaySoundView(soundName: soundName, sceneNum: 2)
        }
    }
}

