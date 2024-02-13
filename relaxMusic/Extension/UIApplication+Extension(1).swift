//
//  UIApplication+Extension.swift
//  relaxMusic
//

import UIKit

extension UIApplication {

    static var topViewController: UIViewController? {
        return topViewController()
    }

    static func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        if let alertController = controller as? UIAlertController, let presenting = alertController.presentingViewController {
            return presenting
        }
        
        return controller
    }
}
