//
//  ImageViewController.swift
//  LandmarkBook
//
//  Created by Burak Karagül on 10.01.2022.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var ImageLbl: UILabel!
    var imagetxt=""
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image=UIImage(named: imagetxt)
        ImageLbl.text=imagetxt

        // Do any additional setup after loading the view.
    }
    

    

}
