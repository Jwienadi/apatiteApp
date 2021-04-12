//
//  DiscoverViewController.swift
//  Apatite
//
//  Created by Jessica Wienadi on 06/04/21.
//

import UIKit

class DiscoverViewController: UIViewController {

    @IBOutlet weak var restoCollectionView: UICollectionView!
    let searchController = UISearchController(searchResultsController: nil)
    let rightBarButtonItem = UIBarButtonItem(
        image: UIImage(systemName: "plus.square"),
        style: .plain,
        target: self,
        action: #selector(tapButton)
    )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     

        //collectionView
        restoCollectionView.dataSource = self
        restoCollectionView.delegate=self
        restoCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        
        navigationItem.rightBarButtonItem=rightBarButtonItem
        navigationItem.searchController=searchController
//        navigationItem.searchController?.searchBar.tintColor=UIColor.white
        
//        searchController.searchBar.delegate=self
        rightBarButtonItem.tintColor=UIColor.white
        searchController.searchBar.tintColor=UIColor.black
        searchController.searchBar.searchTextField.backgroundColor=UIColor.white
        
        
//        searchController.searchBar.tintColor=UIColor=UIColor.white
        // Do any additional setup after loading the view.
    }
  
    @objc func tapButton(){
        print("tap!")
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
extension DiscoverViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestoCollectionViewCell", for: indexPath) as! RestoCollectionViewCell
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.layer.borderWidth = 1.0

        cell.contentView.layer.borderColor = UIColor.lightGray.cgColor
        cell.contentView.layer.masksToBounds = true

        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        cell.setup(with: restos[indexPath.row])
       
               
        
        return cell
    }
    
}
extension DiscoverViewController: UICollectionViewDelegateFlowLayout {
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
return CGSize(width: 151, height: 175)
    }
}
extension DiscoverViewController: UICollectionViewDelegate {
func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 3 {
            performSegue(withIdentifier: "DiscoverRestoDetails", sender: self)
        }
    }
}



