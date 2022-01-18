//
//  ProductCategoriesViewController.swift
//  Products
//
//  Created by Arek on 15/01/2022.
//  Copyright © 2022 Arek. All rights reserved.
//

import UIKit


class ProductCategoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let dataService = DataService()
    
    @IBOutlet weak var categoryTable: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tableView.bounds.width / (207/71)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        let category = DataService.instance.getCategories()[indexPath.row]
        
        vc1?.imgName = dataService.imgArr[indexPath.row]
        vc1?.name = dataService.txtArr[indexPath.row]
        vc1?.categoryTitle = category.title
        
        
        self.navigationController?.pushViewController(vc1!, animated: true)
    }
}




