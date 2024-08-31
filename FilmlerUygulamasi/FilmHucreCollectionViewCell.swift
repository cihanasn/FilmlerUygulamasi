//
//  FilmHucreCollectionViewCell.swift
//  FilmlerUygulamasi
//
//  Created by Cihan AŞAN on 30.08.2024.
//

import UIKit

protocol FilmHucreCollectionViewCellProtocol {
    func sepeteEkle(indexPath:IndexPath)
}

class FilmHucreCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelFilmAdi: UILabel!
    @IBOutlet weak var labelFilmFiyat: UILabel!
    @IBOutlet weak var imageViewFilmResim: UIImageView!
    
    var hucreProtocol:FilmHucreCollectionViewCellProtocol?
    var indexPath:IndexPath?
    
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
}
