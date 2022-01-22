//
//  NewsViewModel.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation
import Resolver
import RxCocoa
import RxDataSources
import RxSwift
import Kingfisher

class NewsViewModel : ViewModelType {
    var newsSubject = BehaviorSubject<[NewsSectionModel]>(value: [NewsSectionModel(header: "", items: [])])
    
    @Injected var newsRepo: NewsNetworkable
    
    struct Input {
        let countryname: Driver<String>
    }
    
    struct Output {
        let fetching: Driver<Bool>
        let error: Driver<Error>
        let getNews : Driver<NewsModel>
    }
    
    func transform(input: Input) -> Output {
        
        let activityIndicator = ActivityIndicator()
        let errorTracker = ErrorTracker()
        
        let news = input.countryname.flatMapLatest { name -> Driver<NewsModel> in
            self.newsRepo.getnews(country: name)
                .trackActivity(activityIndicator)
                .trackError(errorTracker)
                .asDriverOnErrorJustComplete()
        }
        
        let fetching = activityIndicator.asDriver()
        let errors = errorTracker.asDriver()
        
        return Output(fetching: fetching, error: errors, getNews: news )
        
    }
    
    func dataSource() -> RxCollectionViewSectionedAnimatedDataSource<NewsSectionModel> {
        return RxCollectionViewSectionedAnimatedDataSource<NewsSectionModel>(animationConfiguration: AnimationConfiguration(insertAnimation: .fade, reloadAnimation: .fade, deleteAnimation: .fade),configureCell: { ds, cv, indexPath, item in

            guard let cell = cv.dequeueReusableCell(withReuseIdentifier: "NewsCell", for: indexPath) as? NewsCell else {
                return UICollectionViewCell()
            }
            cell.titileLbl.text = item.title ?? ""
            cell.descriptionLbl.text = item.articleDescription ?? ""
            cell.contentLbl.text = item.content ?? ""
            cell.authorLbl.text = item.author ?? ""
            cell.imageNews.downloadImage(urlString: item.urlToImage ?? ""  )
           
            return cell

        })
    }
    
}
