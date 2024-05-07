//
//  DetailViewController.swift
//  myBook
//
//  Created by 문기웅 on 5/7/24.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {
    static let identifier = "DetailViewController"
    
    let titleLabel: UILabel = UILabel()
    let madeLabel: UILabel = UILabel()
    let bookImage: UIImageView = UIImageView()
    let detailLabel: UILabel = UILabel()
    let priceLabel: UILabel = UILabel()
    let cancelButton: UIButton = UIButton()
    let addButton: UIButton = UIButton()
    
    
    func setupUI() {
        [titleLabel, madeLabel, bookImage, priceLabel, detailLabel, cancelButton, addButton].forEach{ view.addSubview($0) }
        
        titleLabel.text = "책 제목"
        madeLabel.text = "출판사"
        
        bookImage.image = UIImage(systemName: "book")
        bookImage.backgroundColor = .mYellow
        
        detailLabel.text = "책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명 책 설명"
        priceLabel.text = "가격"
        
        cancelButton.frame.size = CGSize(width: 70, height: 70)
        cancelButton.setTitle("취소", for: .normal)
        cancelButton.layer.cornerRadius = 5
        cancelButton.backgroundColor = .mPurple
        cancelButton.titleLabel?.textColor = .white
        
        addButton.frame.size = CGSize(width: 50, height: 30)
        addButton.setTitle("담기", for: .normal)
        addButton.layer.cornerRadius = 5
        addButton.backgroundColor = .mYellow
        addButton.titleLabel?.textColor = .white
    }
    
    func setupLayout() {
        titleLabel.font = .systemFont(ofSize: 35)
        titleLabel.textAlignment = .center
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.centerX.equalToSuperview()
        }
        
        madeLabel.font = .systemFont(ofSize: 15)
        madeLabel.textAlignment = .center
        madeLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
        bookImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-400)
        }
        
        priceLabel.font = .systemFont(ofSize: 20)
        priceLabel.textAlignment = .center
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(bookImage.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            
        }
        
        detailLabel.font = .systemFont(ofSize: 25)
        detailLabel.textAlignment = .center
        detailLabel.numberOfLines = 5
        detailLabel.snp.makeConstraints { make in
            make.top.equalTo(priceLabel.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
        }
        
        cancelButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-50)
            make.leading.equalToSuperview().offset(50)
        }
        
        addButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-50)
            make.trailing.equalToSuperview().offset(-50)
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
        setupLayout()

    }
    

}
