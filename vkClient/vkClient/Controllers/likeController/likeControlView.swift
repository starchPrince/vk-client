//
//  likeControlView.swift
//  vkClient
//
//  Created by Сергей Буланов on 02.12.2021.
//

import UIKit

class likeControlView: UIView {

    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    private var view: UIView?
    
    var isHeartActive = false
    var countLike = 0
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    
    private func loadFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "likeControlView", bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {return UIView()}
        return view
    }

    private func setup() {
        view = loadFromNib()
        guard let view = view else {return}
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
    
    
    @IBAction func pressHeartButtom(_ sender: UIButton) {
        if isHeartActive {
            
            heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
            countLike -= 1
            //countLabel.text = String(countLike)
            UIView.transition(with: countLabel, duration: 0.5, options: .transitionFlipFromTop) {
                [weak self] in self?.countLabel.text = "0"
            }
            
            
        }
        else {
            
            heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            countLike += 1
            //countLabel.text = String(countLike)
            UIView.transition(with: countLabel, duration: 0.5, options: .transitionFlipFromTop) {
                [weak self] in self?.countLabel.text = "1"
            }
            
            
        }
        
        isHeartActive = !isHeartActive
        
        
        
    }

}
