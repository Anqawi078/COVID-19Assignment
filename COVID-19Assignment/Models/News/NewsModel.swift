//
//  NewsModel.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Foundation

// MARK: - NewsModel
public struct NewsModel: Codable {
    public var status: String?
    public var totalResults: Int?
    public var articles: [NewsArticle]?

    enum CodingKeys: String, CodingKey {
        case status
        case totalResults
        case articles
    }

    public init(status: String?, totalResults: Int?, articles: [NewsArticle]?) {
        self.status = status
        self.totalResults = totalResults
        self.articles = articles
    }
}

// MARK: - NewsArticle
public struct NewsArticle: Codable {
    public var source: NewsSource?
    public var author: String?
    public var title: String?
    public var articleDescription: String?
    public var url: String?
    public var urlToImage: String?
    public var publishedAt: String?
    public var content: String?

    enum CodingKeys: String, CodingKey {
        case source
        case author
        case title
        case articleDescription = "description"
        case url
        case urlToImage
        case publishedAt
        case content
    }

    public init(source: NewsSource?, author: String?, title: String?, articleDescription: String?, url: String?, urlToImage: String?, publishedAt: String?, content: String?) {
        self.source = source
        self.author = author
        self.title = title
        self.articleDescription = articleDescription
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
        self.content = content
    }
}

// MARK: - NewsSource
public struct NewsSource: Codable {
    public var id: String?
    public var name: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
    }

    public init(id: String?, name: String?) {
        self.id = id
        self.name = name
    }
}
