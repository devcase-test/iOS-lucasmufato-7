//
//  PopularMovie.swift
//  Movies
//
//  Created by xdmgzdev on 19/04/2021.
//

import ImageCache
import UIKit

class PopularMovie: Identifiable, ObservableObject {
  @Published var image: UIImage

  let id: Int
  let title: String
  let overview: String
  let posterPath: String
  let imageSize: String
  let item: ImageItem

  func fetchImage() {
    ImageCache.public.load(url: item.url as NSURL, item: item) { fetchedItem, image in
      if let img = image, img != fetchedItem.image {
        self.image = img
        self.item.image = img
      }
    }
  }

  func onReuse() {
    ImageCache.public.cancelLoad(item.url as NSURL)
    self.image = UIImage(systemName: "photo")!
    self.item.image = UIImage(systemName: "photo")!
  }

  init(
    id: Int,
    title: String,
    overview: String,
    posterPath: String,
    imageSize: String = MovieImageSize.PosterSize.w154.rawValue
  ) {
    self.id = id
    self.title = title
    self.overview = overview
    self.posterPath = posterPath
    self.imageSize = imageSize
    self.item = ImageItem(
      image: UIImage(systemName: "photo")!,
      url: URL(string: "https://image.tmdb.org/t/p/\(imageSize)\(posterPath)")!
    )

    self.image = UIImage(systemName: "photo")!
  }

  #if DEBUG
  init(title: String, overview: String) {
    self.title = title
    self.overview = overview
    id = 000
    posterPath = "/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg"
    imageSize = "w154"
    item = ImageItem(
      image: UIImage(systemName: "photo")!,
      url: URL(string: "https://image.tmdb.org/t/p/\(imageSize)\(posterPath)")!
    )

    self.image = UIImage(systemName: "photo")!
  }

  static var preview: PopularMovie {
    PopularMovie(
      title: "Best movie ever",
      overview: """
      This an overview of the movie, with a long enough description.
      This will allow to check long text descriptions. Sed ut perspiciatis,
      unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,
      totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae
      vitae dicta sunt, explicabo.
      """
    )
  }
  #endif
}
