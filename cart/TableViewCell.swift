import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var id=0
    var product:Product?
    var delegate: MainViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.text=product?.title
        descLabel.text=product?.desc
        priceLabel.text="\(String(describing: product?.price))$"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBAction func addToCartBtnTap(_ sender: Any) {
    }
    
    var addCallBack: ((_ item:Product) -> Void)?
    var showCallback: ((_ id: Int) -> Void)?
    
    
    @IBAction func taskTitleTap(_ sender: Any) {
        delegate?.showProduct(id)
        showCallback?(id)
    }
    
    
}
