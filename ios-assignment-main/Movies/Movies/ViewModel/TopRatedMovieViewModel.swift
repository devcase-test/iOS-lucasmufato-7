//
//  TopRatedMovieViewModel.swift
//  Movies
//
//  Created by xdmgzdev on 16/04/2021.
//

import Foundation

class TopRatedMovieViewModel: ListViewModelProtocol {
  @Published private(set) var title = "movies_navbar_title".localized
  @Published private(set) var datasource: [Movie] = []
  @Published var showError = false
  var errorMessage: String? = nil
  private var repository: MoviesRepositoryProtocol

  init(repository: MoviesRepositoryProtocol = MoviesRepository()) {
    self.repository = repository
  }

  func loadData() {}
}
