//
//  AppDelegate+Injection.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation
import Resolver

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        registerMainServices()
        registerNewsServices()
       
    }
}
