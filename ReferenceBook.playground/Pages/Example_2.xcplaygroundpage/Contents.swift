import Foundation


enum Payment: String{
    case money
    case credit
    case debit
    
    static var randomPayment: Payment{
        switch Int.random(in: 0...2) {
        case 0:
            return .credit
        case 1:
            return .debit
        case 2:
            return .money
        default:
            return .credit
        }
    }
    
    func checkPayment() -> Bool{                                        //if user input existed we could have different cases and this would be a method.
        switch self {
        case .credit,.debit, .money:
            if Bool.random() {
                return true
            }
            return false
        }
    }
}



struct Item{
    private var name: String
    private var price : Float
    private var quantity : Int
    private var description : String
    var itemInfo: (name: String, price: Float, quantity: Int, description: String){
        return (self.name, self.price, self.quantity, self.description)
    }
    
    
    init(name: String, price: Float, quantity: Int, description: String) {
        self.name = name
        self.price = price
        self.quantity = quantity
        self.description = description
    }
    
     mutating func changeQuantity(qnt: Int) {
        quantity = quantity + qnt
    }
    
}

class Person{
    private var id: Int
    private var name: String
    var personInfo:(id: Int, name: String){
        return (self.id,self.name)
    }
    
    init(id:Int, name:String){
        self.id = id
        self.name = name
        
    }
    
  
}


class Customer: Person{
     var cart: [Item]
    
    
    override init(id: Int, name: String) {
        self.cart = Array<Item>()
        super.init(id: id , name: name)
    }
    
    func addToCart(item: Item) {
        if self.cart.count > 0 {
            for index in 0...cart.count - 1{
                if (cart[index].itemInfo.name == item.itemInfo.name){
                    cart[index].changeQuantity(qnt: item.itemInfo.quantity)
                    return
                }
            }
        }
        cart.append(item)
    }
}



struct Shop{
    var regulars : [Customer]
    var available: [Item]
    
    init() {
        regulars = Array<Customer>()
        regulars.append(Customer(id: self.regulars.count, name: "Marcos"))
        regulars.append(Customer(id: self.regulars.count, name: "Michas"))
        regulars.append(Customer(id: self.regulars.count, name: "Felipe"))
        regulars.append(Customer(id: self.regulars.count, name: "Alberto"))
        
        available = Array<Item>()
        available.append(Item(name: "Banana", price: 1.0, quantity: 6, description: "An banana"))
        available.append(Item(name: "Apple", price: 1.20, quantity: 1, description: "An apple"))
        available.append(Item(name: "Orange", price: 1.20, quantity: 6, description: "An orange"))
        available.append(Item(name: "Mango", price: 2.0, quantity: 1, description: "An mango"))
        available.append(Item(name: "Strawberry", price: 0.60, quantity: 15, description: "A box of strawberries"))
    }
    
    func run(){
        var breakLoop: Int
        
            mainLoop: while true {
                breakLoop = Int.random(in: 0...100000)
                let ChoosenCustomer = regulars.randomElement() ?? regulars[0]
                
                for _ in 0...Int.random(in: 1...10){
                    let item = available.randomElement() ?? available[0]
                    ChoosenCustomer.addToCart(item: item)
                    print("\(ChoosenCustomer.personInfo.name) added \(item.itemInfo.name) to the cart")
                    sleep(3)
                }
            
                var total: Float = 0.0
                
                for cart in ChoosenCustomer.cart {
                    total += cart.itemInfo.price * Float(cart.itemInfo.quantity)
                }
                
                print("total to pay: \(String(format: "%.2f", total))")
                sleep(3)
                
                var tryToPay: Payment
                var result: Bool
                
                repeat{
                    tryToPay = Payment.randomPayment
                    print("trying to pay with : \(tryToPay)")
                    result = tryToPay.checkPayment()
                    
                    if (!result) {
                        print("failed")
                        sleep(3)
                    }
                }while(!result)
                
                print("Sucess\n\n")
                ChoosenCustomer.cart.removeAll()
                sleep(5)
            
            if  breakLoop == 100000 {
                break mainLoop
            }
                //break mainLoop                                        //if want to run only one time.
        }
        print("come back soon ˆˆ")
        exit(1)
    }
}

var shop = Shop()
shop.run()

