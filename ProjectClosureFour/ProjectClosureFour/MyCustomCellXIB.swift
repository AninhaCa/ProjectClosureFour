//
//  MyCustomCellXIB.swift
//  ProjectClosureFour
//
//  Created by Ana Paula Silva de Sousa on 25/03/23.
//

import UIKit
import SDWebImage

class MyCustomCellXIB: UITableViewCell {
    
    @IBOutlet var labelPizza: UILabel!
    @IBOutlet var imagePizza: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setupXIB(pizzaXIB: PizzaElement?) {
        labelPizza.text = pizzaXIB?.name
        let urlImage = URL(string: pizzaXIB?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
    }
}
