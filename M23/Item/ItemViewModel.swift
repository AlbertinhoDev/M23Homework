import Foundation
import IntentsUI

final class ItemViewModel {
    typealias Routes = ItemRoute & LoginRoute & Closable
    private let router: Routes

    init(router: Routes) {
        self.router = router
    }

    func item() {
        router.openItem()
    }
    
    func login() {
        router.openLogin()
    }
    
    func close() {
        router.close()
    }
}
