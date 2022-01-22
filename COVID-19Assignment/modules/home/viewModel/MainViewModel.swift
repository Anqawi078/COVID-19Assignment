//
//  MainViewModel.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.

 import Foundation
 import Resolver
 import RxCocoa
 import RxDataSources
 import RxSwift

class MainViewModel : ViewModelType {
    
    @Injected var mainRepo: MainNetworkable
    struct Input {
        let trigger: Driver<Void>
        let name: Driver<String>
        
    }
    
    struct Output {
        let fetching: Driver<Bool>
        let error: Driver<Error>
        let getCountries : Driver<TrackingModel>
        let getRESTCountries: Driver<[RestCountriesRESTCountriesModel]>
    }
    
    func transform(input: Input) -> Output {
        
        let activityIndicator = ActivityIndicator()
        let errorTracker = ErrorTracker()
        
        let countries = input.trigger.flatMapLatest{ _ -> Driver<TrackingModel> in
            self.mainRepo.getCountries(date_from: "2020-10-10", date_to: "2020-10-10")
                        .trackActivity(activityIndicator)
                        .trackError(errorTracker)
                        .asDriverOnErrorJustComplete()
        }
        let restCountries = input.name.flatMap { (name) -> Driver<[RestCountriesRESTCountriesModel]> in
            let countriesNames = name.components(separatedBy: ["\n", " ", "\r"])
            let countriesMap =  countriesNames.map { (name) ->  Driver<RestCountriesRESTCountriesModel> in
                self.mainRepo.getCountry(name: name)
                    .trackActivity(activityIndicator)
                    .trackError(errorTracker)
                    .asDriverOnErrorJustComplete()
            }
            let combine =  Driver<RestCountriesRESTCountriesModel>.combineLatest(countriesMap)
            return combine.asDriver()
        }
        
                let fetching = activityIndicator.asDriver()
                let errors = errorTracker.asDriver()
        
        return Output(fetching: fetching, error: errors, getCountries: countries, getRESTCountries: restCountries)
        
    }
    
}
