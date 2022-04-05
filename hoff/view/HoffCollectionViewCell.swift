//
//  HoffCollectionViewCell.swift
//  hoff
//
//  Created by Руслан Алиев on 01.04.2022.
//

import UIKit

class HoffCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var sellLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var oldPriceLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var heartView: UIImageView!
    @IBOutlet weak var ratingsOne: UIImageView!
    @IBOutlet weak var ratingsTwo: UIImageView!
    @IBOutlet weak var ratingsThird: UIImageView!
    @IBOutlet weak var ratingsFourht: UIImageView!
    @IBOutlet weak var ratingsFives: UIImageView!

    
    func set(object product: Product) {
        self.imageViewOne.downloaded(from: product.image)
        self.priceLabel.text = "\(product.prices) ₽"
        self.nameLabel.text = product.name
}
    
    
}
