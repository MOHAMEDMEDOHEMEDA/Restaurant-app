//
//  MenuItemCell.swift
//  Order App
//
//  Created by Mohamed Magdy on 11/08/2024.
//

import UIKit

class MenuItemCell: UITableViewCell {
    var itemName: String? = nil
    {
        didSet {
            if oldValue != itemName {
                setNeedsUpdateConfiguration()
            }
        }
    }
    var price: Double? = nil
    {
        didSet {
            if oldValue != price {
                setNeedsUpdateConfiguration()
            }
        }
    }
    var image: UIImage? = nil
    {
        didSet {
            if oldValue != image {
                setNeedsUpdateConfiguration()
            }
        }
    }

    override func updateConfiguration(using state: UICellConfigurationState) {
        var content = UIListContentConfiguration.cell().updated(for: state)
        content.text = itemName
        content.secondaryText = price?.formatted(.currency(code: "USD"))
        content.prefersSideBySideTextAndSecondaryText = true

        if let itemImage = image {
            
            content.image = itemImage
            content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
            content.imageProperties.cornerRadius = 8
        } else {
            content.image = UIImage(systemName: "photo.on.rectangle")
            content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
            content.imageProperties.cornerRadius = 8
        }

        self.contentConfiguration = content
    }
    }

    

