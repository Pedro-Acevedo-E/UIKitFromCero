//
//  SwiftBetaTableViewDelegate.swift
//  UIKit_6_UITableView
//
//  Created by Pedro Acevedo on 14/04/23.
//

import Foundation
import UIKit

final class SwiftBetaTableViewDelegate: NSObject, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = house[indexPath.row]
        print("CELL: \(model.title)")
    }
}
