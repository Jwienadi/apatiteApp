//
//  MapsController.swift
//  Apatite
//
//  Created by Jonathan Andrei on 05/04/21.
//

import UIKit

class MapsViewController: UIViewController {
    
    @IBOutlet weak var estMinLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    @IBOutlet weak var arrTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}
