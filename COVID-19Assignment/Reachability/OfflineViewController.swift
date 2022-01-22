//
//  ITargetType.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import UIKit

class OfflineViewController: UIViewController {
    let network = NetworkManagerReachability.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()

        network.reachability.whenReachable = { _ in
            self.showMainController()
        }
    }

    private func showMainController() {
        dismiss(animated: true, completion: nil)
    }
}

extension UIViewController {
    func handleInternetConnection() {
        NetworkManagerReachability.isUnreachable { _ in
            let storyboard = UIStoryboard(name: "NoInternetConnection", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "OfflineViewController") as? OfflineViewController
            controller?.modalPresentationStyle = .fullScreen
            self.present(controller ?? UIViewController(), animated: true, completion: nil)
        }
    }
}
