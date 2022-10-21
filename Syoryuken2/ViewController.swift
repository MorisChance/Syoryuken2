//
//  ViewController.swift
//  Syoryuken2
//
//  Created by 森本　浩輔 on 2022/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var charaImage: UIImageView!
    var imageArrayAttack : Array<UIImage> = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialImage = UIImage(named: "attack1")
        charaImage.image = initialImage
        while let attackImage = UIImage(named: "attack\(imageArrayAttack.count+1)") {
            imageArrayAttack.append(attackImage)
        }
    }
    
    @IBAction func btn(_ sender: Any) {
        charaImage.animationImages = imageArrayAttack
        charaImage.animationDuration = 1.5
        charaImage.animationRepeatCount = 1
        charaImage.startAnimating()
    }
}
