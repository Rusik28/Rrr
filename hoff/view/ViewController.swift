//
//  ViewController.swift
//  hoff
//
//  Created by Руслан Алиев on 01.04.2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
   
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var secondCollectionView: UICollectionView!

    var objects: [Product] = []
    var objectsTwo: [Hoff] = []
    var presenter = Presenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
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
        self.objectsTwo = products
        self.collectionView.reloadData()
    }

}

    

