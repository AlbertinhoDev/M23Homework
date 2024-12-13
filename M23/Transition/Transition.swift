import UIKit

protocol Transition: AnyObject { //переход с одного viewController на другой
    func open(_ viewController: UIViewController, from: UIViewController, completion: (() -> Void)?)
    func close(_ viewController: UIViewController, completion: (() -> Void)?)
}
