
//  Created by Arek on 19/02/2020.
//  Copyright © 2020 Arek. All rights reserved.
//

import Foundation


struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
        
    }
}

