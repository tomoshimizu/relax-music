import UIKit

class WorkViewController: UIViewController {
    
    // MARK: - Variables
    
    private let viewModel = WorkViewModel()
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    private var collectionView: UICollectionView!
    
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupImageView()
        setupTitleLabel()
        setupCollectionView()
    }
    
    private func setupImageView() {
        imageView.image = UIImage(named: "nav_work")
        imageView.contentMode = .scaleAspectFill
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setupTitleLabel() {
        titleLabel.text = "頑張りたいときに聴く音楽"
        titleLabel.textColor = .white
        titleLabel.font = UIFont(name: "ShipporiMinchoB1-Bold", size: 20)
        titleLabel.textAlignment = .center
        
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor)
        ])
    }
    
    private func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: (view.frame.size.width - 30) / 2, height: 200)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor(red: 95/255, green: 158/255, blue: 160/255, alpha: 1)
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsVerticalScrollIndicator = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: imageView.bottomAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}


// MARK: - UICollectionViewDataSource

extension WorkViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.musicList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        
        let music = viewModel.musicList[indexPath.row % viewModel.musicList.count]
        cell.label.text = music.title
        if let url = URL(string: music.imageURL) {
            cell.imageView.loadImage(from: url)
        }
        
        return cell
    }
}


// MARK: - UICollectionViewDelegate

extension WorkViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let music = viewModel.musicList[indexPath.row % viewModel.musicList.count]
        Transition.toPlaySoundView(music: music)
    }
}
