//
//  Coordinator.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation
import UIKit

@objc protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    @objc optional func start()
}
