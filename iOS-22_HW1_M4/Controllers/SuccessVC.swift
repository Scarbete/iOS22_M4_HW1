import UIKit



class SuccessVC: UIViewController {

    private lazy var successImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Success")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var successLabel: UILabel = {
        let view = UILabel()
        view.text = "Success`"
        view.textColor = .white
        view.font = .systemFont(ofSize: 23)
        view.textAlignment = .center
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }
    
    
    
    private func initUI() {
        view.backgroundColor = UIColor(hex: "#5ACAEA")
        configureSuccessImage()
        configureSuccessLabel()
    }
    
    private func configureSuccessImage() {
        view.addSubview(successImage)
        NSLayoutConstraint.activate([
            successImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            successImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            successImage.heightAnchor.constraint(equalToConstant: 183),
            successImage.widthAnchor.constraint(equalToConstant: 183),
        ])
    }
    
    private func configureSuccessLabel() {
        view.addSubview(successLabel)
        NSLayoutConstraint.activate([
            successLabel.topAnchor.constraint(equalTo: successImage.bottomAnchor, constant: 24),
            successLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            successLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
    }
    
}
