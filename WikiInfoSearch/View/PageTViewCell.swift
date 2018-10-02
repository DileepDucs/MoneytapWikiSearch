//
//  PageTViewCell.swift
//  WikiInfoSearch
//
//  Created by Dileep Kumar Jaiswal on 01/10/18.
//  Copyright © 2018 Dileep Kumar Jaiswal. All rights reserved.
//

import UIKit

class PageTViewCell: UITableViewCell {
    @IBOutlet weak var wkImageView: UIImageView!
    @IBOutlet weak var wTitleName: UILabel!
    @IBOutlet weak var wDescriptionName: UILabel!
    @IBOutlet weak var activiyIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
