import Foundation
import CoreData

@objc(Subscription)
public class Subscription: NSManagedObject {
    @NSManaged public var name: String
    @NSManaged public var monthlyCost: Double
    @NSManaged public var lastUsed: Date
}

extension Subscription {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Subscription> {
        return NSFetchRequest<Subscription>(entityName: "Subscription")
    }
}
