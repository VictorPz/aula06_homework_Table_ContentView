//
//  CustomCollectionViewCell.swift
//  Aula06_Table_CollectionView_homework
//
//  Created by Victor Pizetta on 14/03/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageCarXIB: UIImageView!
     
    static let identifier = "CustomCollectionViewCell"
    
    func setupCollectionViewCell(image: String) {
        if let images = UIImage(named: image) {
            imageCarXIB.image = images
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
