import Foundation
import IntentsUI

final class SecondViewViewModel {
    typealias Routes = SecondRoute & LoginRoute & Closable
    private let router: Routes

    init(router: Routes) {
        self.router = router
    }

    func secondView() {
        router.openSecondView()
    }
    
    func login() {
        router.openLogin()
    }
    
    func close() {
        router.close()
    }
}
