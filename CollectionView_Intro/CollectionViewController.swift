//
//  Created by Shadow on 20/03/18.
//  Copyright © 2018 TecMilenio. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    // Se genera el llamado de las imagenes que alojaremos sobre nuestro CollectionView todo por medio de un arreglo
    let BestRestaurant = ["BK","Cocos Locos", "DP", "globo", "JR", "Kyc", "Little Caesars", "Mc", "Sirloin", "PH"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    //Con esto se genera el numero de vistas segun las que ingresemos, en este caso 10
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return BestRestaurant.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Identificamos desde nuestro storyboard el collection para llamar a nuestros datos del arreglo.
        let identifier = "Item"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! CollectionViewCell
        //Con esto se genera el numero de vistas segun las que ingresemos, en este caso 10 labels, y 10 imagenes
        //de los restaurantes
        cell.itemLabel.text = BestRestaurant[indexPath.row]
        cell.itemImage.image = UIImage.init(imageLiteralResourceName: BestRestaurant[indexPath.row])
        
        return cell
    }
    //Predestinamos la informacion de los detalles al clickear sobre la imagen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let item = sender as? UICollectionViewCell
        let indexPath = collectionView.indexPath(for: item!)
        let detailVC = segue.destination as! DetailViewController
        detailVC.detailName = BestRestaurant[(indexPath?.row)!]
    }
    

}

