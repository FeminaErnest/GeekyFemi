//
//  ViewController.m
//  FFAlertView
//
//  Created by Femina Ernest on 5/28/13.
//  Copyright (c) 2013 Femina Ernest. All rights reserved.
//

#import "ViewController.h"


#define PHONE_SCREEN_WIDTH  [[UIScreen mainScreen] bounds].size.width
#define PHONE_SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height



@interface ViewController ()

@end

@implementation ViewController

- (void)SSAlertView:(SSAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"Its coming inside SSAlertView");
    
    if (buttonIndex == 0)
    {
        [animationImageView removeFromSuperview];
        [animationImageView stopAnimating];
        
        NSArray *gArray = @[@"win_1.png", @"win_2.png", @"win_3.png", @"win_4.png",
                            @"win_5.png", @"win_6.png", @"win_7.png", @"win_8.png",
                            @"win_9.png", @"win_10.png", @"win_11.png", @"win_12.png",
                            @"win_13.png", @"win_14.png", @"win_15.png", @"win_16.png"];
        
        
        NSMutableArray *images = [[NSMutableArray alloc] init];
        for (int i = 0; i < gArray.count; i++) {
            [images addObject:[UIImage imageNamed:[gArray objectAtIndex:i]]];
        }
        
        animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 86, 193)];
        animationImageView.animationImages = images;
        animationImageView.animationDuration = 0.5;
        
        [self.view addSubview:animationImageView];
        [animationImageView startAnimating];
    }
    else if (buttonIndex == 1)
    {
        
        [animationImageView removeFromSuperview];
        [animationImageView stopAnimating];

        
        NSArray *gArray = @[@"win_1.png", @"win_2.png", @"win_3.png", @"win_4.png",
                            @"win_5.png", @"win_6.png", @"win_7.png", @"win_8.png",
                            @"win_9.png", @"win_10.png", @"win_11.png", @"win_12.png",
                            @"win_13.png", @"win_14.png", @"win_15.png", @"win_16.png"];
        
        
        NSMutableArray *images = [[NSMutableArray alloc] init];
        for (int i = 0; i < gArray.count; i++) {
            [images addObject:[UIImage imageNamed:[gArray objectAtIndex:i]]];
        }
        
        animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 86, 193)];
        animationImageView.animationImages = images;
        animationImageView.animationDuration = 5;
        
        [self.view addSubview:animationImageView];
        [animationImageView startAnimating];
    }
}

- (void)onAlertBtnPressed
{
    
    [animationImageView removeFromSuperview];
    [animationImageView stopAnimating];
    
    SSAlertView *alert = [[SSAlertView alloc] initWithTitle:@"Welcome" message:@"Network Speed in?" delegate:self cancelButtonTitle:@"US" otherButtonTitle:@"NON US"];
    [self.view addSubview:alert];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *AlertBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    AlertBtn.frame = CGRectMake((int)((self.view.frame.size.width-200.0)/2.0), 120.0, 200.0, 50.0);
    [AlertBtn setTitle:@"Show Alert" forState:UIControlStateNormal];
    [AlertBtn addTarget:self action:@selector(onAlertBtnPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:AlertBtn];
    AlertBtn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
