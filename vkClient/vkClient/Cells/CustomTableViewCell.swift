//
//  CustomTableViewCell.swift
//  vkClient
//
//  Created by Сергей Буланов on 24.11.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    
    var closure: (() -> Void)?
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatarImageView.image = nil
        nameLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backView.layer.cornerRadius = 20
        avatarImageView.layer.cornerRadius = 20
        backView.layer.borderColor = UIColor.systemPink.cgColor
        backView.layer.borderWidth = 1
        backView.layer.shadowColor = UIColor.black.cgColor
        backView.layer.shadowRadius = 3
        backView.layer.shadowOffset = CGSize(width: 3, height: 3)
        backView.layer.shadowOpacity = 0.6
        
    }
    
    func configure(image: UIImage?, text: String?) {
        avatarImageView.image = image
        nameLabel.text = text
        
        
    }
    
    func configure(frined: Friend, closure:@escaping (() -> Void)) {
        if let imageName = frined.avatar {
        avatarImageView.image = UIImage(named: imageName)
        }
        nameLabel.text = frined.name
        self.closure = closure
    }
    
    func configure(group: Group) {
        if let imageName = group.avatar {
        avatarImageView.image = UIImage(named: imageName)
        }
        nameLabel.text = group.name
    }
    
    
    @IBAction func pressImageViewButton(_ sender: UIButton) {
        
        let sourceFrame = avatarImageView.frame
        
        UIView.animate(withDuration: 2) {[weak self] in
            guard let self = self else {return}
            self.avatarImageView.frame = CGRect.zero
        } completion: { isSuccess  in
            if isSuccess {
                UIView.animate(withDuration: 2,
                               delay: 0,
                               usingSpringWithDamping: 0.7,
                               initialSpringVelocity: 0,
                               options: [],
                               animations: { [weak self] in
                    guard let self = self else {return}
                    self.avatarImageView.frame = sourceFrame
                    
                },
                               completion: {
                    isSuccessFully in
                    if isSuccessFully {
                        self.closure?()
                    }
                    
                })
            }
        }

    }
    
  
}
