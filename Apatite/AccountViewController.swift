//
//  AccountViewController.swift
//  Apatite
//
//  Created by Jonathan Andrei on 12/04/21.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var cardOne: UIView!
    @IBOutlet weak var cardTwo: UIView!
    @IBOutlet weak var signOutButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        avatar.layer.cornerRadius = 60
        avatar.layer.masksToBounds = true
        
        cardOne.layer.cornerRadius = 10
        cardOne.layer.shadowColor = UIColor.darkGray.cgColor
        cardOne.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cardOne.layer.shadowRadius = 2.0
        cardOne.layer.shadowOpacity = 0.5
        cardOne.layer.masksToBounds = false
        cardOne.clipsToBounds = false
        
        cardTwo.layer.cornerRadius = 10
        cardTwo.layer.shadowColor = UIColor.darkGray.cgColor
        cardTwo.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cardTwo.layer.shadowRadius = 2.0
        cardTwo.layer.shadowOpacity = 0.5
        cardTwo.layer.masksToBounds = false
        cardTwo.clipsToBounds = false
        
        signOutButton.layer.cornerRadius = 8
        signOutButton.layer.shadowColor = UIColor.darkGray.cgColor
        signOutButton.layer.shadowOffset = CGSize(width: 0, height: 1)
        signOutButton.layer.shadowRadius = 2.0
        signOutButton.layer.shadowOpacity = 0.7
        signOutButton.layer.masksToBounds = false
        signOutButton.clipsToBounds = false
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func signOutAction(_ sender: UIButton) {
        showAlert()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func showAlert() {
        let alert = UIAlertController(title: "Signing Out", message: "Are you sure you want to sign out?", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Sign Out", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}


