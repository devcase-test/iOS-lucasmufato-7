//
//  SessionProtocol.swift
//  NetworkProvider
//
//  Created by xdmgzdev on 14/04/2021.
//

import Foundation

public protocol SessionProtocol {
  func dataTask<T: Decodable>(
    _ request: URLRequest,
    dataType: T.Type,
    completion: @escaping (Result<T, Swift.Error>) -> Void
  ) -> URLSessionDataTask
}

