//
//  WILDeckViewController.swift
//  DeckOfOneCardObjC
//
//  Created by William Moody on 5/21/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

import UIKit

class WILDeckViewController: UIViewController {

    @IBOutlet weak var cardImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func cardButtonPressed(_ sender: Any) {
        
        WILDeckController.fetchCard { (card) in
            WILDeckController.fetchImage(withUrlString: card?.imageUrl ?? "https://deckofcardsapi.com/static/img/4S.png", completion: { (image) in
                DispatchQueue.main.async {
                    self.cardImageView.image = image
                }
            })
        }
    }
}
