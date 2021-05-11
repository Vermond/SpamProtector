import UIKit

class SearchTableViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension SearchTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchTableCell.className, for: indexPath) as? SearchTableCell else {
            return UITableViewCell()
        }
        return cell
    }
}
