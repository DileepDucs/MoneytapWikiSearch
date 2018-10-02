//
//  WikiPageViewController.swift
//  WikiInfoSearch
//
//  Created by Dileep Kumar Jaiswal on 03/10/18.
//  Copyright © 2018 Dileep Kumar Jaiswal. All rights reserved.
//

import UIKit


class WikiPageViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var pageModel = PageModel()
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set title and description for selected page
        self.titleLabel.text = pageModel.title
        self.detailLabel.text = pageModel.wDescription
        
        // Check if image is not nit set the image
        if image != nil {
            self.imageView.image = image
        }
        
        // Do any additional setup after loading the view.
    }

}
