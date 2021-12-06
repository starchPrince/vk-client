//
//  photoViewController.swift
//  vkClient
//
//  Created by Сергей Буланов on 02.12.2021.
//

import UIKit

class photoViewController: UIViewController {
    
    @IBOutlet weak var photoImage: UIImageView!
    
    private var imageName: String = " "
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImage.image = UIImage(named: imageName)

    }
    
    func setup(with name: String) {
        
        imageName = name
        
    }
    

}
