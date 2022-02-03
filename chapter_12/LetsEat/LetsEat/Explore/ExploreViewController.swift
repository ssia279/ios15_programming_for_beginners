//
//  ExploreViewController.swift
//  LetsEat
//
//  Created by Johnson Wang on 2/1/22.
//

import UIKit

class ExploreViewController: UIViewController {

  @IBOutlet var collectionView: UICollectionView!
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
  }
  
  @IBAction func unwindLocationCancel(segue: UIStoryboardSegue) {
    
  }
    
}

extension ExploreViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 20
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exploreCell", for: indexPath)
    
    return cell
  }
  
  
}

extension ExploreViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
    
    return headerView
  }
}
