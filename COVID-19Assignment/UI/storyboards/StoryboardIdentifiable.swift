//
//  StoryboardIdentifiable.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import UIKit

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}
