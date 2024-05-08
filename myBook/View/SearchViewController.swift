//
//  SearchViewController.swift
//  myBook
//
//  Created by 문기웅 on 5/7/24.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController {
    
    // MARK: - 컴포넌트 추가
    let titleLabel: UILabel = UILabel()
    let searchBar: UISearchBar = UISearchBar()
    
    let collectionViewLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        let spacing: CGFloat = 5
        let deviceWidth = UIScreen.main.bounds.width
        let countForLine: CGFloat = 2
        let cellWidth = (deviceWidth - spacing * 1 - 1)/countForLine
        let cellHeight = cellWidth + 50
        
        layout.itemSize = .init(width: cellWidth, height: cellHeight)
        return layout
    }()
    lazy var searchCollectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "mYellow")
        
        setConstraints()
        configure()
    }
    
    
    
    // MARK: - 오토레이아웃 잡기
    func setConstraints() {
        [titleLabel, searchBar, searchCollectionView].forEach { view.addSubview($0) }
        
        self.navigationItem.titleView = titleLabel
        
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        searchCollectionView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(5)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        
    }
    
    // MARK: - 디자인..?
    func configure() {
        titleLabel.text = "Search Book"
        titleLabel.font = .boldSystemFont(ofSize: 25)
        
        searchBar.barTintColor = UIColor(named: "mYellow")
        searchBar.searchBarStyle = .minimal
        searchBar.searchTextField.backgroundColor = .systemBrown
        
        searchCollectionView.backgroundColor = .lightText
        searchCollectionView.dataSource = self
        searchCollectionView.delegate = self
        searchCollectionView.register(SearchResultCollectionViewCell.self, forCellWithReuseIdentifier: SearchResultCollectionViewCell.identifier)
        
    }
    
}

extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchResultCollectionViewCell.identifier, for: indexPath) as? SearchResultCollectionViewCell else {return UICollectionViewCell()}
        
        cell.backgroundColor = .lightText
        cell.setupCell()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.present(DetailViewController(), animated: true)
        
    }
    
}
