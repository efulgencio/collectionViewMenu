//
//  ColeccionVC.swift
//  Test
//
//  Created by eduardo fulgencio on 2/2/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

import UIKit



class ColeccionVC: UICollectionViewController {


    private let reuseIdentifier = "identificadorCell"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 70.0, right: 20.0)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        // self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! Celda
        
        if(indexPath.section == 0 ) {
            let opcionShow = opcionesSeccion1[indexPath.row]
            cell.imageView.image = UIImage(named: opcionShow.icono)
            cell.etiqueta.text = opcionShow.titulo
        } else {
            let opcionShow = opcionesSeccion2[indexPath.row]
            cell.imageView.image = UIImage(named: opcionShow.icono)
            cell.etiqueta.text = opcionShow.titulo
        }
     
    
        return cell
    }

    // MARK: UICollectionViewDelegate
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
            print("Se ha seleccionado un elemento")
    }

    
    override func collectionView(collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
            
            switch kind {
            case UICollectionElementKindSectionHeader:
                let headerView =  collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "Cabecera",
                    forIndexPath: indexPath)
                    as! Cabecera
                headerView.titulo.text = "Título sección \(indexPath.section)"
                headerView.backgroundColor = UIColor.whiteColor()
                return headerView
            default:
                assert(false, "Unexpected element kind")
            }
    }

    
}

// Custom Layouts: A Worked Example en los recursos puede ejecutar los pasos que indica

extension ColeccionVC : UITextFieldDelegate {
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // 1
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .Gray)
        textField.addSubview(activityIndicator)
        activityIndicator.frame = textField.bounds
        activityIndicator.startAnimating()

        
        textField.text = nil
        textField.resignFirstResponder()
        return true
    }
}

extension ColeccionVC : UICollectionViewDelegateFlowLayout {
    //1
    // is responsible for telling the layout the size of a given cell
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {

            return CGSize(width: 100, height: 100)
    }
    
    //3
    //  returns the spacing between the cells, headers, and footers. A constant is used to store the value.
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }
}