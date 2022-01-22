//
//  HomeDao.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation
import Moya

enum MainDao {
    case getCountries(date_from: String , date_to : String)
    case getCountry(name: String)
  
}

extension MainDao:  ITargetType {
    var headers: [String: String]? {
        return [:]
    }

    var baseURL: URL {
        switch self {
        case .getCountries:
            guard let url = URL(string: "https://api.covid19tracking.narrativa.com/api") else { fatalError() }
            return url
        case let .getCountry(name):
            
            guard let url = URL(string: "https://restcountries.com/v3.1/name/") else { fatalError() }
            return url
        }
    }
    var path: String {
        switch self {
        case .getCountries:
            return ""
        case let  .getCountry(name):
            return  "\(name)"
        }
    }
    var method: Moya.Method {
        switch self {
        case .getCountries , .getCountry :
            return .get
        }
    }
    var sampleData: Data {
        return Data()
    }
    var task: Task {
        switch self {
        case let .getCountries(date_from, date_to):
            return .requestParameters(parameters: ["date_from": date_from, "date_to": date_to], encoding: URLEncoding.queryString)
        case .getCountry(_):
            return .requestParameters(parameters: ["fullText": "true"], encoding: URLEncoding.queryString)
        }
    }
}
