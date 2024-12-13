import UIKit

final class ItemListViewController: UIViewController {
    private let viewModel: ItemListViewModel

    init(viewModel: ItemListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "ItemList"

        let loginButton = UIButton(title: "Login", target: self, selector: #selector(onLoginButton))
        let itemButton = UIButton(title: "Open a Product", target: self, selector: #selector(onItemButton))
        
        let vStack = UIStackView(arrangedSubviews: [loginButton, itemButton])
        addStackView(vStack: vStack)
    }

    @objc
    private func onItemButton() {
        viewModel.openItem()
    }

    @objc
    private func onLoginButton() {
        viewModel.openLogin()
    }
}

extension UIViewController {
    func addStackView(vStack: UIStackView) {
        vStack.axis = .vertical
        vStack.spacing = 8.0
        vStack.frame =  CGRect(x: 0, y: 0, width: 300, height: 350)
        vStack.distribution  = .equalCentering
        vStack.alignment = .fill
        vStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vStack)
        vStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vStack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
