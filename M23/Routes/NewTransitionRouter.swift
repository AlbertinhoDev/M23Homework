import UIKit

protocol NewTransitionRoute { //переход с таббаром
    func makeNewTransition() -> UIViewController
}

extension NewTransitionRoute where Self: Router {
    func makeNewTransition() -> UIViewController {
        let router = DefaultRouter(rootTransition: EmptyTransition()) //т.к. будет рутовым окном (первым)
        let viewModel = NewTransitionViewModel(router: router)
        let viewController = NewTransitionViewController(viewModel: viewModel)
        router.root = viewController

        let navigation = UINavigationController(rootViewController: viewController)
        navigation.tabBarItem = UITabBarItem(title: "Transition", image: nil, tag: 0)
        return navigation
    }

    func selectListTab() { //метод для выбора tab
        root?.tabBarController?.selectedIndex = 0
    }
}

extension DefaultRouter: NewTransitionRoute {}
