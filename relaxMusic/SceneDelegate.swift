import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let tabBarController = UITabBarController()

        tabBarController.tabBar.barTintColor = UIColor(red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)
        tabBarController.tabBar.tintColor = .white
        
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

