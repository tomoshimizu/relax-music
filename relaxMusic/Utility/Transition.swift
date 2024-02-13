import UIKit

class Transition {
    
    static func toPlaySoundView(soundName: String, musicScene: MusicScene) {
        if let vc = UIApplication.topViewController?.storyboard?.instantiateViewController(withIdentifier: "musicPlayerViewController") as? MusicPlayerViewController {
            vc.viewModel.configure(soundName: soundName, musicScene: musicScene)
            UIApplication.topViewController?.present(vc, animated: true, completion: nil)
        }
    }
}
