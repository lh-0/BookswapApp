
    
    
    
    //
    //  ChatViewController.swift
    //  bookswap2
    //
    //  Created by Chloe Hung on 3/11/24.
    //

    import UIKit

    //class ChatViewController: UIViewController {
    class tmpChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

        @IBOutlet weak var chatTableView: UITableView!
        
        var messages: [Message] = [
            Message(sender: "1@2.com", body: "Hey!"),
            Message(sender: "1@2.com", body: "Hey2!"),
            Message(sender: "1@2.com", body: "Hey3!")
        ]

        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
            chatTableView.delegate = self
            chatTableView.dataSource = self

        }

        //UITableViewDataSource override
        func numberOfSections(in tableView: UITableView) -> Int {
            1
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            print("row")
            return 5
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)

            cell.textLabel?.text = "hi"
            print("dequeue")
            return cell
        }

        func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
            return 121
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 121
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("historyIndexPath --\(indexPath)-")
        }

    /*
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            print(messages.count)
            return messages.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath )
            print(indexPath)
            cell.textLabel?.text = "This is a cell"
            print("This is a cell")
            return cell
        }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(indexPath.row)
        }
    */
        
        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }

    /*
    extension ChatViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            print(messages.count)
            return messages.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath )
            print(indexPath)
            cell.textLabel?.text = "This is a cell"
            print("This is a cell")
            return cell
        }

    }

    extension ChatViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
            print(indexPath.row)
        }
    }
    */

    
    

/*
extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.Chat.cellIdentifier, for: indexPath)
        cell.textLabel?.text = "This is a cell"
        return cell
    }
    
    
}
*/

