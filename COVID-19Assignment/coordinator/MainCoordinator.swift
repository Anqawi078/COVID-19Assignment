//
//  MainCoordinator.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    var window: UIWindow? {
        return UIApplication.shared.windows.first
    }

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = MainViewController.instantiate(storyBoard:UIStoryboard.Storyboard.main )
        vc.coordinator = self
        navigationController.setViewControllers([vc], animated: true)
        window?.rootViewController = navigationController
        
    }
    
    func news(countryName : String , imageUrl : String , name : String) {
        let vc = NewsViewController.instantiate(storyBoard: UIStoryboard.Storyboard.news)
        vc.coordinator = self
        vc.countryName = countryName
        vc.countryImageUrl = imageUrl
        vc.name = name
        navigationController.pushViewController(vc, animated: true)
    }

    func pop() {
        navigationController.popViewController(animated: true)
    }
    
    func dissmissNav() {
        navigationController.dismiss(animated: true)
    }
}
