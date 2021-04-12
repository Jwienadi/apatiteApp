//
//  MenuCollectionViewCell.swift
//  Apatite
//
//  Created by Jessica Wienadi on 08/04/21.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var menunameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    func setup(with menu: Menu) {
        menuImageView.image = menu.image
        menunameLabel.text = menu.name
        priceLabel.text=menu.price
    }
}
