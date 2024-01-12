//
//  detailsVC.swift
//  230923_SimpsonBook
//
//  Created by hasan bilgin on 23.09.2023.
//

import UIKit

class detailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!

    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.date
        imageView.image = selectedSimpson?.image
        
    }
    


}
