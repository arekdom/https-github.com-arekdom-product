//
//  PostData1.swift
//  H4XDR News
//
//  Created by Arek on 18/01/2022.
//

import Foundation

struct ResultsLite: Decodable {
   
    let TotalResults: Int?
    let Items: [Items]
        
    }
