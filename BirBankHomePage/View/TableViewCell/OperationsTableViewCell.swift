//
//  OperationsTableViewCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 22.04.23.
//

import UIKit

class OperationsTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var model = [Operation]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.reloadData()
                
        collectionView.register(UINib(nibName: "\(OperationsCell.self)", bundle: nil), forCellWithReuseIdentifier: "OperationsCell")
    }
}


extension OperationsTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "OperationsCell", for: indexPath) as! OperationsCell
//        cell.operationsTitle.text = model[indexPath.row].operations?.title
        cell.layer.cornerRadius = 10
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 60, height: collectionView.frame.height)
    }
}
