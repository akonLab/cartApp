
import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var product:Product?
    var delegate:MainViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text=product?.title
        descLabel.text=product?.desc
        priceLabel.text="\(product?.price ?? 0)$"
    }
    

    

}
