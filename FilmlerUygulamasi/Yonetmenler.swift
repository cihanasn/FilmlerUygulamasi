//
//  Yonetmenler.swift
//  FilmlerUygulamasi
//
//  Created by Cihan AŞAN on 30.08.2024.
//

import Foundation

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init() {
        //
    }
    
    init(yonetmen_id:Int, yonetmen_ad:String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}
