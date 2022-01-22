//
//  NewsViewController.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import UIKit
import MapKit
import Foundation
import RxCocoa
import RxSwift
import Kingfisher

class NewsViewController: UIViewController , Storyboarded{
    @IBOutlet weak var newsCollectionView: UICollectionView!
    @IBOutlet weak var emptyArtclesView: UIView!
    @IBOutlet weak var countryNameLbl: UILabel!
    @IBOutlet weak var countryImage: UIImageView!
    @IBOutlet weak var countryView: UIView!
    weak var coordinator: MainCoordinator?
    private let disposeBag = DisposeBag()
    var countryNameSubject = BehaviorSubject<String>(value: "")
    var countryName = ""
    var name = ""
    var countryImageUrl = ""
    private let newsViewModel = NewsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emptyArtclesView.isHidden = true
        preparation()
        setUp()
    }
    
    private func preparation() {
        let input = NewsViewModel.Input(countryname: countryNameSubject.asDriverOnErrorJustComplete())
        let output = newsViewModel.transform(input: input)
        getNews(output: output)
    }

    private func setUp() {
        countryNameSubject.onNext(countryName)
        countryNameLbl.text = name
        countryImage.downloadImage(urlString: countryImageUrl  )
        self.newsCollectionView.rx.setDelegate(self).disposed(by: disposeBag)
        self.newsViewModel.newsSubject.bind(to: newsCollectionView.rx.items(dataSource: self.newsViewModel.dataSource())).disposed(by: disposeBag)
    }
    
    private func getNews(output : NewsViewModel.Output) {
        output.getNews.asObservable().subscribe(onNext: {date in
            if date.articles?.isEmpty  == true {
                self.emptyArtclesView.isHidden = false
                self.newsCollectionView.isHidden = true
            } else {
                self.emptyArtclesView.isHidden = true
                self.newsCollectionView.isHidden = false
                
                self.newsViewModel.newsSubject.onNext([NewsSectionModel(header: "", items: date.articles ?? [])])
            }
        }).disposed(by: disposeBag)
    }

}

extension NewsViewController :  UIScrollViewDelegate , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.newsCollectionView.frame.width ), height: self.newsCollectionView.frame.height / 1.4)

    }
    
}
