//
//  StatusViewController.swift
//  relaxMusic
//

import UIKit
import AVFoundation

class StatusViewController: UIViewController {
    
    public var sceneNum = 0
    public var soundName: NSDataAsset?
    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var statusBtn: UIButton!
    @IBOutlet weak var repeatBtn: UIButton!
    @IBOutlet weak var customBtn: UIButton!
    @IBOutlet weak var playImg: UIImageView!
    @IBOutlet weak var messageLbl: UILabel!
    
    let myBasePlayer = MyPlayerManager()
    var repeatBtnTapped = false
    
    
    /// 画面起動
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playImg.image = UIImage(named: "playImg")
        
        switch (sceneNum) {
        case 2:
            messageLbl.text = "初心を忘れずに"
            break
        case 3:
            messageLbl.text = "あなたは、あなたであればいい"
            break
        default:
            messageLbl.text = "今日も一日お疲れさまでした"
            break
        }
        
        let img1 = UIImage(systemName: "pause.circle")
        statusBtn.setBackgroundImage(img1, for: .normal) // 一時停止ボタン
        let img2 = UIImage(systemName: "repeat")
        repeatBtn.setBackgroundImage(img2, for: .normal) // リピートボタン
        let img3 = UIImage(systemName: "music.note")
        customBtn.setBackgroundImage(img3, for: .normal) // カスタムボタン
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        myBasePlayer.playSound(soundName: soundName) // 音楽を再生
    }
    
    /// <#Description#>
    /// - Parameter sender: <#sender description#>
    @IBAction func stopBtnTapped(_ sender: Any) {
        self.pauseMusic()
    }
    
    /// 音楽を一時停止
    func pauseMusic() {
        // 再生されている場合
        if myBasePlayer.pauseSound() {
            // 再生ボタンを表示
            let img = UIImage(systemName: "play.circle")
            statusBtn.tintColor = UIColor(hex: "FFFFFF")
            statusBtn.setBackgroundImage(img, for: .normal)
        } else {
            // 一時停止ボタンを表示
            let img = UIImage(systemName: "pause.circle")
            statusBtn.tintColor = UIColor(hex: "38EDFF")
            statusBtn.setBackgroundImage(img, for: .normal)
        }
    }
    
    // TODO: - ここを修正
    /// リピートアイコン押下
    /// - Parameter sender: ボタン
    @IBAction func repeatBtnTapped(_ sender: Any) {
        // すでに押下されている場合
        if repeatBtnTapped {
            myBasePlayer.audioPlayer.numberOfLoops = 1
            repeatBtn.tintColor = UIColor(hex: "FFFFFF")
            repeatBtnTapped = false
        } else {
            // リピート再生にする
            myBasePlayer.audioPlayer.numberOfLoops = -1
            repeatBtn.tintColor = UIColor(hex: "38EDFF")
            repeatBtnTapped = true
        }
    }
    
    // FIXME: - ここを修正
    /// 閉じるボタン押下
    /// - Parameter sender: 閉じるボタン
    @IBAction func closeBtnTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
