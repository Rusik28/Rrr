//
//  presenter.swift
//  hoff
//
//  Created by Руслан Алиев on 03.04.2022.
//

import Foundation
import UIKit

class Presenter {
    
    var network = Network()
    var view: ViewController?
    
    func fetchProducts() {
        network.fetchEvents { products in
            self.view?.didSuccessObtainProducts(products: [products])
        } ifFailure: { error in
            print(error)
            self.view?.didFailureObtainProducts(error: error)
        }
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView {
            return objects.count
        } else {
            return objects.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "hoffCell", for: indexPath) as! HoffCollectionViewCell
            cell.backgroundColor = .gray
            cell.set(object: objects[indexPath.row])
            return cell
        } else {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "hoffCellTwo", for: indexPath)
            return cell2
        }
        
    }
    
    private func collectionView(_ collectionView: UITableView, didSelectRowAt indexPath: IndexPath) {
        collectionView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
