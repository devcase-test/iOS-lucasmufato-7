//
//  NetworkProviderProtocol.swift
//  NetworkProvider
//
//  Created by xdmgzdev on 14/04/2021.
//

import Foundation

public protocol NetworkProviderProtocol {
  var urlSession: SessionProtocol { get }
  var service: NetworkService { get }
  
  func request<T: Decodable>(
    dataType: T.Type,
    onQueue: DispatchQueue,
    completion: @escaping (Result<T, Swift.Error>) -> Void
  )
}
