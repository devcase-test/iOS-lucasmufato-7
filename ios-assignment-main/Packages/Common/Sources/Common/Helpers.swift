//
//  File.swift
//  
//
//  Created by xdmgzdev on 14/04/2021.
//

import Foundation

public func DLog(_ message: String, function: String = #function, line: Int = #line) {
  #if DEBUG
  print(" 🔎 \(function):\(line) - \(message)")
  #endif
}
