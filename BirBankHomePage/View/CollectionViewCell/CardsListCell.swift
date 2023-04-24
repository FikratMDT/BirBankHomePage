//
//  CardsListCell.swift
//  BirBankHomePage
//
//  Created by Fikrat on 21.04.23.
//

import UIKit

class CardsListCell: UICollectionViewCell {

    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var cardNameLabel: UILabel!
    @IBOutlet weak var cardAmountLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        cardImage.layer.cornerRadius = 6
    }

}
