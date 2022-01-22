//
//  NewsDao.swift
//  COVID-19Assignment
//
//  Created by khalil on 22/1/2022.
//

import Foundation
import Moya

enum NewsDao {
   
    case getNews(name: String)
  
}

extension NewsDao:  ITargetType {
    var headers: [String: String]? {
        return [:]
    }
    var baseURL: URL {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines") else { fatalError() }
        return url
    }
    var path: String {
        switch self {
        case  .getNews(_):
            return  ""

        }
    }
    var method: Moya.Method {
        switch self {
        case  .getNews :
            return .get
        }
    }
    var sampleData: Data {
        return Data()
    }
    var task: Task {
        switch self {
        case let .getNews(name):
            return .requestParameters(parameters: ["country": name , "category" : "health" , "apiKey" : "7637c71b99db4e3e8b1ee557f6c72a84" ], encoding: URLEncoding.queryString)
        }
    }
}
