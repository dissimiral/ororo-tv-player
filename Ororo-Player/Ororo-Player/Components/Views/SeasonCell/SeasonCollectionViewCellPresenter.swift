//
//  SeasonCollectionViewCellPresenter.swift
//  Ororo-Player
//
//  Created by Max Ovtsin on 9/12/18.
//  Copyright © 2018 Max Ovtsin. All rights reserved.
//

import UIKit
import OroroKit

final class SeasonCollectionViewCellPresenter: CollectionViewCellPresenter {

    static func configure(cell: SeasonCollectionViewCell,
                          model: Season) {

        cell.labelName.text = String(model.number) + " " + "season".localized()

        if let url = URL(string: model.posterThumb!) {
            cell.imageViewCover.set(url: url)
        }
    }

    static func sizeForCell(maximumWidth width: CGFloat) -> CGSize {
        return DeviceVisualTheme.sizeForSearchCell(maxWidth: width)
    }
}
