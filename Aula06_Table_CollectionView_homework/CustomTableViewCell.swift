//
//  CustomTableViewCell.swift
//  Aula06_Table_CollectionView_homework
//
//  Created by Victor Pizetta on 14/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupTableViewCell(title: String, description: String) {
        titleLabel.text = title
        descriptionLabel.text = description
    }
}

