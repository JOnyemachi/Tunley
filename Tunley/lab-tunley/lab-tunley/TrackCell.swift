//
//  TrackCell.swift
//  lab-tunley
//
//  Created by JeffO on 3/7/23.
//

import UIKit
import Nuke //image Loading System that provides methods we need to load images from remote URL

class TrackCell: UITableViewCell {

 //MARK: OUTLETS
    
    @IBOutlet weak var trackImageVIew: UIImageView!
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
//end outlets
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    } // end awakeFromNib

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    } // end setSelected()

    //changes the cell UI for given track
    func configure(with track: Track) {
        trackNameLabel.text = track.trackName
        artistNameLabel.text = track.artistName
        
        //load image asynchronously using Nuke img-load helper method
        Nuke.loadImage(with: track.artworkUrl100, into: trackImageVIew)
    }
    
    
    
} // end trackCell class
