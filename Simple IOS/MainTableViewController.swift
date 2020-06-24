

import UIKit

class MainTableViewController: UITableViewController {

    let subjects = ["Make a call/use phone app", "Search something on the internet", "Add a contact", "Send a text message", "Turn phone off", "Download an app", "Take a picture/video"]
    let links = ["https://edu.gcfglobal.org/en/iphonebasics/using-the-phone-app/1/", "https://support.apple.com/guide/iphone/browse-the-web-iph1fbef4daa/ios", "https://edu.gcfglobal.org/en/iphonebasics/adding-and-managing-contacts/1/", "https://support.apple.com/guide/iphone/send-and-receive-messages-iph82fb73ba3/ios", "https://www.wikihow.com/Turn-off-an-iPhone", "https://support.apple.com/en-us/HT204266", "https://support.apple.com/guide/iphone/take-photos-iph263472f78/ios"]
    
    var currentIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return subjects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Tutorial", for: indexPath)
        cell.textLabel?.text = subjects[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentIndex = indexPath.row
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! WebViewController
        destinationVC.link = links[currentIndex]
    }
    

}
