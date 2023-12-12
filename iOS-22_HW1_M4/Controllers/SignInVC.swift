import UIKit


// FIX_ME
// Я бы хотел сделать компоненты и разделить некоторые части этого экрана на декомпозицию,
// но тогда многим элементам придется убрать Private и обращатся по другому, как вы на это обращяете?
// то что я бы хотел разделить на компоненты я выделил комментариями

class SignInVC: UIViewController {
    
    private let height = UIScreen.main.bounds.height
    
    private lazy var mainImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "mainImage")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var signInView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 30
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        view.layer.masksToBounds = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var welcomeBackLabel: UILabel = {
        let view = UILabel()
        view.text = "Welcome Back"
        view.textColor = .white
        view.font = .systemFont(ofSize: 34, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var signContinueLabel: UILabel = {
        let view = UILabel()
        view.text = "Sign in to continue"
        view.textColor = .white
        view.font = .systemFont(ofSize: 20, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // Email
    private lazy var emailLabel: UILabel = {
        let view = UILabel()
        view.text = "Employee Id / Email"
        view.textColor = UIColor(hex: "#A5A5A5")
        view.font = .boldSystemFont(ofSize: 12)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var emailTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Enter your email"
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var emailDividerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#E1E3E8")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // Password
    private lazy var passwordLabel: UILabel = {
        let view = UILabel()
        view.text = "Password"
        view.textColor = UIColor(hex: "#A5A5A5")
        view.font = .boldSystemFont(ofSize: 12)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var passwordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Enter your password"
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var passwordDividerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#E1E3E8")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var passwordButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "passwordEye"), for: .normal)
        view.tintColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let view = UIButton()
        view.setTitle("Forgot Password?", for: .normal)
        view.setTitleColor(UIColor(hex: "#4B94EA"), for: .normal)
        view.titleLabel?.font = .boldSystemFont(ofSize: 13)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // Remember
    private lazy var rememberMeButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "square"), for: .normal)
        view.tintColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var rememberMeLabel: UILabel = {
        let view = UILabel()
        view.text = "Remember Me"
        view.textColor = .black
        view.font = .systemFont(ofSize: 18, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // SignIn - Button
    private lazy var signInButton: UIButton = {
        let view = UIButton()
        view.setTitle("Sign In", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        view.backgroundColor = UIColor(hex: "#2855AE")
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // FooterView
    private lazy var footerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var dontHaveAccLabel: UILabel = {
        let view = UILabel()
        view.text = "Don’t have an Account?"
        view.textColor = .black
        view.font = .systemFont(ofSize: 13, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var dontHaveAccButton: UIButton = {
        let view = UIButton()
        view.setTitle("Sign Up", for: .normal)
        view.setTitleColor(UIColor(hex: "#4B94EA"), for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 14, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var footerImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "footerImage")
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        view.backgroundColor = UIColor(hex: "#5ACAEA")
        configureMainImage()
        configureSignInView()
        configureWelcomeBackLabel()
        configureSignContinueLabel()
        configureEmailLabel()
        configureEmailTF()
        configureEmailDividerView()
        configurePasswordLabel()
        configurePasswordTF()
        configurePasswordButton()
        configurePasswordDividerView()
        configureForgotPasswordButton()
        configureRememberMeButton()
        configureRememberMeLabel()
        configureSignInButton()
        configureFooterView()
        configureDontHaveAccLabel()
        configureDontHaveAccButton()
        configureFooterImage()
    }
    
    
    
    
    
    private func configureMainImage() {
        view.addSubview(mainImage)
        
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            mainImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            mainImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            mainImage.heightAnchor.constraint(equalToConstant: 256)
        ])
    }
    
    private func configureWelcomeBackLabel() {
        view.addSubview(welcomeBackLabel)
        
        NSLayoutConstraint.activate([
            welcomeBackLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: -12),
            welcomeBackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])
    }
    
    private func configureSignContinueLabel() {
        view.addSubview(signContinueLabel)
        
        NSLayoutConstraint.activate([
            signContinueLabel.topAnchor.constraint(equalTo: welcomeBackLabel.bottomAnchor, constant: 4),
            signContinueLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])
    }
    
    private func configureSignInView() {
        view.addSubview(signInView)
        
        NSLayoutConstraint.activate([
            signInView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            signInView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            signInView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            signInView.heightAnchor.constraint(equalToConstant: height / 2)
        ])
    }
    
    private func configureEmailLabel() {
        signInView.addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: signInView.topAnchor, constant: 43),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
        ])
    }
    
    private func configureEmailTF() {
        signInView.addSubview(emailTextField)
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 13),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            emailTextField.heightAnchor.constraint(equalToConstant: 33),
        ])
    }
    
    private func configureEmailDividerView() {
        signInView.addSubview(emailDividerView)
        
        NSLayoutConstraint.activate([
            emailDividerView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor),
            emailDividerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            emailDividerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            emailDividerView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    private func configurePasswordLabel() {
        signInView.addSubview(passwordLabel)

        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: emailDividerView.bottomAnchor, constant: 25),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
        ])
    }

    private func configurePasswordTF() {
        signInView.addSubview(passwordTextField)

        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            passwordTextField.heightAnchor.constraint(equalToConstant: 33),
        ])
    }

    private func configurePasswordButton() {
        signInView.addSubview(passwordButton)

        NSLayoutConstraint.activate([
            passwordButton.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 22),
            passwordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            passwordButton.widthAnchor.constraint(equalToConstant: 18),
            passwordButton.heightAnchor.constraint(equalToConstant: 13),
        ])
    }
    
    private func configurePasswordDividerView() {
        signInView.addSubview(passwordDividerView)

        NSLayoutConstraint.activate([
            passwordDividerView.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor),
            passwordDividerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            passwordDividerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            passwordDividerView.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
    private func configureForgotPasswordButton() {
        signInView.addSubview(forgotPasswordButton)

        NSLayoutConstraint.activate([
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordDividerView.bottomAnchor, constant: 3),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
        ])
        
        forgotPasswordButton.addTarget(self, action: #selector(forgotPasswordTapped), for: .touchUpInside)
    }
    
    private func configureRememberMeButton() {
        signInView.addSubview(rememberMeButton)

        NSLayoutConstraint.activate([
            rememberMeButton.topAnchor.constraint(equalTo: passwordDividerView.bottomAnchor, constant: 41),
            rememberMeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
        ])
    }

    private func configureRememberMeLabel() {
        signInView.addSubview(rememberMeLabel)

        NSLayoutConstraint.activate([
            rememberMeLabel.topAnchor.constraint(equalTo: passwordDividerView.bottomAnchor, constant: 41),
            rememberMeLabel.leadingAnchor.constraint(equalTo: rememberMeButton.trailingAnchor, constant: 13),
        ])
    }
    
    private func configureSignInButton() {
        signInView.addSubview(signInButton)

        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: rememberMeLabel.bottomAnchor, constant: 35),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.widthAnchor.constraint(equalToConstant: 168),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
    }
    
    private func configureFooterView() {
        view.addSubview(footerView)

        NSLayoutConstraint.activate([
            footerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            footerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            footerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            footerView.heightAnchor.constraint(equalToConstant: 78),
        ])
    }
    
    private func configureDontHaveAccLabel() {
        footerView.addSubview(dontHaveAccLabel)

        NSLayoutConstraint.activate([
            dontHaveAccLabel.topAnchor.constraint(equalTo: footerView.topAnchor, constant: 13),
            dontHaveAccLabel.leadingAnchor.constraint(equalTo: footerView.leadingAnchor, constant: 19),
        ])
    }
    
    private func configureDontHaveAccButton() {
        footerView.addSubview(dontHaveAccButton)

        NSLayoutConstraint.activate([
            dontHaveAccButton.topAnchor.constraint(equalTo: footerView.topAnchor, constant: 7),
            dontHaveAccButton.leadingAnchor.constraint(equalTo: dontHaveAccLabel.trailingAnchor, constant: 6),
        ])
        
        dontHaveAccButton.addTarget(self, action: #selector(dontHaveAccTapped), for: .touchUpInside)
    }
    
    private func configureFooterImage() {
        footerView.addSubview(footerImage)

        NSLayoutConstraint.activate([
            footerImage.bottomAnchor.constraint(equalTo: footerView.bottomAnchor),
            footerImage.leadingAnchor.constraint(equalTo: footerView.leadingAnchor),
            footerImage.trailingAnchor.constraint(equalTo: footerView.trailingAnchor),
            footerImage.heightAnchor.constraint(equalTo: footerView.heightAnchor),
        ])
    }
    
    private func emptyTextFieldState(textField: UITextField) {
        textField.placeholder = "Заполните, пожалуйста"
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 10
        textField.layer.borderColor = UIColor.red.cgColor
    }
    
    private func filledTFState(textField: UITextField) {
        textField.layer.borderWidth = 0
        textField.layer.borderColor = .none
        textField.text = ""
    }
    
    @objc func forgotPasswordTapped(_ sender: UIButton) {
        navigationController?.pushViewController(ForgotPasswordVC(), animated: true)
    }
    
    @objc func signInButtonTapped(_ sender: UIButton) {
        print("hello")
        
        if emailTextField.hasText && passwordTextField.hasText {
            navigationController?.pushViewController(SuccessVC(), animated: true)
            filledTFState(textField: emailTextField)
            filledTFState(textField: passwordTextField)
        }
        else {
            emptyTextFieldState(textField: emailTextField)
            emptyTextFieldState(textField: passwordTextField)
        }
    }
    
    @objc func dontHaveAccTapped(_ sender: UIButton) {
        navigationController?.pushViewController(SignUpVC(), animated: true)
    }
}
