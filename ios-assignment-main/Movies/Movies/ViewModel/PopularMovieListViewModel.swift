//
//  PopularMovieListViewModel.swift
//  Movies
//
//  Created by xdmgzdev on 13/04/2021.
//

import Combine
import Common

class PopularMovieListViewModel: ListViewModelProtocol {
  @Published private(set) var title = "movies_navbar_title".localized
  @Published private(set) var datasource: [PopularMovie] = []
  @Published var showError = false
  var errorMessage: String?
  private var repository: MoviesRepositoryProtocol
  private var cancellables = Set<AnyCancellable>()

  init(repository: MoviesRepositoryProtocol = MoviesRepository()) {
    self.repository = repository
  }

  func loadData() {
    guard let moviesRepo = repository as? MoviesRepository else { return }
    
    moviesRepo.getPopular()

    moviesRepo.$movieList.sink { movies in
      self.handleSuccess(data: movies)
    }
    .store(in: &cancellables)

    moviesRepo.$error.sink { error in
      guard let someError = error else { return }
      self.handleFailure(error: someError)
    }
    .store(in: &cancellables)
  }
}

private extension PopularMovieListViewModel {
  func handleSuccess(data: MovieList) {
    datasource = MovieAdaptor.popular(data.results)
    title = "\("movie_popular_title".localized) (\(datasource.count))"
  }

  func handleFailure(error: Error) {
    errorMessage = "\(error)"
    showError = true
  }
}
