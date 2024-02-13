import UIKit

class ModalViewController: UIViewController {

    // プレーヤーをインスタンス化
    let customPlayer = AudioPlayerManager()
    
    @IBOutlet weak var muteBtn: UIButton!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        
        let img1 = UIImage(systemName: "cloud.rain")
        btn1.setBackgroundImage(img1, for: .normal)
        let img2 = UIImage(systemName: "cloud.heavyrain")
        btn2.setBackgroundImage(img2, for: .normal)
        let img3 = UIImage(systemName: "cloud.bolt")
        btn3.setBackgroundImage(img3, for: .normal)
        let img4 = UIImage(systemName: "snow")
        btn4.setBackgroundImage(img4, for: .normal)
        let img5 = UIImage(systemName: "wind")
        btn5.setBackgroundImage(img5, for: .normal)
        let img6 = UIImage(systemName: "flame")
        btn6.setBackgroundImage(img6, for: .normal)
    }

    /// 画面以外をタップするとモーダルが閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
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
    }
    
    /// ボタン押下
    /// - Parameter sender: ボタン
    @IBAction func btnAction(_ sender: Any) {
        var soundName = NSDataAsset(name: "water")
        
        if let button = sender as? UIButton {
            if let tag = actionTag(rawValue: button.tag) {
                switch tag {
                case .action1:
                    soundName = NSDataAsset(name: "water")
                case .action2:
                    soundName = NSDataAsset(name: "rain")
                case .action3:
                    soundName = NSDataAsset(name: "thunder")
                case .action4:
                    soundName = NSDataAsset(name: "snow")
                case .action5:
                    soundName = NSDataAsset(name: "wind")
                case .action6:
                    soundName = NSDataAsset(name: "flame")
                case .action7:
                    soundName = NSDataAsset(name: "seagull")
                case .action8:
                    soundName = NSDataAsset(name: "owl")
                case .action9:
                    soundName = NSDataAsset(name: "frog")
                }
            }

//            customPlayer.playSound(soundName: soundName)
        }
    }
    
    /// ミュートボタン押下
    /// - Parameter sender: ミュートボタン
    @IBAction func muteBtnTapped(_ sender: Any) {
//        customPlayer.audioPlayer.stop()
    }
    
}
