//
//  ViewController.h
//  AnimacionBasica
//
//  Created by Henry AT on 9/29/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imagenView;

@property (strong, nonatomic) IBOutlet UISlider *velocidadSlider;

@property (strong, nonatomic) IBOutlet UILabel *velocidadLabel;

@property (strong, nonatomic) IBOutlet UIButton *palancaBoton;
- (IBAction)palancaAnimacion:(id)sender;

- (IBAction)startBoton:(id)sender;



@end
