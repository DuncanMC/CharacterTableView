//
//  CharacterTableViewController.swift
//  CharacterTableView
//
//  Created by Duncan Champney on 10/17/18.
//  Copyright © 2018 Duncan Champney. All rights reserved.
//

import UIKit

class CharacterTableViewController: UITableViewController {

    public var contentString: String? {
        didSet {
            if let string = contentString {
                characters = Array(string)
            } else {
                characters = nil
            }
        }
    }
    
    var characters: [Character]? {
        didSet {
            tableView.reloadData()
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = String(characters?[indexPath.row] ?? Character(""))
        return cell
    }
}
