//
//  MyTableViewCell.swift
//  myBook
//
//  Created by 문기웅 on 5/8/24.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    static let identifier = "MyTableViewCell"
    
    let titleLabel: UILabel = UILabel()
    let madeLabel: UILabel = UILabel()
    let priceLabel: UILabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: MyTableViewCell.identifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI() {
        setLayout()
        
        
        titleLabel.text = "책 이름 책 이름 책 이름 책 이름 책 이름 책 이름"
        madeLabel.text = "출판사 출판사 출판사"
        priceLabel.text = "가격"

    }
    
    func setLayout() {
        [titleLabel, madeLabel, priceLabel].forEach { addSubview($0) }
        
        titleLabel.font = .boldSystemFont(ofSize: 20)
        titleLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-150)
        }
        
        madeLabel.font = .systemFont(ofSize: 10)
        madeLabel.snp.makeConstraints { make in
            make.leading.equalTo(titleLabel.snp.trailing).offset(30)
            make.trailing.equalTo(priceLabel.snp.leading).offset(-20)
            make.centerY.equalToSuperview()
        }
        
        priceLabel.font = .systemFont(ofSize: 15)
        priceLabel.snp.makeConstraints { make in
            make.leading.equalTo(madeLabel.snp.trailing).offset(30)
            make.trailing.equalToSuperview().offset(-20)
            make.centerY.equalToSuperview()
        }
    }

}
