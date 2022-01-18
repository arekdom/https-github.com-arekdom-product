import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = name
        price.text = priceTag
        descriptionlbl.text = descriptionTxt
        description2lbl.text = descriptionTxt2
        
        img.image = UIImage(named: imgName)
        navigationItem.title = name
    }
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var descriptionlbl: UILabel!
    @IBOutlet weak var description2lbl: UILabel!
    
    
    var name = ""
    var priceTag = ""
    var descriptionTxt = ""
    var descriptionTxt2 = ""
    var imgName = ""
    
}
