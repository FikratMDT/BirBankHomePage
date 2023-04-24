//
//  CashbacksCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 21.04.23.
//

import UIKit

protocol CellConfig {
    var cashbackTitle : String {get}
}

class CashbacksCell: UICollectionViewCell {
    
//    let myData = [FirstCashbackClass]()
    
    var myModel = ["cashback"]
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var cashbackLabel: UILabel!
    @IBOutlet weak var cashbackImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = 6
        containerView.layer.borderColor = UIColor.gray.cgColor
        containerView.layer.borderWidth = 1
    }
    
    func config(data: CellConfig) {
        self.cashbackLabel.text =  data.cashbackTitle
    }

}
