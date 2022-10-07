//
//  Player.swift
//  relaxMusic
//

import UIKit
import AVFoundation

class MyPlayerManager {

    public var audioPlayer: AVAudioPlayer!
    
    /// 音楽を再生
    /// - Parameter soundName: サウンド名
    func playSound(soundName: NSDataAsset?) {
        do {
            guard let soundName = soundName else { return }
            audioPlayer = try AVAudioPlayer(data: soundName.data, fileTypeHint: "mp3")
            audioPlayer.play()
        } catch {
            print("error")
        }
    }
    
    /// 音楽を停止
    /// - Parameter player: 該当のプレーヤー
    /// - Returns: true / false
    func pauseSound() -> Bool {
        if audioPlayer.isPlaying {
            audioPlayer.pause()
            return true
        } else {
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
            return false
        }
    }
}
