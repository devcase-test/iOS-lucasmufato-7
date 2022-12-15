//
//  PopularMoviesService.swift
//  Movies
//
//  Created by xdmgzdev on 19/04/2021.
//

import Foundation
import NetworkProvider

struct PopularMoviesService: NetworkService {
  var baseURL: String {
    CommonMovieService.baseURL
  }

  var method: HttpMethod {
    .get
  }

  var httpBody: Encodable? {
    nil
  }

  var headers: [String: String]? {
    [HttpHeaderKey.accept: MimeType.json.rawValue]
  }

  var queryParameters: [URLQueryItem]? {
    CommonMovieService.queryItems
  }

  var timeout: TimeInterval? {
    30
  }

  var path: String {
    "/movie/popular"
  }
}
