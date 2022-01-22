//
//  ITargetType.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//
import Foundation
import Reachability
import UIKit

class NetworkManagerReachability: NSObject {
    var reachability: Reachability!

    static let sharedInstance: NetworkManagerReachability = .init()

    override init() {
        super.init()

        reachability = try! Reachability()

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(networkStatusChanged(_:)),
            name: .reachabilityChanged,
            object: reachability
        )

        do {
            try reachability.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
    }

    @objc func networkStatusChanged(_: Notification) {
        NetworkManagerReachability.sharedInstance.reachability.whenUnreachable = { _ in
            NetworkManagerReachability.presentOfllineView()
        }
    }

    static func stopNotifier() {
        do {
            try (NetworkManagerReachability.sharedInstance.reachability).startNotifier()
        } catch {
            print("Error stopping notifier")
        }
    }

    static func isReachable(completed: @escaping (NetworkManagerReachability) -> Void) {
        if (NetworkManagerReachability.sharedInstance.reachability).connection != .unavailable {
            completed(NetworkManagerReachability.sharedInstance)
        }
    }

    static func isUnreachable(completed: @escaping (NetworkManagerReachability) -> Void) {
        if (NetworkManagerReachability.sharedInstance.reachability).connection == .unavailable {
            completed(NetworkManagerReachability.sharedInstance)
        }
    }

    static func isReachableViaWWAN(completed: @escaping (NetworkManagerReachability) -> Void) {
        if (NetworkManagerReachability.sharedInstance.reachability).connection == .cellular {
            completed(NetworkManagerReachability.sharedInstance)
        }
    }

    static func isReachableViaWiFi(completed: @escaping (NetworkManagerReachability) -> Void) {
        if (NetworkManagerReachability.sharedInstance.reachability).connection == .wifi {
            completed(NetworkManagerReachability.sharedInstance)
        }
    }

    static func presentOfllineView() {
        let storyboard = UIStoryboard(name: "NoInternetConnection", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "OfflineViewController") as! OfflineViewController
        controller.modalPresentationStyle = .fullScreen
        UIApplication.topViewController?.present(controller, animated: true, completion: nil)
    }
}
