//
//  PostData.swift
//  H4XDR News
//
//  Created by Arek on 15/01/2021.
//

import Foundation

struct Items: Decodable {
    var Items: [Post]
}


struct Post: Decodable, Identifiable {
    

    var id: String {
       return Code8
        
    }
        
    let Code8: String
    var BrandName: String?
    var DefaultCode10: String
    var MicroCategory: String?
    var MacroCategory: String
    var FullPrice: Int
    let DiscountedPrice: Int
    let ModelNames: String?
    let Sizes: [Sizes]
    let Colors: [Colors]
  
  
   
}

struct Sizes: Decodable {
    let Text: String
    let ClassFamily:String
    
}

struct Colors: Decodable{
    let Id: Int
}

