//
//  signInViewController.swift
//  Apatite
//
//  Created by Jessica Wienadi on 05/04/21.
//

import UIKit
extension UITextField{
    //function khusus email icon
    func setIcon(_ image: UIImage) {
       let iconView = UIImageView(frame:
                      CGRect(x: 2, y: 5, width: 30, height: 20))
       iconView.image = image
       let iconContainerView: UIView = UIView(frame:
                      CGRect(x: 2, y: 0, width: 50, height: 30))
       iconContainerView.addSubview(iconView)
       leftView = iconContainerView
       leftViewMode = .always
    }
    //function untuk garis hitam saja
    func setBottomBorder(){
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset=CGSize(width:0.0,height:1.0)
        self.layer.shadowOpacity=1.0
        self.layer.shadowRadius=0.0
    }
}

class signInViewController: UIViewController {

//    let envelopeIcon = UIImage(systemName: "envelope")

    @IBOutlet weak var emailField: UITextField!{
        //nambah icon saja
        didSet {
            let iconemail = UIImage(systemName: "envelope")
//            emailField.tintColor = UIColor(named:"apatiteBlue")
            emailField.tintColor = UIColor.black
             emailField.setIcon(iconemail!)
          }
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //garis hitam bawah textfield
        emailField.setBottomBorder()
        
        //icon samping
        emailField.leftViewMode = UITextField.ViewMode.always
        emailField.leftViewMode = .always

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
