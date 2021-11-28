//
//  GalleryCell.swift
//  vkClient
//
//  Created by Сергей Буланов on 28.11.2021.
//

import UIKit

class GalleryCell: UICollectionViewCell {
    
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        photoImageView.image = nil
        
    }
    
    func configure(image: UIImage?, index: Int) {
        photoImageView.image = image
        if index % 2 == 0 {
            backView.backgroundColor = UIColor.blue
        }
        else {
            backView.backgroundColor = UIColor.systemPink
        }
    }
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
