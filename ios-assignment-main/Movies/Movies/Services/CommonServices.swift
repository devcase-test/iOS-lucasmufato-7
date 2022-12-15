//
//  MovieService.swift
//  Movies
//
//  Created by xdmgzdev on 14/04/2021.
//

import Foundation
import PlistReader

enum CommonMovieService {
  static let supportedLanguages = Set(Bundle.main.localizations)

  static var baseURL: String {
    let apiBaseURL: String = try! PlistReader.value(for: "API_BASE_URL")
    let apiVersion: String = try! PlistReader.value(for: "API_VERSION")
    return "https://\(apiBaseURL)/\(apiVersion)"
  }

  static var baseImagesURL: String {
    let apiBaseURL: String = try! PlistReader.value(for: "API_IMAGES_BASE_URL")
    return "https://\(apiBaseURL)"
  }

  static var apiKey: String {
    try! PlistReader.value(for: "API_KEY")
  }

  static var language: String {
    guard let current = Locale.current.languageCode,
          CommonMovieService.supportedLanguages.contains(current) else {
      return "en"
    }

    return current
  }

  static var queryItems: [URLQueryItem] {
    let apiKeyItem = URLQueryItem(name: "api_key", value: CommonMovieService.apiKey)
    let language = URLQueryItem(name: "language", value: CommonMovieService.language)
    return [apiKeyItem, language]
  }
}
