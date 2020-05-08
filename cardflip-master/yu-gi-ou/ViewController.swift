//
//  ViewController.swift
//  yu-gi-ou
//
//  Created by 小谷快晴 on 2020/04/26.
//  Copyright © 2020 小谷快晴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayOfYugiou = [UIImage(named: "magic"),
                         UIImage(named: "mirror"),
                         UIImage(named: "hole"),
                         UIImage(named: "water")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = flowLayout
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection
        section: Int) -> Int {
        return arrayOfYugiou.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt
        indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.back.image = arrayOfYugiou[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath:IndexPath) -> CGSize {
        CGSize(width: 103, height: 152)
    }
    
    
}
