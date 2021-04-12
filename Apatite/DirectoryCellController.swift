//
//  DirectoryCellController.swift
//  Apatite
//
//  Created by Jonathan Andrei on 06/04/21.
//

import UIKit

class DirectoryCellController: UITableViewCell {

    @IBOutlet weak var arrow: UIImageView!
    @IBOutlet weak var dir: UILabel!
    @IBOutlet weak var distance: UILabel!

    func UpdateCellView(direction: DirClassModel) {
        arrow.image = UIImage(systemName: direction.arrow)
        dir.text = direction.dir
        distance.text = direction.distance
    }
}
