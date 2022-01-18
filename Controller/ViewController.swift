import UIKit

class ViewController: UIViewController {

@IBOutlet weak var CollectionView: UICollectionView!
    

    
    private let spacing: CGFloat = 8
    private let aspectRatio: CGFloat = 1.5
    private let dataService = DataService()
    
    var name = ""
    var imgName = ""
    var categoryTitle = ""
    var catTitle = ""
  
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationItem.title = categoryTitle
        
    }
}


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return dataService.imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DataCollectionViewCell
        cell?.img.image = UIImage(named: dataService.imgArr[indexPath.row])
        cell?.lbl.text = dataService.modelName[indexPath.row]
        // cell?.lbl.text = name
        cell?.price.text = dataService.price[indexPath.row]
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        
        vc?.name = dataService.modelName[indexPath.row]
        vc?.imgName = dataService.imgArr[indexPath.row]
        vc?.priceTag = dataService.price[indexPath.row]
        vc?.descriptionTxt = dataService.macroCategory[indexPath.row]
        vc?.descriptionTxt2 = dataService.microCategory[indexPath.row]
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insertForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let width = (view.frame.size.width - ((spacing*3) / 2))
        let high = width * aspectRatio
        layout.itemSize = CGSize(width: width, height: high )
        return layout.itemSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
}
