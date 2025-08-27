import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       if let selectedImage = selectedImage {
           imageView.image = UIImage(named: selectedImage)
        }
    }
}
