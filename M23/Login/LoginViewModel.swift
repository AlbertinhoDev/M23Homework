import Foundation

final class LoginViewModel {
    typealias Routes = LoginRoute & Closable & ItemRoute & SecondRoute
    private var router: Routes

    init(router: Routes) {
        self.router = router
    }

    func dismiss() {
        router.close()
    }
    
    func openItem() {
        router.openItem()
    }
    
    
    func secondView() {
        router.openSecondView()
    }
}
