//
//  MoviesApp.swift
//  Movies
//
//  Created by xdmgzdev on 12/04/2021.
//

import SwiftUI

@main
struct MoviesApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .onAppear(perform: setAppareance)
    }
  }
}

private extension MoviesApp {
  func setAppareance() {
    let attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30)]
    UINavigationBar.appearance().largeTitleTextAttributes = attrs
  }
}
