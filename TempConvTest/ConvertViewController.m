//
//  ConvertViewController.m
//  TempConvTest
//
//  Created by Tao Xia on 1/13/14.
//  Copyright (c) 2014 Tao Xia. All rights reserved.
//

#import "ConvertViewController.h"

@interface ConvertViewController ()

@end

@implementation ConvertViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertButton:(id)sender {
    [self storeInput];
}

- (void)storeInput
{
    float cDegree = [self.cField.text floatValue];
    float fDegree = [self.fField.text floatValue];

    NSUserDefaults *input = [NSUserDefaults standardUserDefaults];
    [input setFloat:cDegree forKey:@"input_c"];
    [input setFloat:fDegree forKey:@"input_f"];
    [input synchronize];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}


@end
