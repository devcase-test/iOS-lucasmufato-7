//
//  MovieServiceClient.swift
//  Movies
//
//  Created by xdmgzdev on 14/04/2021.
//

import Foundation
import NetworkProvider

struct MovieServiceClient: NetworkProviderProtocol {
  let urlSession: SessionProtocol
  let service: NetworkService

  init(session: SessionProtocol = Session(), clientService: NetworkService) {
    urlSession = session
    service = clientService
  }

  func request<T>(
    dataType: T.Type,
    onQueue: DispatchQueue = .main,
    completion: @escaping (Result<T, Swift.Error>) -> Void
  ) where T: Decodable {
    let task = urlSession.dataTask(service.urlRequest, dataType: dataType) { result in
      onQueue.async {
        completion(result)
      }
    }
    task.resume()
  }
}
