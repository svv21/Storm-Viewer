import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var totalCountOfPictures: Int = 0
    var indexOfSelectedPicture: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Pictures \(indexOfSelectedPicture) of \(totalCountOfPictures)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let selectedImage = selectedImage {
           imageView.image = UIImage(named: selectedImage)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
