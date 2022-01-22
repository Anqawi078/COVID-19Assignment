//
//  MainRepo.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation
import Moya
import Resolver
import RxSwift

protocol MainNetworkable {
    func getCountries(date_from: String , date_to : String) -> Observable<TrackingModel>
    func  getCountry(name : String) -> Observable<RestCountriesRESTCountriesModel>
}
class MainRepo: BaseRepository<MainDao>, MainNetworkable {
    func getCountry(name: String) -> Observable<RestCountriesRESTCountriesModel> {
        rxRequest(target: .getCountry(name: name))
    }
    func getCountries(date_from: String, date_to: String) -> Observable<TrackingModel> {
        rxRequest(target: .getCountries(date_from: date_from , date_to : date_to ))
    }
}

