struct MovieList: Decodable {
  let page: Int
  let results: [Movie]
  let totalPages: Int
  let totalResults: Int

  enum CodingKeys: String, CodingKey {
    case page
    case results
    case totalPages = "total_pages"
    case totalResults = "total_results"
  }

  init(page: Int = 1, results: [Movie] = [], totalPages: Int = 1, totalResults: Int = 0) {
    self.page = page
    self.results = results
    self.totalPages = totalPages
    self.totalResults = totalResults
  }
}
