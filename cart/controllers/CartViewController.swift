import UIKit

class CartViewController: UIViewController {
    //cartId
    @IBOutlet weak var tableView: UITableView!
    var products = [Product]()
    let cellId="cartCellId"
    var mainDelegate:MainViewController?

    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        appendArrAtStart()
        
        tableView.delegate=self
        tableView.dataSource = self
        
       // products=mainDelegate!.cartProducts
        
        tableView.register(UINib(nibName: "CartViewCell", bundle: nil), forCellReuseIdentifier: cellId)
  
        products.append(Product(title: "lol",
                                                       desc: "socks with pupping unicorn",
                                                       price: 11))
    }
    
    
    
    func appendArrAtStart(){
        products.append(Product(title: "pink socks",
                                desc: "socks with pupping unicorn",
                                price: 11))
    }
    
 
    
   
}
//table
extension CartViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId,for: indexPath) as! CartViewCell
        
        let item = products[indexPath.row]
        
        cell.delegate=mainDelegate
        //        cell.titleBtn.setTitle(item.title, for: .normal)
        cell.id=indexPath.row
        cell.product=item
        
        cell.titleLabel.text=item.title
        cell.descLabel.text=item.desc
        cell.priceLabel.text="\(item.price ?? 0)$"
        
        return cell
    }
}
