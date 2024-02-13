import UIKit
import RxSwift
import RxCocoa
import AVFoundation

enum MusicScene {
    case sleep
    case work
}

class MusicPlayerViewModel {
    
    private var musicScene: MusicScene? {
        didSet {
            updateMessage()
        }
    }
    private var soundName: String = ""
    private let audioPlayer = AudioPlayerManager()
    private let disposeBag = DisposeBag()
    
    var repeatIsEnabled = BehaviorSubject<Bool>(value: false)
    var message = BehaviorSubject<String?>(value: nil)
    var playPauseButtonImage = BehaviorSubject<UIImage?>(value: UIImage(systemName: "pause.circle"))
    var repeatButtonTintColor = BehaviorSubject<UIColor?>(value: UIColor(hex: "FFFFFF"))
    
    init() {
        setInitialButtonImages()
        
        repeatIsEnabled
            .subscribe(onNext: { [weak self] isEnabled in
                self?.audioPlayer.audioPlayer?.numberOfLoops = isEnabled ? -1 : 0
                self?.repeatButtonTintColor.onNext(isEnabled ? .blue : .white)
            })
            .disposed(by: disposeBag)
    }
    
    func configure(soundName: String, musicScene: MusicScene) {
        self.soundName = soundName
        self.musicScene = musicScene
    }
    
    func playSound() {
        audioPlayer.playSound(soundName: NSDataAsset(name: soundName)!)
    }
    
    func pauseOrResumeMusic() {
        if audioPlayer.pauseSound() {
            playPauseButtonImage.onNext(UIImage(systemName: "play.circle"))
        } else {
            playPauseButtonImage.onNext(UIImage(systemName: "pause.circle"))
        }
    }
    
    private func updateMessage() {
        let newMessage: String?
        
        switch musicScene {
        case .sleep:
            newMessage = "今日も一日お疲れさまでした"
        case .work:
            newMessage = "初心を忘れずに"
        case .none:
            newMessage = nil
        }
        
        message.onNext(newMessage)
    }
    
    private func setInitialButtonImages() {
        playPauseButtonImage.onNext(UIImage(systemName: "pause.circle"))
        repeatButtonTintColor.onNext(UIColor(hex: "FFFFFF"))
    }
}
