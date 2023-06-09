//
//  AddProductTableViewCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 22.04.23.
//

import UIKit

class AddProductTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var callback: (()->())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.reloadData()
                
        collectionView.register(UINib(nibName: "\(AddProductCell.self)", bundle: nil), forCellWithReuseIdentifier: "AddProductCell")
    }
}

extension AddProductTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "AddProductCell", for: indexPath) as! AddProductCell
        cell.addProductButton.layer.cornerRadius = 10
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width  * 0.8 , height: 64)
    }
}
