import UIKit

struct Price {
    private var discountedTotal: Double
    private var discount: Double
    
    func getDiscountedTotal() -> Double {
        discountedTotal
    }
    
    mutating func setDiscountedTotal(number: Double) {
        let old = discount
        discount = number
        discountedTotal += old - number
    }
}

struct RefactorPrice {
    private let baseTotal: Double
    private var discount: Double
    
    func getDiscountedTotal() -> Double {
        baseTotal - discount
    }
    
    mutating func setDiscount(number: Double) {
        discount = number
    }
}
