import UIKit
import RxSwift
import RxCocoa
import AVFoundation

class MusicPlayerViewModel {
    
    private var music: Music!
    private let audioPlayerManager = AudioPlayerManager()
    private let disposeBag = DisposeBag()
    
    var playAndPauseImage = BehaviorSubject<UIImage?>(value: UIImage(systemName: "pause.circle"))
    var repeatIsEnabled = BehaviorSubject<Bool>(value: false)
    
    init(music: Music) {
        self.music = music
        setup()
    }
    
    func setup() {
        repeatIsEnabled
            .subscribe(onNext: { [weak self] isEnabled in
                self?.audioPlayerManager.audioPlayer?.numberOfLoops = isEnabled ? -1 : 0
            })
            .disposed(by: disposeBag)
        
        playAndPauseMusic()
    }
    
    func playAndPauseMusic() {
        guard let player = audioPlayerManager.audioPlayer else {
            return
        }

        if player.isPlaying {
            player.stop()
            updatePlayPauseImage(isPlaying: false)
        } else {
            audioPlayerManager.playSound(soundName: NSDataAsset(name: music.soundFileName)!)
            updatePlayPauseImage(isPlaying: true)
        }
    }
    
    private func updatePlayPauseImage(isPlaying: Bool) {
        let systemImageName = isPlaying ? "pause.circle" : "play.circle"
        playAndPauseImage.onNext(UIImage(systemName: systemImageName))
    }
}
