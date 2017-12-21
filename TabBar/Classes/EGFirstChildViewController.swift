//
//  EGFirstChildViewController.swift
//  TabBar
//
//  Created by PD on 2017/12/21.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

private let CELL_ID = "Collection_cell_ID"


class ChildCollectionViewLayout: UICollectionViewLayout {
    override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class EGFirstChildViewController: EGBasicViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.hidesBottomBarWhenPushed = true

        let collectionLayout = UICollectionViewFlowLayout.init()
        
        collectionLayout.itemSize = CGSize.init(width: 110, height: 100)
        collectionLayout.minimumLineSpacing = 8
        collectionLayout.minimumInteritemSpacing = 8
        collectionLayout.sectionInset = UIEdgeInsetsMake(8, 8, 2, 8)
        
        let collectionView = UICollectionView.init(frame: SCREEN_BOUNDS, collectionViewLayout: collectionLayout)
        collectionView.backgroundColor = UIColor.white
        collectionView.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: CELL_ID)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        self.view = collectionView
    }
}

extension EGFirstChildViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CELL_ID, for: indexPath)
        cell.backgroundColor = UIColor.randomColor
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
}
