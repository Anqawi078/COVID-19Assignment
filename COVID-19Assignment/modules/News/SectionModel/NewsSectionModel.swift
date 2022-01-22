//
//  NewsSectionModel.swift
//  COVID-19Assignment
//
//  Created by khalil on 22/1/2022.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa
import RxDataSources

struct NewsSectionModel {
    var header: String
    var items : [Item]
}

extension NewsSectionModel: AnimatableSectionModelType ,Equatable{
    
    typealias Item = NewsArticle
    var identity: String{
        return header
    }
    init(original: NewsSectionModel, items: [NewsArticle]) {
        self = original
        self.items = items
    }
}

extension NewsArticle: IdentifiableType , Equatable {
    public var identity: String {
        return  source?.id ?? ""
    }
    public static func == (lhs: NewsArticle, rhs: NewsArticle) -> Bool {
        return  lhs.source?.id  == rhs.source?.id
        
    }
}
