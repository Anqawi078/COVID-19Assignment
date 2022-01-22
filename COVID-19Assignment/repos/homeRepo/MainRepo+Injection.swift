//
//  HomeRepo+Injection.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation
import Resolver

public extension Resolver {
    static func registerMainServices() {
        register { MainRepo() as MainNetworkable }
            .scope(.shared)
    }
}



