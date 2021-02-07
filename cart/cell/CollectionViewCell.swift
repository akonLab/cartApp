import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var addToCartBtn: UIButton!
    
    var id=0
    var delegate:MainViewController?
    var product:Product?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var addCallBack: ((_ item:Product) -> Void)?
    var showCallback: ((_ id: Int) -> Void)?
    
    @IBAction func addToCartBtnTap(_ sender: Any) {
        delegate?.addProductToCart(product!)
        addCallBack?(product!)
    }
    
    
    @IBAction func taskTitleTap(_ sender: Any) {
        delegate?.showProduct(id)
        showCallback?(id)
    }
}
