//
//  ViewController.m
//  AnimacionBasica
//
//  Created by Henry AT on 9/29/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize imagenView,velocidadSlider,velocidadLabel,palancaBoton;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray *lasImagenes;
    lasImagenes = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"frame-1.png"],
                   [UIImage imageNamed:@"frame-1.png"],
                   [UIImage imageNamed:@"frame-2.png"],
                   [UIImage imageNamed:@"frame-3.png"],
                   [UIImage imageNamed:@"frame-4.png"],
                   [UIImage imageNamed:@"frame-5.png"],
                   [UIImage imageNamed:@"frame-6.png"],
                   [UIImage imageNamed:@"frame-7.png"],
                   [UIImage imageNamed:@"frame-8.png"],
                   [UIImage imageNamed:@"frame-9.png"],
                   [UIImage imageNamed:@"frame-10.png"],
                   [UIImage imageNamed:@"frame-11.png"],
                   [UIImage imageNamed:@"frame-12.png"],
                   [UIImage imageNamed:@"frame-13.png"],
                   [UIImage imageNamed:@"frame-14.png"],
                   [UIImage imageNamed:@"frame-15.png"],
                   [UIImage imageNamed:@"frame-16.png"],
                   [UIImage imageNamed:@"frame-17.png"],
                   [UIImage imageNamed:@"frame-18.png"],
                   [UIImage imageNamed:@"frame-19.png"],
                   [UIImage imageNamed:@"frame-20.png"],
                   nil];
    
    imagenView.animationImages = lasImagenes;
    imagenView.animationDuration = 1 ;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setImagenView:nil];
    [self setVelocidadSlider:nil];
    [self setVelocidadLabel:nil];
    [self setPalancaBoton:nil];
    [super viewDidUnload];
}
- (IBAction)palancaAnimacion:(id)sender {
    NSString *cadenaDeVelocidad;
    imagenView.animationDuration = 2-velocidadSlider.value;
    [imagenView startAnimating];
    [palancaBoton setTitle:@"Stop" forState:UIControlStateNormal];
    cadenaDeVelocidad = [[NSString alloc] initWithFormat:@"%1.2f hps",1/(2-velocidadSlider.value)];
    velocidadLabel.text = cadenaDeVelocidad;
}

- (IBAction)startBoton:(UIButton *)sender {

    if (imagenView.isAnimating) {
        [sender setTitle:@"Iniciar" forState:UIControlStateNormal];
        [imagenView stopAnimating];
    } else {
        [imagenView startAnimating];
        [sender setTitle:@"Stop" forState:UIControlStateNormal];
    }
    
    
}
@end
