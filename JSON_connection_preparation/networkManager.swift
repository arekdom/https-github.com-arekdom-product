//  Created by Arek on 18/01/2022.
//  Copyright © 2022 Arek. All rights reserved.
//
import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    
    func fetchData() {
        if let url = URL(string: "https://api.yoox.biz/Search.API/1.3/DSQUARED2_IT/search/results.json?ave=prod&productsPerPage=50&gender=U&page=1&department=dsqMshrt&format=lite&sortRule=Ranking") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                    let results = try decoder.decode(ResultsLite.self, from: safeData)
                            DispatchQueue.main.async {
//                                self.posts = results.Items
                                print(results.TotalResults as Any)
                              
                            }
                   
                        } catch {
                             print(error)
                }
            }
        }
            }
            task.resume()
}
}
    }
