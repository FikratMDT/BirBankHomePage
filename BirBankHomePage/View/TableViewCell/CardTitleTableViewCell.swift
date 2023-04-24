//
//  CardTitleTableViewCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 24.04.23.
//

import UIKit

class CardTitleTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.reloadData()
                
        collectionView.register(UINib(nibName: "\(CardTitleCell.self)", bundle: nil), forCellWithReuseIdentifier: "CardTitleCell")    }
}

extension CardTitleTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CardTitleCell", for: indexPath) as! CardTitleCell
        cell.cardTitle.text  = "Kartlar ve hesablar"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
  
        CGSize(width: collectionView.frame.width, height: 50)
    }
}

