import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let tabBarController = UITabBarController()

        tabBarController.tabBar.backgroundColor = UIColor(hex: "3B5566")
        tabBarController.tabBar.tintColor = UIColor(hex: "38EDFF")
        
        let sleepViewController = SleepViewController()
        sleepViewController.tabBarItem = UITabBarItem(title: "寝る", image: UIImage(systemName: "moon.stars"), tag: 0)

        let readViewController = ReadViewController()
        readViewController.tabBarItem = UITabBarItem(title: "読む", image: UIImage(systemName: "book"), tag: 1)

        tabBarController.viewControllers = [sleepViewController, readViewController]
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = tabBarController
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

