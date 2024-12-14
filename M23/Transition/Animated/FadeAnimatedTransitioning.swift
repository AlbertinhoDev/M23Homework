import UIKit

final class FadeAnimatedTransitioning: NSObject, UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool = true
    
    private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "photo")
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.alpha = 0
        return imageView
    }()
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 3
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        if isPresenting {
            present(using: transitionContext)
        } else {
            dismiss(using: transitionContext)
        }
    }

    private func present(using transitionContext: UIViewControllerContextTransitioning) {
        guard let toView = transitionContext.view(forKey: .to) else { return }
        let containerView = transitionContext.containerView
        toView.addSubview(imageView)
        containerView.addSubview(toView)
        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            UIView.animate(withDuration: 0.5) {
                self.imageView.alpha = 1.0
            }
            self.imageView.alpha = 0.0
        }, completion: { _ in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        })
    }

    private func dismiss(using transitionContext: UIViewControllerContextTransitioning) {
        guard let fromView = transitionContext.view(forKey: .from) else { return }
        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
//            fromView.backgroundColor = .black
            self.imageView.alpha = 1.0
        }, completion: { _ in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        })
    }
    
}
