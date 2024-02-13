import UIKit
import RxSwift
import RxCocoa

class MusicPlayerViewController: UIViewController {
    
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var statusBtn: UIButton!
    @IBOutlet weak var repeatBtn: UIButton!
    @IBOutlet weak var customBtn: UIButton!
    @IBOutlet weak var playImageView: UIImageView!
    @IBOutlet weak var messageLbl: UILabel!
    
    var viewModel = MusicPlayerViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewModel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viewModel.playSound()
    }
    
    private func bindViewModel() {
        viewModel.playImageURL
            .compactMap { $0 }
            .compactMap { URL(string: $0) }
            .subscribe(onNext: { [weak self] url in
                self?.playImageView.loadImage(from: url)
            })
            .disposed(by: disposeBag)
        
        viewModel.message
            .bind(to: messageLbl.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.playPauseButtonImage
            .bind(to: statusBtn.rx.image(for: .normal))
            .disposed(by: disposeBag)
        
        viewModel.repeatButtonTintColor
            .subscribe(onNext: { [weak self] color in
                self?.repeatBtn.tintColor = color
            })
            .disposed(by: disposeBag)
        
        repeatBtn.rx.tap
            .subscribe(onNext: { [weak self] _ in
                if let currentValue = try? self?.viewModel.repeatIsEnabled.value() {
                    self?.viewModel.repeatIsEnabled.onNext(!currentValue)
                }
            })
            .disposed(by: disposeBag)
        
        closeBtn.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.dismiss(animated: true, completion: nil)
            })
            .disposed(by: disposeBag)
    }
}
