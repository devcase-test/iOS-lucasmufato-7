//
//  TopRatedListViewController.swift
//  Movies
//
//  Created by xdmgzdev on 16/04/2021.
//

import UIKit

class TopRatedListViewController: UIViewController {

  // MARK: Object lifecycle

  public init() {
    super.init(nibName: nil, bundle: nil)
  }

  @available(*, unavailable)
  required init?(coder _: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: View lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
}
