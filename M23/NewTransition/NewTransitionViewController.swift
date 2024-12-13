import UIKit

final class NewTransitionViewController: UIViewController {
    private let viewModel: NewTransitionViewModel

    init(viewModel: NewTransitionViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "NewTransition"

        let secondViewButton = UIButton(title: "Open Second View", target: self, selector: #selector(onSecondViewButton))
        setupView(secondViewButton)
    }

    @objc
    private func onSecondViewButton() {
        viewModel.openSecondView()
    }
    
    func setupView(_ button: UIButton) {
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}


