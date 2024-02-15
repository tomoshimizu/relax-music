import UIKit

class Transition {
    
    static func toPlaySoundView(music: Music) {
        let vc = MusicPlayerViewController(music: music)
        UIApplication.topViewController?.present(vc, animated: true)
    }
    
    static func toNaturalSoundView() {
        let vc = NaturalSoundViewController()
        UIApplication.topViewController?.present(vc, animated: true)
    }
}
