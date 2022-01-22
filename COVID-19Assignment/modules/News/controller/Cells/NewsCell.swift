//
//  NewsCell.swift
//  COVID-19Assignment
//
//  Created by khalil on 22/1/2022.
//

import UIKit
import RxSwift

class NewsCell: UICollectionViewCell {
    
    @IBOutlet weak var titileLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var imageNews: UIImageView!
    @IBOutlet weak var contentLbl: UILabel!
    @IBOutlet weak var authorLbl: UILabel!
    var bag = DisposeBag()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        self.bag = DisposeBag()
    }
}


