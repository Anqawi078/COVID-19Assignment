//
//  NewsRepo.swift
//  COVID-19Assignment
//
//  Created by khalil on 22/1/2022.
//

import Foundation
import Moya
import Resolver
import RxSwift

protocol NewsNetworkable {
    func getnews(country  : String) -> Observable<NewsModel>
}
class NewsRepo: BaseRepository<NewsDao>, NewsNetworkable {
    func getnews(country: String) -> Observable<NewsModel> {
        rxRequest(target: .getNews(name: country))
    }
}
