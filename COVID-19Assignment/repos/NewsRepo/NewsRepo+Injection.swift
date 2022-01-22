//
//  NewsRepo+Injection.swift
//  COVID-19Assignment
//
//  Created by khalil on 22/1/2022.
//

import Foundation
import Resolver

public extension Resolver {
    static func registerNewsServices() {
        register { NewsRepo() as NewsNetworkable }
            .scope(.shared)
    }
}

