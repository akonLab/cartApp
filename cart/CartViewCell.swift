//
//  CartViewCell.swift
//  cart
//
//  Created by ADA ADA on 2/3/21.
//

import UIKit

class CartViewCell: UITableViewCell {
    //cellId -tabel
    //cartCellId -cart
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    var id=0
    var product:Product?
    var delegate:CartViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        titleLabel.text=product?.title
        descLabel.text=product?.desc
        priceLabel.text="\(String(describing: product?.price))$"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func removeBtnTap(_ sender: Any) {
    }
}
