//
//  CashbackTableViewCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 22.04.23.
//

import UIKit

class CashbackTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var model: Cashback?
    
    var data = ["amount": ["2.33 AZN", "4,44 AZN", "1,29 AZN"],
                "image": ["birbank", "birbank","birbank"]
                ]
    
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
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CashbacksCell", for: indexPath) as! CashbacksCell
        cell.cashbackLabel.text = data["amount"]?[indexPath.row]
        cell.cashbackImage.image = UIImage(named: data["image"]?[indexPath.row] ?? "")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 80, height: 28)
    }
}

