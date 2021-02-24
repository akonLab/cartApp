import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var id=0
    var product:Product?
    var delegate: MainViewControllerDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
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
