import UIKit

protocol ItemListRoute { //переход с таббаром
    func makeItemList() -> UIViewController
}

extension ItemListRoute where Self: Router {
    func makeItemList() -> UIViewController {
        let router = DefaultRouter(rootTransition: EmptyTransition()) //т.к. будет рутовым окном (первым)
        let viewModel = ItemListViewModel(router: router)
        let viewController = ItemListViewController(viewModel: viewModel)
        router.root = viewController

        let navigation = UINavigationController(rootViewController: viewController)
        navigation.tabBarItem = UITabBarItem(title: "List", image: nil, tag: 0)
        return navigation
    }

    func selectListTab() { //метод для выбора tab
        root?.tabBarController?.selectedIndex = 0
    }
}

extension DefaultRouter: ItemListRoute {}
