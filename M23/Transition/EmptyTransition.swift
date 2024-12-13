import UIKit

final class EmptyTransition: Transition { //тут описывается отсутствие перехода, конструктор требует Transition, необходим для первого роутера (экрана, с которого открвается приложение, т.к. неоткуда на него перейти)
    // MARK: - Transition
    func open(_ viewController: UIViewController, from: UIViewController, completion: (() -> Void)?) {}
    func close(_ viewController: UIViewController, completion: (() -> Void)?) {}
}
