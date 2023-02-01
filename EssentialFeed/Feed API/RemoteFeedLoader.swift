//
// Created on 2023/2/1.
//

import Foundation

class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL
    
    init(url: URL , client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    func load() {
        client.get(from: url)
    }
}

protocol HTTPClient {
    func get(from url: URL)
}
