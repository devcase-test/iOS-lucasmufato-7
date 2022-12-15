//
//  MovieRow.swift
//  Movies
//
//  Created by xdmgzdev on 13/04/2021.
//

import SwiftUI

struct MovieRow: View {
  @StateObject var movie: PopularMovie

  var body: some View {
    HStack(alignment: .center, spacing: 15) {
      Image(uiImage: movie.image)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 70)
        .clipped()
        .cornerRadius(10)

      VStack(alignment: .leading, spacing: 7) {
        Text("\(movie.title)")
        Text("\(movie.overview)")
          .lineLimit(3)
          .font(.footnote)
          .foregroundColor(.secondary)
      }
    }
    .padding(.top, 5)
    .padding(.bottom, 5)
    .onAppear(perform: { movie.fetchImage() })
  }
}

struct MovieRow_Previews: PreviewProvider {
  static var previews: some View {
    MovieRow(movie: PopularMovie.preview)
  }
}
