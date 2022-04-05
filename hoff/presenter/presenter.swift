//
//  presenter.swift
//  hoff
//
//  Created by Руслан Алиев on 03.04.2022.
//

import Foundation

class Presenter {
    
    var network = Network()
    var view: ViewController?
    
    func fetchProducts() {
        network.fetchEvents { products in
   //         self.view?.didSuccessObtainProducts(products: products)
        } ifFailure: { error in
            print(error)
            self.view?.didFailureObtainProducts(error: error)
        }
    }
}
