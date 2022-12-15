//
//  ListViewModelProtocol.swift
//  Movies
//
//  Created by xdmgzdev on 13/04/2021.
//

import Foundation

protocol ListViewModelProtocol: ObservableObject {
  associatedtype DataItem

  var title: String { get }
  var datasource: DataItem { get }
  var showError: Bool { get }
  var errorMessage: String? { get }
  func loadData()
}
