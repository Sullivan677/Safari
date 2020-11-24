import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    let safariButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }
    
    func setupButton() {
        view.addSubview(safariButton)
        safariButton.backgroundColor = .systemBlue
        safariButton.addTarget(self, action: #selector(openSafari), for: .touchUpInside)
        safariButton.setTitle(NSLocalizedString("Open in Safari", comment: ""), for: .normal)
        safariButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        safariButton.translatesAutoresizingMaskIntoConstraints = false
        safariButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        safariButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        safariButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        safariButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    @objc func openSafari() {
        let urlApple = "https://www.apple.com"
        if let url = URL(string: urlApple) {
            let vc = SFSafariViewController(url: url, entersReaderIfAvailable: true)
            vc.delegate = self

            present(vc, animated: true)
        }
    }
}

