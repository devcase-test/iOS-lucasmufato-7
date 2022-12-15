//
//  MoviesRepository.swift
//  Movies
//
//  Created by xdmgzdev on 14/04/2021.
//

import Combine
import Foundation
import NetworkProvider

class MoviesRepository: MoviesRepositoryProtocol {
  var client: NetworkProviderProtocol?
  @Published var movieList = MovieList()
  @Published var error: Swift.Error?

  func getPopular() {
    client = MovieServiceClient(clientService: PopularMoviesService())
    fetchMovies(client: client!)
  }

  func getTopRated() {
    let client = MovieServiceClient(clientService: TopRatedMoviesService())
    fetchMovies(client: client)
  }
}

private extension MoviesRepository {
  func fetchMovies(client: NetworkProviderProtocol) {
    client.request(dataType: MovieList.self, onQueue: .main) { result in
      do {
        self.movieList = try result.get()
      } catch {
        self.error = error
      }
    }
  }
}
