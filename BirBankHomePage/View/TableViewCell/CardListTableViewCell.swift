//
//  CardListTableViewCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 22.04.23.
//

import UIKit

class CardListTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var data = ["amount": ["33,21 AZN", "254  AZN"],
                "title": ["Maas karti", "Kredit karti"],
                "image": ["birbank","birbank"]
               ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.reloadData()
                
        collectionView.register(UINib(nibName: "\(CardsListCell.self)", bundle: nil), forCellWithReuseIdentifier: "CardsListCell")
    }
}

extension CardListTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data["amount"]?.count  ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CardsListCell", for: indexPath) as! CardsListCell
        cell.cardNameLabel.text = data["amount"]?[indexPath.row]
        cell.cardAmountLabel.text = data["title"]?[indexPath.row]
        cell.cardImage.image = UIImage(named: data["image"]?[indexPath.row] ?? "")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 50)
    }
}
