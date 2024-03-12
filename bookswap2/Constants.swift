//
//  Constants.swift
//  bookswap2
//
//  Created by Chloe Hung on 3/11/24.
//

struct K {
    // static let loginSeque = "LoginToChat"
    static let appName = "BookSwap"
    
    struct Chat {
        static let cellIdentifier = "ReusableCell"
        static let cellNibName = "MessageCell"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
