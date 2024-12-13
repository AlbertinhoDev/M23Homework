import Foundation

protocol SecondRoute {
    func openSecondView()
}

extension SecondRoute where Self: Router {
    func openSecondView(with transition: Transition) {
        let router = DefaultRouter(rootTransition: transition)
        let viewModel = ItemViewModel(router: router)
        let viewController = ItemViewController(viewModel: viewModel)
        router.root = viewController

        route(to: viewController, as: transition)
    }

    func openSecondView() {
        openSecondView(with: AnimatedTransition(animatedTransition: FadeAnimatedTransitioning()))
    }
}

extension DefaultRouter: SecondRoute {} //везде, где используем DefaultRouter можем также открывать и ItemRoute
