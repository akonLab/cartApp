//
//  ProductViewController.swift
//  cart
//
//  Created by ADA ADA on 2/3/21.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var product:Product?
    var delegate:MainViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text=product?.title
        descLabel.text=product?.desc
        priceLabel.text="\(product?.price ?? 0)$"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
