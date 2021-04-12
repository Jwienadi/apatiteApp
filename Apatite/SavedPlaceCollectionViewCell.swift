//
//  SavedPlaceCollectionViewCell.swift
//  Apatite
//
//  Created by Jonathan Andrei on 07/04/21.
//

import UIKit

class SavedPlaceCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var restoImage: UIImageView!
    @IBOutlet weak var restoName: UILabel!
    @IBOutlet weak var restoRating: UILabel!
    
    func setup(with resto: Resto) {
        restoImage.image = resto.image
        restoName.text = resto.name
        restoRating.text = resto.rating
    }
    
}
