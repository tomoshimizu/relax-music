import UIKit
import RxSwift
import RxCocoa

class MusicPlayerViewController: UIViewController {
    
    var musicImageView: UIImageView!
    var messageLabel: UILabel!
    var playAndPauseButton: UIButton!
    var repeatButton: UIButton!
    var addNaturalSoundButton: UIButton!
    var closeButton: UIButton!
    
    private let music: Music!
    private let viewModel: MusicPlayerViewModel!
    private let disposeBag = DisposeBag()
    
    init(music: Music) {
        self.music = music
        self.viewModel = MusicPlayerViewModel(music: music)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(hex: "061620")
        
        setupViews()
        bindToViewModel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.viewModel.playAndPauseMusic()
    }
    
    private func bindToViewModel() {
         viewModel.playAndPauseImage
             .bind(to: playAndPauseButton.rx.image(for: .normal))
             .disposed(by: disposeBag)
        
        playAndPauseButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.viewModel.playAndPauseMusic()
            })
            .disposed(by: disposeBag)
        
        repeatButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                if let currentValue = try? self?.viewModel.repeatIsEnabled.value() {
                    self?.viewModel.repeatIsEnabled.onNext(!currentValue)
                    self?.repeatButton.tintColor = !currentValue ? UIColor(hex: "00FFFF") : .white
                }
            })
            .disposed(by: disposeBag)
        
        addNaturalSoundButton.rx.tap
            .subscribe(onNext: {
                Transition.toNaturalSoundView()
            })
            .disposed(by: disposeBag)
        
        closeButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.dismiss(animated: true, completion: nil)
            })
            .disposed(by: disposeBag)
    }
}


// FIXME: - View Factoriesを参考にする

extension MusicPlayerViewController {
    
    func setupViews() {
        musicImageView = UIImageView()
        musicImageView.loadImage(from: URL(string: music.imageURL)!)
        view.addSubview(musicImageView)
        musicImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            musicImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            musicImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            musicImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            musicImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.55)
        ])
        
        messageLabel = UILabel()
        messageLabel.text = music.title
        view.addSubview(messageLabel)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.font = UIFont(name: "ShipporiMinchoB1-Bold", size: 24)
        messageLabel.textColor = UIColor(hex: "00FFFF")
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: musicImageView.bottomAnchor, constant: 30),
            messageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        playAndPauseButton = UIButton(type: .system)
        view.addSubview(playAndPauseButton)
        playAndPauseButton.tintColor = UIColor(hex: "00FFFF")
        playAndPauseButton.translatesAutoresizingMaskIntoConstraints = false
        playAndPauseButton.contentHorizontalAlignment = .fill
        playAndPauseButton.contentVerticalAlignment = .fill
        NSLayoutConstraint.activate([
            playAndPauseButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 30),
            playAndPauseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playAndPauseButton.widthAnchor.constraint(equalToConstant: 80),
            playAndPauseButton.heightAnchor.constraint(equalToConstant: 80)
        ])

        repeatButton = UIButton(type: .system)
        repeatButton.setImage(UIImage(systemName: "repeat"), for: .normal)
        repeatButton.tintColor = UIColor(hex: "FFFFFF")
        view.addSubview(repeatButton)
        repeatButton.translatesAutoresizingMaskIntoConstraints = false
        
        addNaturalSoundButton = UIButton(type: .system)
        addNaturalSoundButton.setImage(UIImage(systemName: "music.note"), for: .normal)
        addNaturalSoundButton.tintColor = UIColor(hex: "FFFFFF")
        view.addSubview(addNaturalSoundButton)
        addNaturalSoundButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            repeatButton.topAnchor.constraint(equalTo: playAndPauseButton.bottomAnchor, constant: 30),
            repeatButton.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -10),
            addNaturalSoundButton.topAnchor.constraint(equalTo: playAndPauseButton.bottomAnchor, constant: 30),
            addNaturalSoundButton.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
            repeatButton.widthAnchor.constraint(equalTo: addNaturalSoundButton.widthAnchor),
            addNaturalSoundButton.widthAnchor.constraint(equalTo: repeatButton.widthAnchor)
        ])
        
        closeButton = UIButton(type: .system)
        closeButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        closeButton.tintColor = .white
        view.addSubview(closeButton)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            closeButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10)
        ])
    }
}
