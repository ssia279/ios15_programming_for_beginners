//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Johnson Wang on 2/8/22.
//

import Foundation

struct ExploreItem {
  let name: String?
  let image: String?
}

extension ExploreItem {
  init(dict: [String: String]) {
    self.name = dict["name"]
    self.image = dict["image"]
  }
}
