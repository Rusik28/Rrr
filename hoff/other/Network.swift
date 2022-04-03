//
//  Network.swift
//  hoff
//
//  Created by Руслан Алиев on 03.04.2022.
//

import Foundation
import UIKit
import SDWebImage
import Alamofire

class Network {
    
    func fetchEvents(ifSuccess: @escaping ([Hoff]) -> Void, ifFailure: @escaping (String) -> Void) {
        
        AF
            .request("https://hoff.ru/api/v2/get_products_new?category_id=320&sort_by=popular&sort_type=desc&limit=40&offset=0&device_id=3a7612bcc84813b5&isAndroid=true&app_version=1.8.16&location=19&xhoff=36f40b3d665cdb9435904796172dde5e3f13aa8a%3A4630", method: .get)
            .validate()
            .responseData { (response) in
                switch response.result {
                case .success(_):
                    if let data = try? response.result.get() {
                        let result = try! JSONDecoder().decode([Hoff].self, from: data)
                        ifSuccess(result)
                    }
                case .failure(_): ifFailure(response.error?.localizedDescription ?? "Ошибка")
                    
                }
            }
    }
}
