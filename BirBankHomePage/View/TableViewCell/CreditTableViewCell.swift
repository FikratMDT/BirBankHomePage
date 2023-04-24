//
//  CreditTableViewCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 22.04.23.
//

import UIKit

class CreditTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var data = ["amount": ["3 400 AZN", "96 900  AZN"],
                "title": ["Nagd kredit", "Ipoteka"],
                "image": ["birbank","birbank"]
               ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.reloadData()
                
        collectionView.register(UINib(nibName: "\(CreditListCell.self)", bundle: nil), forCellWithReuseIdentifier: "CreditListCell")
    }
}

extension CreditTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CreditListCell", for: indexPath) as! CreditListCell
        cell.creditImage.layer.cornerRadius = 6
        cell.creditName.text = data["title"]?[indexPath.row]
        cell.creditAmount.text = data["amount"]?[indexPath.row]
        cell.creditImage.image = UIImage(named: data["image"]?[indexPath.row] ?? "")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
  
        CGSize(width: collectionView.frame.width, height: 50)
    }
}
