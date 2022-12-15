//
//  Adaptor.swift
//  Movies
//
//  Created by xdmgzdev on 19/04/2021.
//

import Foundation

struct MovieAdaptor {
  static func popular(_ movies: [Movie]) -> [PopularMovie] {
    movies.map { Self.toPopular($0) }
  }

  static func toPopular(_ movie: Movie) -> PopularMovie {
    return PopularMovie(
      id: movie.id,
      title: movie.title,
      overview: movie.overview,
      posterPath: movie.posterPath
    )
  }
}
