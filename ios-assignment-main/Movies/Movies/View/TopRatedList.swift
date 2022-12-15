//
//  TopRatedList.swift
//  Movies
//
//  Created by xdmgzdev on 16/04/2021.
//

import SwiftUI

struct TopRatedList: UIViewControllerRepresentable {
  var viewModel: TopRatedMovieViewModel

  init(viewModel: TopRatedMovieViewModel = TopRatedMovieViewModel()) {
    self.viewModel = viewModel
  }

  func makeUIViewController(context _: Context) -> TopRatedListViewController {
    TopRatedListViewController()
  }

  func updateUIViewController(
    _: TopRatedListViewController,
    context _: Context
  ) {
    // Nothing to do here, since our view controller is
    // read-only from the outside.
  }
}
