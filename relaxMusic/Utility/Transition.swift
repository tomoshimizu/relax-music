import UIKit

class Transition {
    
    static func toPlaySoundView(music: Music) {
        if let vc = UIApplication.topViewController?.storyboard?.instantiateViewController(withIdentifier: "musicPlayerViewController") as? MusicPlayerViewController {
            vc.viewModel.configure(music: music)
            UIApplication.topViewController?.present(vc, animated: true, completion: nil)
        }
    }
}
