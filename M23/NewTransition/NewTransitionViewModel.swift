import Foundation

final class NewTransitionViewModel {
    typealias Routes = SecondRoute //объединение двух протоколов
    private let router: Routes

    init(router: Routes) {
        self.router = router
    }

    func openSecondView() {
        router.openSecondView()
    }

}
