//
//  ViewController.swift
//  Aula06_Table_CollectionView_homework
//
//  Created by Victor Pizetta on 14/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    let customTableViewCell = CustomTableViewCell()
    
    @IBOutlet weak var tableView: UITableView!    
    
    var cars = [Cars(car: "", description: "", carImage: "")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewDelegate()
        //contentViewDelegate()

        cars = [Cars(car: "Jeep", description: "Jeep é uma marca atualmente em nome da Stellantis. O termo jipe virou sinônimo de automóveis destinados ao uso fora de estrada, ou off road, normalmente com tração nas quatro rodas.", carImage: "JeepLogo"), Cars(car: "Porsche", description: "Dr. Ing. h.c. F. Porsche AG, geralmente abreviado para Porsche AG, ou somente Porsche, é uma das principais marcas de automóveis esportivos do mundo, criada na Áustria e, hoje, sediada em Stuttgart, Alemanha.", carImage: "PorscheLogo"), Cars(car: "Ferrari", description: "Ferrari é uma fabricante italiana de carros esportivos de luxo com sede em Maranello. Fundada por Enzo Ferrari em 1939 na divisão de corridas da Alfa Romeo com o nome Auto Avio Costruzioni, a empresa construiu seu primeiro carro em 1940.", carImage: "FerrariLogo"), Cars(car: "Lamborghini", description: "Lamborghini é uma fabricante italiana de automóveis desportivos de luxo e de alto desempenho criada originalmente para competir com a Ferrari com sede no município de Sant'Agata Bolognese.", carImage: "LamborghiniLogo")]
    }
    
    private func tableViewDelegate() {
        tableView.dataSource = self
    }
    
//    func contentViewDelegate() {
//        customTableViewCell.collectionView.delegate = self
//        customTableViewCell.collectionView.dataSource = self
//    }

}

//MARK: - Table View

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        let carsPosition = cars[indexPath.row]
        cell.setupTableViewCell(title: carsPosition.car, description: carsPosition.description)
        return cell
    }
}

//MARK: -Collection View

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as? CustomCollectionViewCell else {return UICollectionViewCell()}
        let imageCar = cars[indexPath.row]
        collectionViewCell.setupCollectionViewCell(image: imageCar.carImage)
        return collectionViewCell
    }
    
    
}

