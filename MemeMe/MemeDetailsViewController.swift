//
//  MemeDetailsViewController.swift
//  MemeMe
//
//  Created by Anirudh Lath on 2/11/19.
//  Copyright © 2019 Anirudh Lath. All rights reserved.
//

import UIKit

class MemeDetailsViewController: UIViewController {
    
    var meme: Meme!
    
    @IBOutlet weak var detailedMemeImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        detailedMemeImage.image = meme.memedImage
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
