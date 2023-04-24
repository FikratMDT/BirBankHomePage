//
//  CreditTitleTableViewCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 24.04.23.
//

import UIKit

class CreditTitleTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.reloadData()
                
        collectionView.register(UINib(nibName: "\(CreditTitleCell.self)", bundle: nil), forCellWithReuseIdentifier: "CreditTitleCell")    }
    }


extension CreditTitleTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CreditTitleCell", for: indexPath) as! CreditTitleCell
        cell.creditTitle.text  = "Kreditler"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
  
        CGSize(width: collectionView.frame.width, height: 50)
    }
}

