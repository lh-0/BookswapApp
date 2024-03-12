//
//  ChatViewController.swift
//  bookswap2
//
//  Created by Chloe Hung on 3/12/24.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var messages: [Message] = [
        Message(sender: "1@2.com", body: "Hey!"),
        Message(sender: "1@2.com", body: "Hey2!"),
        Message(sender: "1@2.com", body: "Hey3!")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: K.Chat.cellNibName, bundle: nil), forCellReuseIdentifier: K.Chat.cellIdentifier)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    /*
    //UITableViewDataSource override
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)

        cell.textLabel?.text = messages[indexPath.row].body
        print("profile deque ", indexPath.row)
        return cell
    }
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 121
//    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 121
//    }
    //UITableViewDelegate override
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("chatIndexPath --\(indexPath.row)-")
    }
     */
    
    
}


extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.Chat.cellIdentifier, for: indexPath )
            as! MessageCell
        print(indexPath)
        cell.label.text = messages[indexPath.row].body
        return cell
    }

}

extension ChatViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("chatSelect --\(indexPath.row)-")
    }
}
