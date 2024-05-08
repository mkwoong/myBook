//
//  MyViewController.swift
//  myBook
//
//  Created by 문기웅 on 5/7/24.
//

import UIKit
import SnapKit

class MyViewController: UIViewController {
    
    let deleteButton: UIBarButtonItem = UIBarButtonItem()
    let titleLabel: UILabel = UILabel()
    let listTableView: UITableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "mPurple")
        
        setUI()
        setLayout()
        
    }
    
    func setUI() {
        [titleLabel, listTableView].forEach{ view.addSubview($0) }
        
        titleLabel.text = "My Book"
        
        self.navigationItem.titleView = titleLabel
        self.navigationItem.leftBarButtonItem = deleteButton
        
        deleteButton.title = "전체삭제"
        
        self.listTableView.dataSource = self
        self.listTableView.delegate = self
        self.listTableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.identifier)
        
        listTableView.rowHeight = UITableView.automaticDimension
        listTableView.estimatedRowHeight = UITableView.automaticDimension
    }
    
    func setLayout() {
        deleteButton.tintColor = .white
        
        titleLabel.font = .boldSystemFont(ofSize: 25)
        titleLabel.textColor = .white

        listTableView.backgroundColor = .clear
        listTableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }

}

extension MyViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as? MyTableViewCell else {return UITableViewCell()}
        
        cell.backgroundColor = .lightText
        cell.setUI()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
