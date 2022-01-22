//
//  ViewController.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import UIKit
import MapKit
import Foundation
import RxCocoa
import RxSwift

class MainViewController: UIViewController  , Storyboarded {
    
    @IBOutlet weak var worldMap: MKMapView!
    var coordinator: MainCoordinator?
    private let mainViewModel = MainViewModel()
    private let disposeBag = DisposeBag()
    var countriesNames = PublishSubject<String>()
    var countriesNamesArry = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        worldMap.delegate = self
        preparation()
    }

    private func preparation() {
        let input = MainViewModel.Input(trigger: Driver<Void>.just(()), name: countriesNames.asDriverOnErrorJustComplete())
        let output = mainViewModel.transform(input: input)
        getCountries(output: output)
        getRESTCountries(output: output)
    }
    
    private func getCountries(output : MainViewModel.Output) {
        output.getCountries.asObservable().subscribe(onNext: {date in
            
            let countries = date.dates?.the20201010?.countries ?? [:]
            for (key, _) in countries {
                self.countriesNamesArry.append(key)
            }
            self.countriesNamesArry.forEach { name in
                self.countriesNames.onNext(name)
            }
        }).disposed(by: disposeBag)
        
    }
    
    
    private func getRESTCountries(output : MainViewModel.Output) {
        output.getRESTCountries.asObservable().subscribe(onNext: {date in
            
            date.first?.forEach({ date in
                print(date)
                let latitude =  Double(date.latlng?.first ?? 0)
                let longitude =  Double(date.latlng?.last ?? 0)
                let artwork = CovidCountry(
                    title: date.cca2 ?? "",
                    locationName: date.currencies?.all?.name,
                    discipline: date.name?.official ?? "",
                    coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), imageUrl: date.flags?.png ?? "")
                self.worldMap.addAnnotation(artwork)
            })
            
        }).disposed(by: disposeBag)
        
    }
}

extension MainViewController : MKMapViewDelegate  {
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        let reuseID = "CovidCountry"
        var pinView = worldMap.dequeueReusableAnnotationView(withIdentifier: reuseID) as? MKPinAnnotationView
        if(pinView == nil) {
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseID)
            pinView!.animatesDrop = true
        }
        return pinView
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let viewData =  view.annotation  as? CovidCountry
        coordinator?.news(countryName: (view.annotation?.title ?? "") ?? "", imageUrl: viewData?.imageUrl ?? ""  , name : viewData?.discipline ?? "" )
        let selectedAnnotations = mapView.selectedAnnotations
        for annotation in selectedAnnotations {
            mapView.deselectAnnotation(annotation, animated: false)
        }
        
    }
 
    
}




