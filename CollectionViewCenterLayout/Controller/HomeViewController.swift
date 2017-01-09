//
//  HomeViewController.swift
//  CollectionViewCenterLayout
//
//  Created by John Lima on 09/01/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import UIKit
import KTCenterFlowLayout

class HomeViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet fileprivate weak var collectionView: UICollectionView!
    
    fileprivate let cellName = "cell"
    fileprivate var items = [Model]()
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getData()
        updateUI()
    }
    
    // MARK: - Actions
    fileprivate func updateUI() {
        
        
        let layout = KTCenterFlowLayout()
        
        layout.itemSize = CGSize(width: 150, height: 164)
        layout.minimumInteritemSpacing = 8
        layout.minimumLineSpacing = 8
        
        collectionView.setCollectionViewLayout(layout, animated: true)
        
        collectionView.reloadData()
    }
    
    fileprivate func getData() {
        items = Model.getData()
    }
    
    fileprivate func setupCell(cell: AnyObject?, index: Int) {
        
        let imageView = cell?.viewWithTag(1) as? UIImageView
        let label = cell?.viewWithTag(2) as? UILabel
        
        imageView?.image = items[index].image
        
        label?.text = items[index].title?.rawValue.uppercased()
        label?.textColor = .black
        
        cell?.layer.borderWidth = 1
        cell?.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // MARK: - CollectionView DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellName, for: indexPath)
        setupCell(cell: cell, index: indexPath.item)
        return cell
    }
}
