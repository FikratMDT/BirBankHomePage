//
//  CashbackTableViewCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 22.04.23.
//

import UIKit

class CashbackTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.reloadData()
                
        collectionView.register(UINib(nibName: "\(CashbacksCell.self)", bundle: nil), forCellWithReuseIdentifier: "CashbacksCell")
    }
}

extension CashbackTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CashbacksCell", for: indexPath) as! CashbacksCell
        cell.cashbackLabel.text = "edv"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 60, height: 28)
    }
}

