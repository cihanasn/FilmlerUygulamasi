//
//  ViewController.swift
//  FilmlerUygulamasi
//
//  Created by Cihan AŞAN on 30.08.2024.
//

import UIKit

class ViewController:UIViewController {

    @IBOutlet weak var kategoriTableView: UITableView!
    
    var kategorilerListe = [Kategoriler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
        let k2 = Kategoriler(kategori_id: 1, kategori_ad: "Bilim Kurgu")
        
        kategorilerListe.append(k1)
        kategorilerListe.append(k2)
        
        kategoriTableView.delegate = self
        kategoriTableView.dataSource = self
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kategorilerListe.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kategori = kategorilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kategoriHucre", for: indexPath) as! KategoriHucreTableViewCell
        
        cell.labelKategoriAd.text = kategori.kategori_ad
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        self.performSegue(withIdentifier: "toFilm", sender: indexPath.row)
    }
}

