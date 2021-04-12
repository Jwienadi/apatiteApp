//
//  RestoCollectionViewCell.swift
//  Apatite
//
//  Created by Jessica Wienadi on 07/04/21.
//

import UIKit

class RestoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var restoratingLabel: UILabel!
    @IBOutlet weak var restonameLabel: UILabel!
    @IBOutlet weak var restoImage: UIImageView!
    
       func setup(with resto: Resto) {
           restoImage.image = resto.image
           restonameLabel.text = resto.name
        restoratingLabel.text=resto.rating
       }
}
