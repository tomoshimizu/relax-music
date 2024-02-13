import UIKit
import AVFoundation

class AudioPlayerManager {

    var audioPlayer: AVAudioPlayer?
    
    init() {
        let session = AVAudioSession.sharedInstance()
        
        do {
            try session.setCategory(.playback, mode: .default)
        } catch {
            fatalError("error")
        }
        
        do {
            try session.setActive(true)
        } catch {
            fatalError("error")
        }
    }
    
    func playSound(soundName: NSDataAsset) {
        do {
            audioPlayer = try AVAudioPlayer(data: soundName.data, fileTypeHint: AVFileType.mp3.rawValue)
            audioPlayer?.play()
        } catch {
            print("音楽ファイルの再生に失敗しました。", error)
        }
    }
    
    func pauseSound() -> Bool {
        guard let player = audioPlayer,
              player.isPlaying else {
            return false
        }
        player.pause()
        return true
    }
}
