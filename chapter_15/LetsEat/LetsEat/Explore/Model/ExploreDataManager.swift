//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Johnson Wang on 2/8/22.
//

import Foundation

class ExploreDataManager {
  
  private var exploreItems: [ExploreItem] = []
    
  func fetch() {
    for data in loadData() {
      print(data)
      self.exploreItems.append(ExploreItem(dict: data))
    }
  }
  
  func numberOfExploreItems() -> Int {
    return self.exploreItems.count
  }
  
  func exporeItem(at index: Int) -> ExploreItem {
    return self.exploreItems[index]
  }
  
  private func loadData() -> [[String:String]] {
    let decoder = PropertyListDecoder()
    
    if let path = Bundle.main.path(forResource: "ExploreData", ofType: "plist"),
       let exploreData = FileManager.default.contents(atPath: path),
       let exploreItems = try? decoder.decode([[String:String]].self, from: exploreData) {
      return exploreItems
    }
    return [[:]]
  }
  
}
