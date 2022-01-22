//
//  BaseRepository.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import Alamofire
import Foundation
import Moya
import RxSwift

class BaseRepository<R: ITargetType> {
    var provider = MoyaProvider<R>(plugins: [NetworkLoggerPlugin()])
}

extension BaseRepository {
    func rxRequest<T: Decodable>(target: R) -> Observable<T> where T: Decodable {
        logRequist(task: target.task)
        return Observable.create { [self] observer -> Disposable in
            self.provider.rx.request(target)
                .filterSuccessfulStatusCodes()
                .subscribe { apiResult in
                    switch apiResult {
                    case let .success(result):
                        do {
                            let object = try JSONDecoder().decode(T.self, from: result.data)
                            observer.onNext(object)
                            observer.onCompleted()
                            break
                        } catch {
                            
                            print(error)
                            observer.onError(error)
                            observer.onCompleted()
                        }
                    case let .failure(moyaError):
                        observer.onError(handelMoyaError(error: moyaError as? MoyaError) as Error)
                        observer.onCompleted()
                    }
                }
        }
    }
}

func handelMoyaError(error: MoyaError?) -> ErrorBase {
    switch error {
    case let .statusCode(response):
        
        do {
            let errorBase = try JSONDecoder().decode(ErrorBase.self, from: response.data)
            errorBase.statusCode = response.statusCode
            return errorBase
        } catch {
            return ErrorBase(message: "something_went_wrong")
        }
    case .imageMapping, .jsonMapping, .stringMapping, .objectMapping, .encodableMapping, .underlying, .requestMapping, .parameterEncoding, .none:
        return ErrorBase(message: "something_went_wrong")
    }
}

func logRequist(task: Task) {
    switch task {
    case .requestPlain:
        break
    case .requestData:
        break
    case .requestJSONEncodable:
        break
    case .requestCustomJSONEncodable(_, encoder: _):
        break
    case .requestParameters(parameters: let parameters, encoding: _):
        print(parameters)
    case let .requestCompositeData(bodyData: bodyData, urlParameters: urlParameters):
       
        print(urlParameters)
    case .requestCompositeParameters(bodyParameters: _, bodyEncoding: _, urlParameters: let urlParameters):
        print(urlParameters)
    case .uploadFile:
        break
    case .uploadMultipart:
        break
    case let .uploadCompositeMultipart(_, urlParameters: urlParameters):
        print(urlParameters)
    case .downloadDestination:
        break
    case .downloadParameters(parameters: let parameters, encoding: _, destination: _):
        print(parameters)
    }
}

public class ErrorBase: Codable, Error {
    public var message: String?
    public var errorCode: Int?
    public var statusCode: Int?
    public var success: Bool?

    enum CodingKeys: String, CodingKey {
        case message = "ErrorMessage"
        case errorCode
        case statusCode
        case success = "Success"
    }

    init(message: String?, statusCode: Int? = 400) {
        self.message = message
        self.statusCode = statusCode
    }
}
