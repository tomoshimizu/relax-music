import Foundation

enum MusicScene {
    case sleep
    case work
}

struct Music {
    let scene: MusicScene
    let title: String
    let imageURL: String
    let soundFileName: String
}
