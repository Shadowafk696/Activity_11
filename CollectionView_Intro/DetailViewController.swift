//
//  Created by Shadow on 20/03/18.
//  Copyright © 2018 TecMilenio. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    var detailName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
//generamos un titulo que tendra junto con su imagen.
        title = detailName
        detailImage.image = UIImage.init(named: detailName!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
