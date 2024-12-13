import Foundation

protocol ItemRoute {
    func openItem()
}

extension ItemRoute where Self: Router {
    func openItem(with transition: Transition) {
        let router = DefaultRouter(rootTransition: transition)
        let viewModel = ItemViewModel(router: router)
        let viewController = ItemViewController(viewModel: viewModel)
        router.root = viewController

        route(to: viewController, as: transition)
    }

    func openItem() {
        openItem(with: PushTransition())
    }
}

extension DefaultRouter: ItemRoute {} //везде, где используем DefaultRouter можем также открывать и ItemRoute
