//
//  SearchResultCollectionViewCell.swift
//  myBook
//
//  Created by 문기웅 on 5/7/24.
//

import UIKit

class SearchResultCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "SearchResultCollectionViewCell"
    
    let bookImage: UIImageView = UIImageView()
    let titleLabel: UILabel = UILabel()
    let madeLabel: UILabel = UILabel()
    let priceLabel: UILabel = UILabel()
    
    func setupCell() {
        setupLayout()
        
        bookImage.image = UIImage(systemName: "book")
        titleLabel.text = "책 제목이 들어옵니다"
        madeLabel.text = "출판사가 들어옵니다"
        priceLabel.text = "15,000원"
    }
    
    func setupLayout() {
        [bookImage, titleLabel, madeLabel, priceLabel].forEach{ addSubview($0) }
        
        bookImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-80)
        }
        
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 20)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(bookImage.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
        madeLabel.textAlignment = .center
        madeLabel.font = .systemFont(ofSize: 10)
        madeLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
        priceLabel.textAlignment = .center
        priceLabel.font = .systemFont(ofSize: 15)
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(madeLabel.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
    }

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
