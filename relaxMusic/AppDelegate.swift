//
//  AppDelegate.swift
//  relaxMusic
//

import UIKit
import AVFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        /// オーディオカテゴリの設定
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setCategory(.playback, mode: .default)
        } catch {
            fatalError("error")
        }
        
        /// セッションの有効化
        do {
            try session.setActive(true)
        } catch {
            fatalError("error")
        }
        
        return true
    }
}

