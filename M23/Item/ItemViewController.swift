import UIKit

final class ItemViewController: UIViewController {
    private let viewModel: ItemViewModel

    init(viewModel: ItemViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let closeButton = UIButton(title: "Close", target: self, selector: #selector(onCloseButton))
        
        let loginButton = UIButton(title: "Login", target: self, selector: #selector(onLoginButton))
        
        let vStack = UIStackView(arrangedSubviews: [loginButton, closeButton])
        addStackView(vStack: vStack)
    }

    @objc
    private func onLoginButton() {
        viewModel.login()
    }

    @objc
    private func onCloseButton() {
        viewModel.close()
    }
}
