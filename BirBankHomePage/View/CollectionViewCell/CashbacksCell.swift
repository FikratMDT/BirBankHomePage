//
//  CashbacksCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 21.04.23.
//

import UIKit

protocol CellConfig {
    var tes2 : String {get}
}

class CashbacksCell: UICollectionViewCell {
    
    let myData = [Model]()
    
    var myModel = ["cashback"]

    @IBOutlet weak var cashbackLabel: UILabel!
    @IBOutlet weak var cashbackImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cashbackLabel.sizeToFit()
    }
    
    func config(data: CellConfig) {
        self.cashbackLabel.text =  data.tes2
    }

}

struct Model: CellConfig {
    var tes2: String {
        test
    }
    
    let test: String
}
