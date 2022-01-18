import Foundation

class DataService {
    
    static let instance = DataService()
    
    
    private let categories = [
        Category(title: "Outerwear", imageName: "category-list-exclusives.png"),
        Category(title: "Shirts",     imageName: "category-list-clothing.png"),
        Category(title: "Jeans",     imageName: "category-list-whats-new.png"),
        Category(title: "Sneakers",     imageName: "category-list-shoes.png"),
    ]
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    
    let imgArr = [ "1197541_in_120",
                   "1197540_in_120",
                   "1197542_in_120",
                   "1197543_in_120",
                   "1197544_in_120",
                   "1197545_in_120",
                   "1197546_in_120",
                   "1197547_in_120",
                   "1197548_in_120",
                   "1197549_in_120",
                   "1197550_in_120",
                   "1197551_in_120"]
    
    let txtArr = [ "VICTORIA",
                   "CAPISPALLA",
                   "PATOU",
                   "CHLOÉ",
                   "ETRO",
                   "MARNI",
                   "MAXMARA",
                   "FRANKIE",
                   "ERISNOW",
                   "PERFECT",
                   "ALAÏA",
                   "GUCCI"]
    
 
    let descriptionArr = [ "mini dress is made",
                           "dress exudes the label's",
                           "florals appear in slightly",
                           "kaftan is inspired by gowns",
                           "Daniel Lee is renowned for",
                           "For his debut collection",
                           "striking colors are meant to",
                           "Part of a special unisex capsule",
                           "Relaxed tailoring has defined",
                           "Rains' longline shell",
                           "Rains design ethos is",
                           "women should have the freedom",]
    
    let description2Arr = [ "from a luxurious cashmere",
                            "effortless bohemian vibe",
                            "darker hues this season",
                            "worn by the glamorous",
                            "his meticulous tailoring skills",
                            "at Bottega Veneta, Daniel",
                            "exude feelings of joy",
                            "by Stella McCartney",
                            "Parisian style",
                            "coat is made for cold weather",
                            "rooted in functionality",
                            "to wear what they want"]
    
    let priceArr = [ "$ 4000",
                     "£ 2500",
                     "ZL 12000",
                     "Y 5394000",
                     "EUR 2300",
                     "CZK 45000",
                     "SK 45900",
                     "DK 54200",
                     "ZL 3569",
                     "AU$ 42954",
                     "CA$ 5459",
                     "SK 3994"]
    
    
}
