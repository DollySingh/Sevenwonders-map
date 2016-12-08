//
//  ViewController.h
//  DemoMAP
//
//  Created by Student-002 on 03/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>

@property(nonatomic,retain)MKMapView *map;

@property(nonatomic,retain)NSMutableArray *imagearray;

@property(nonatomic,retain)MKPointAnnotation *point1,*point2,*point3,*point4,*point5,*point6,*point7;

@end

