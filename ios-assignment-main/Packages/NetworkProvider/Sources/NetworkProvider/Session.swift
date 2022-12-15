//
//  SessionProtocol.swift
//  NetworkProvider
//
//  Created by xdmgzdev on 14/04/2021.
//

import Foundation

public class Session: SessionProtocol {
  public let session: URLSession

  public init(session: URLSession = .shared) {
    self.session = session
  }

  public func dataTask<T: Decodable>(
    _ request: URLRequest,
    dataType: T.Type,
    completion: @escaping (Result<T, Swift.Error>) -> Void
  ) -> URLSessionDataTask {
    return session.dataTask(with: request) { [weak self] data, response, error in
      completion(Result<T, Swift.Error> {
        guard let self = self else {
          throw Error.operationCancelled
        }

        if let requestError = error {
          throw Error.requestFailed(error: requestError)
        }
        
        try self.validate(response: response, statusCodes: Environment.successStatusCodeRange)
        return try self.decode(data: data, type: dataType)
      })
    }
  }
}

private extension Session {
  func validate(response: URLResponse?, statusCodes: Range<Int>) throws {
    guard let httpResponse = response as? HTTPURLResponse else {
      throw Error.unknownStatusCode
    }

    if !statusCodes.contains(httpResponse.statusCode) {
      throw Error.unexpectedStatusCode(code: httpResponse.statusCode)
    }
  }

  func decode<T: Decodable>(data: Data?, type: T.Type) throws -> T {
    guard let data = data, !data.isEmpty else {
      throw Error.contentEmptyData
    }

    do {
      return try JSONDecoder().decode(type, from: data)
    } catch {
      throw Error.contentDecoding(error: error)
    }
  }
}
