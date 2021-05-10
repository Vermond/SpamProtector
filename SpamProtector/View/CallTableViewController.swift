//
//  CallTableViewController.swift
//  test
//
//  Created by Jinsu Gu on 2021/05/10.
//

import UIKit

class CallTableViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension CallTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CallTableCell", for: indexPath) as? CallTableCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    
}
