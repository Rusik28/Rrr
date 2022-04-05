//
//  ViewController.swift
//  hoff
//
//  Created by Руслан Алиев on 01.04.2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var secondCollectionView: UICollectionView!

    var objects: [Hoff] = []
    var presenter = Presenter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        addImageToNavBar()
        collectionView.delegate = self
        collectionView.dataSource = self
        secondCollectionView.delegate = self
        secondCollectionView.dataSource = self
//        collectionView.register(UINib(nibName: "HoffCollectionViewCell", bundle: nil),
// forCellWithReuseIdentifier: "HoffCell")
        presenter.view = self
        presenter.fetchProducts()
    }
    
    func didFailureObtainProducts(error: String) {
        
    }
    
    func didSuccessObtainProducts(products: [Hoff]) {
        self.objects = products
        self.collectionView.reloadData()
    }
     
    func addImageToNavBar() {
        if let navController = navigationController {
            let imageLogo = UIImage(named: "Image")
            let widthNavBar = navController.navigationBar.frame.width
            let heigthNavBar = navController.navigationBar.frame.height
            let widthForView = widthNavBar * 0.4
            let logoContainer = UIView(frame: CGRect(x: 0, y: 0, width: widthForView, height: heigthNavBar))
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: widthForView, height: heigthNavBar))
            imageView.image = imageLogo
            imageView.contentMode = .scaleAspectFit
            logoContainer.addSubview(imageView)
            navigationItem.titleView = logoContainer
        }
    }
    
    private func collectionView(_ collectionView: UITableView, didSelectRowAt indexPath: IndexPath) {
        collectionView.deselectRow(at: indexPath, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView {
            return objects.count
        } else {
            return 4
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionView {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hoffCell", for: indexPath) as! HoffCollectionViewCell
//            cell.backgroundColor = .gray
//            cell.set(object: objects[indexPath.row])
            return cell
        } else {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "hoffCellTwo", for: indexPath)
//            cell2.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
            return cell2
        }
        
        
    }
    
}

    

