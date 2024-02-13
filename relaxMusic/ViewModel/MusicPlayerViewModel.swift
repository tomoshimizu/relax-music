import UIKit
import RxSwift
import RxCocoa
import AVFoundation

class MusicPlayerViewModel {
    
    private var music: Music!
    private let audioPlayer = AudioPlayerManager()
    private let disposeBag = DisposeBag()
    
    var playImageURL = BehaviorSubject<String?>(value: nil)
    var message = BehaviorSubject<String?>(value: nil)
    var playPauseButtonImage = BehaviorSubject<UIImage?>(value: UIImage(systemName: "pause.circle"))
    var repeatButtonTintColor = BehaviorSubject<UIColor?>(value: UIColor(hex: "FFFFFF"))
    var repeatIsEnabled = BehaviorSubject<Bool>(value: false)
    
    init() {
        repeatIsEnabled
            .subscribe(onNext: { [weak self] isEnabled in
                self?.audioPlayer.audioPlayer?.numberOfLoops = isEnabled ? -1 : 0
                self?.repeatButtonTintColor.onNext(isEnabled ? .blue : .white)
            })
            .disposed(by: disposeBag)
    }
    
    func configure(music: Music) {
        self.music = music
        
        updatePlayImage()
        updateMessage()
    }
    
    func playSound() {
        audioPlayer.playSound(soundName: NSDataAsset(name: music.soundFileName)!)
    }
    
    func pauseOrResumeMusic() {
        if audioPlayer.pauseSound() {
            playPauseButtonImage.onNext(UIImage(systemName: "play.circle"))
        } else {
            playPauseButtonImage.onNext(UIImage(systemName: "pause.circle"))
        }
    }
    
    private func updatePlayImage() {
        playImageURL.onNext(music.imageURL)
    }
    
    private func updateMessage() {
        message.onNext(music.title)
    }
}
