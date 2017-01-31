//
//  MeasurementCell.swift
//  Exermote
//
//  Created by Stephan Lerner on 14.01.17.
//  Copyright © 2017 Stephan Lerner. All rights reserved.
//

import UIKit

class MeasurementCell: UITableViewCell {

    @IBOutlet weak var beaconIdentifierLbl: UILabel!
    @IBOutlet weak var xAccelerationLbl: UILabel!
    @IBOutlet weak var yAccelerationLbl: UILabel!
    @IBOutlet weak var zAccelerationLbl: UILabel!
    @IBOutlet weak var rssiLbl: UILabel!
    @IBOutlet weak var frequencyLbl: UILabel!
    
    @IBOutlet weak var ContainerView: MaterialView!
    
    func configureCell(measurementPoint: MeasurementPoint) {
        beaconIdentifierLbl.text = "\(measurementPoint.beaconIdentifier)"
        xAccelerationLbl.text = String(format: "%.2f", measurementPoint.xAcceleration)
        yAccelerationLbl.text = String(format: "%.2f", measurementPoint.yAcceleration)
        zAccelerationLbl.text = String(format: "%.2f", measurementPoint.zAcceleration)
        rssiLbl.text = "\(measurementPoint.rssi)"
        frequencyLbl.text = String(format: "%.2f", measurementPoint.frequency)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        if selected {
            ContainerView.backgroundColor = COLOR_HIGHLIGHTED
        } else {
            ContainerView.backgroundColor = COLOR_NOT_HIGHLIGHTED
        }
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        self.backgroundColor = UIColor.clear
    }
}
