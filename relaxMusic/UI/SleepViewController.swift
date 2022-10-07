//
//  SleepViewController.swift
//  relaxMusic
//

import UIKit
import SDWebImage

class SleepViewController: UIViewController {

    // MARK: - Variables
    
    @IBOutlet weak var sleepHeaderImg: UIImageView!
    
    @IBOutlet weak var sleepBtn1: UIButton!
    @IBOutlet weak var sleepBtn2: UIButton!
    @IBOutlet weak var sleepBtn3: UIButton!
    @IBOutlet weak var sleepBtn4: UIButton!
    @IBOutlet weak var sleepBtn5: UIButton!
    @IBOutlet weak var sleepBtn6: UIButton!
    @IBOutlet weak var sleepBtn7: UIButton!
    @IBOutlet weak var sleepBtn8: UIButton!
    @IBOutlet weak var sleepBtn9: UIButton!
    @IBOutlet weak var sleepBtn10: UIButton!
    @IBOutlet weak var sleepBtn11: UIButton!
    @IBOutlet weak var sleepBtn12: UIButton!
    
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
    
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sleepBtn6.layer.masksToBounds = true
        let imgUrl6 = URL(string: "https://images.unsplash.com/photo-1487139975590-b4f1dce9b035?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
        sleepBtn6.sd_setBackgroundImage(with: imgUrl6, for: .normal)

        sleepBtn1.layer.masksToBounds = true
        let imgUrl1 = URL(string: "https://images.unsplash.com/photo-1532178968013-0acd8e5bf7c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
        sleepBtn1.sd_setBackgroundImage(with: imgUrl1, for: .normal)

        sleepBtn2.layer.masksToBounds = true
        let imgUrl2 = URL(string: "https://images.unsplash.com/photo-1553579857-74fb7643a502?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2090&q=80")
        sleepBtn2.sd_setBackgroundImage(with: imgUrl2, for: .normal)

        sleepBtn3.layer.masksToBounds = true
        let imgUrl3 = URL(string: "https://images.unsplash.com/photo-1500375592092-40eb2168fd21?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
        sleepBtn3.sd_setBackgroundImage(with: imgUrl3, for: .normal)

        sleepBtn4.layer.masksToBounds = true
        let imgUrl4 = URL(string: "https://images.unsplash.com/photo-1508402476522-c77c2fa4479d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1500&q=80")
        sleepBtn4.sd_setBackgroundImage(with: imgUrl4, for: .normal)

        sleepBtn5.layer.masksToBounds = true
        let imgUrl5 = URL(string: "https://images.unsplash.com/photo-1448375240586-882707db888b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
        sleepBtn5.sd_setBackgroundImage(with: imgUrl5, for: .normal)


        sleepBtn7.layer.masksToBounds = true
        let imgUrl7 = URL(string: "https://images.unsplash.com/photo-1468276311594-df7cb65d8df6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
        sleepBtn7.sd_setBackgroundImage(with: imgUrl7, for: .normal)

        sleepBtn8.layer.masksToBounds = true
        let imgUrl8 = URL(string: "https://images.unsplash.com/photo-1525939864518-b53937989bbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80g")
        sleepBtn8.sd_setBackgroundImage(with: imgUrl8, for: .normal)

        sleepBtn9.layer.masksToBounds = true
        let imgUrl9 = URL(string: "https://images.unsplash.com/photo-1511553677255-ba939e5537e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1082&q=80")
        sleepBtn9.sd_setBackgroundImage(with: imgUrl9, for: .normal)

        sleepBtn10.layer.masksToBounds = true
        let imgUrl10 = URL(string: "https://images.unsplash.com/photo-1506656680297-07a6e8be48eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
        sleepBtn10.sd_setBackgroundImage(with: imgUrl10, for: .normal)

        sleepBtn11.layer.masksToBounds = true
        let imgUrl11 = URL(string: "https://images.unsplash.com/photo-1509111760872-88f5becad074?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
        sleepBtn11.sd_setBackgroundImage(with: imgUrl11, for: .normal)

        sleepBtn12.layer.masksToBounds = true
        let imgUrl12 = URL(string: "https://images.unsplash.com/photo-1519165678289-8dec49bc74f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1494&q=80")
        sleepBtn12.sd_setBackgroundImage(with: imgUrl12, for: .normal)
    }
    
    
    // MARK: - Action
    
    @IBAction func btnAction(_ sender: Any) {
        var soundName = NSDataAsset(name: "sleep1")
        
        if let button = sender as? UIButton {
            if let tag = actionTag(rawValue: button.tag) {
                switch tag {
                case .action1:
                    soundName = NSDataAsset(name: "sleep1")
                case .action2:
                    soundName = NSDataAsset(name: "sleep2")
                case .action3:
                    soundName = NSDataAsset(name: "sleep3")
                case .action4:
                    soundName = NSDataAsset(name: "sleep4")
                case .action5:
                    soundName = NSDataAsset(name: "sleep5")
                case .action6:
                    soundName = NSDataAsset(name: "sleep6")
                case .action7:
                    soundName = NSDataAsset(name: "sleep7")
                case .action8:
                    soundName = NSDataAsset(name: "sleep8")
                case .action9:
                    soundName = NSDataAsset(name: "sleep9")
                case .action10:
                    soundName = NSDataAsset(name: "sleep10")
                case .action11:
                    soundName = NSDataAsset(name: "sleep11")
                case .action12:
                    soundName = NSDataAsset(name: "sleep12")
                }
            }
        }
        
        Transition.toPlaySoundView(soundName: soundName, sceneNum: 1)
    }
}
