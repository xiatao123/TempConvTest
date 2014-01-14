//
//  ResultViewController.m
//  TempConvTest
//
//  Created by Tao Xia on 1/13/14.
//  Copyright (c) 2014 Tao Xia. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

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
    NSUserDefaults *input = [NSUserDefaults standardUserDefaults];
    float cInput = [input floatForKey:@"input_c"];
    float fInput = [input floatForKey:@"input_f"];
    
    if(!isnan(cInput)){
        float conv = [self convertCtoF:cInput];
        self.fResult.text = [NSString stringWithFormat: @"C %0.2f convert to F %0.2f", cInput, conv];
    }
    if(!isnan(fInput)){
        float conv = [self convertFtoC:fInput];
        self.cResult.text = [NSString stringWithFormat: @"F %0.2f convert to C %0.2f", fInput, conv];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (float) convertFtoC: (float)degree
{
    return (degree-32)*5/9;
}

- (float) convertCtoF: (float)degree
{
    return degree*9/5+32;
}

@end
