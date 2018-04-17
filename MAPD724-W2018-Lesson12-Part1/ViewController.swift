

import UIKit
import MapKit

class ViewController: UIViewController {

   
    @IBOutlet weak var map: MKMapView!
    //To fix
    let lat = 43.6532
    let long = -79.3832
    var delta = 5.0
    let mapLocation = CLLocationCoordinate2DMake(43.6532, -79.3832)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loc = CLLocationCoordinate2DMake(lat, long)
        let span = MKCoordinateSpanMake(delta, delta)
       let reg = MKCoordinateRegionMake(loc, span)
        
        self.map.region = reg
        let ann = MKPointAnnotation()
        ann.coordinate = self.mapLocation
        ann.title = "Toronto"
        ann.subtitle = "A place that;s really cool"
        self.map.addAnnotation(ann)
    
        
        
        
    }


}

