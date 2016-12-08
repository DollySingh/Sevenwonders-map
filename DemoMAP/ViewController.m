//
//  ViewController.m
//  DemoMAP
//
//  Created by Student-002 on 03/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    _map=[[MKMapView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _map.mapType=MKMapTypeHybrid;
    _map.delegate=self;
    
    [self.view addSubview:_map];
    
    _point1=[[MKPointAnnotation alloc]init];
    _point1.title=@"Great Pyramid Of Giza";
    _point1.subtitle=@"Egypt";
    CLLocationCoordinate2D location1;
    location1.latitude=29.9792;location1.longitude=31.1342;
    _point1.coordinate=location1;
    
    [_map addAnnotation:_point1];
    
   _point2=[[MKPointAnnotation alloc]init];
    _point2.title=@"Colosseum";
    _point2.subtitle=@"Rome";
    CLLocationCoordinate2D location2;
   location2.latitude=41.8902;location2.longitude=12.4922;
    _point2.coordinate=location2;
    
   [_map addAnnotation:_point2];
    
    _point3=[[MKPointAnnotation alloc]init];
    _point3.title=@"Great Wall Of China";
    _point3.subtitle=@"China";
    CLLocationCoordinate2D location3;
    location3.latitude=40.4319;location3.longitude=116.5704;
   _point1.coordinate=location3;
    
    [_map addAnnotation:_point3];
    
    
    _point4=[[MKPointAnnotation alloc]init];
    _point4.title=@"Hagia Sophia";
    _point4.subtitle=@"Spain";
    CLLocationCoordinate2D location4;
    location4.latitude=41.0086;location4.longitude=28.9802;
    _point4.coordinate=location4;
    
    [_map addAnnotation:_point4];
    
    _point5=[[MKPointAnnotation alloc]init];
    _point5.title=@"Stonehenge";
    _point5.subtitle=@"France";
    CLLocationCoordinate2D location5;
    location5.latitude=51.1789;location5.longitude=1.8262;
    _point5.coordinate=location5;
    
    [_map addAnnotation:_point5];
    
    _point6=[[MKPointAnnotation alloc]init];
    _point6.title=@"Macchu Picchu";
    _point6.subtitle=@"XYZ";
    CLLocationCoordinate2D location6;
    location6.latitude=13.1631;location6.longitude=72.5450;
    _point6.coordinate=location6;
    
    [_map addAnnotation:_point6];

    _point7=[[MKPointAnnotation alloc]init];
    _point7.title=@"Taj Mahal";
    _point7.subtitle=@"India";
    CLLocationCoordinate2D location7;
    location7.latitude=27.1750;location7.longitude=78.0422;
    _point7.coordinate=location7;
    
    [_map addAnnotation:_point7];
    
    
    _imagearray=[NSMutableArray arrayWithObjects:@"pyramid.jpg",@"colo.jpg",@"china.jpg",@"hagia.jpg",@"stone.jpg",@"machhu.jpg",@"taj.jpg", nil];
}


-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pin=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"pin"];
    
   pin.pinTintColor=[UIColor blueColor];
    
    pin.canShowCallout=YES;
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeInfoDark];
    
   [btn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    
   pin.rightCalloutAccessoryView=btn;
   
    if(annotation==_point1)
   {
        UIImageView *i=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imagearray objectAtIndex:0]]];
        pin.leftCalloutAccessoryView=i;
    }
    else if(annotation==_point2)
    {
        UIImageView *i=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imagearray objectAtIndex:1]]];
        pin.leftCalloutAccessoryView=i;
   }
    else if(annotation==_point3)
    {
       UIImageView *i=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imagearray objectAtIndex:2]]];
        pin.leftCalloutAccessoryView=i;
    }
   else if(annotation==_point4)
    {
        UIImageView *i=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imagearray objectAtIndex:3]]];
        pin.leftCalloutAccessoryView=i;
    }
    else if(annotation==_point5)
    {
        UIImageView *i=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imagearray objectAtIndex:4]]];
       pin.leftCalloutAccessoryView=i;
    }
    else if(annotation==_point6)
    {
        UIImageView *i=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imagearray objectAtIndex:5]]];
        pin.leftCalloutAccessoryView=i;
   }
    else
   {
        UIImageView *i=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imagearray objectAtIndex:6]]];
       pin.leftCalloutAccessoryView=i;
    }
    
   return pin;
}

-(void)btnclick:(UIButton *)sender
{
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
