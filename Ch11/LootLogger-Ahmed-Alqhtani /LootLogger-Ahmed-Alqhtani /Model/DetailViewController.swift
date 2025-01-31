//
//  DetailViewController.swift
//  LootLogger-Ahmed-Alqhtani - Silver
//
//  Created by Ahmed awadh alqhtani on 20/04/1443 AH.
//

import UIKit
class DetailViewController: UIViewController {
  
  @IBOutlet weak var nameField: UITextField!
  @IBOutlet var serialNumberField: UITextField!
  @IBOutlet var valueField: UITextField!
  @IBOutlet var dateLabel: UILabel!
  
  
  
  var item: Item!
  { didSet {
    navigationItem.title = item.name
  
    }
  
  }
  
  let numberFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.minimumFractionDigits = 2
    formatter.maximumFractionDigits = 2
    return formatter
  }()
  let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .none
    return formatter
  }()
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    nameField.text = item.name
    serialNumberField.text = item.serialNumber
    valueField.text =
      numberFormatter.string(from: NSNumber(value: item.valueInDollars))
    dateLabel.text = dateFormatter.string(from: item.dateCreated)
  }
  
}
