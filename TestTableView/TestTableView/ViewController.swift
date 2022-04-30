import UIKit

class ViewController: UIViewController {
    
    //MARK: OUTLET
    @IBOutlet weak var cityTableView : UITableView!
    
    //MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cityTableView.dataSource = self
      }

    //MARK: Global (to class) Variable
    var cityArray :[String] = ["Delhi","London","NewYork","Rome","Tokyo","Moscow"]
    var countryArray :[String] = ["India","England","USA","Italy","Japan","Russia"]
}
//MARK: UITableViewDataSource Methods
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.cityArray.count
    }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row % 2 == 0) {// Even
            let cell = self.cityTableView.dequeueReusableCell(withIdentifier: "ld")!
            cell.textLabel?.text = self.cityArray [indexPath.row]
            cell.detailTextLabel?.text = self.countryArray [indexPath.row]
            cell.backgroundColor = UIColor.red
            return cell
            
        } else {
            let cell = self.cityTableView.dequeueReusableCell(withIdentifier: "b")!
            cell.textLabel?.text = self.cityArray [indexPath.row]
            cell.detailTextLabel?.text = self.countryArray [indexPath.row]
            cell.backgroundColor = UIColor.green
            return cell
        }
    }
}
