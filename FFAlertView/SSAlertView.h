//
//  SSAlertView.h
//  Solestruck
//
//  Created by Femina Ernest on 5/28/13.
//  Copyright (c) 2013 adaptavant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface SSAlertView : UIView
{
    id delegate;
    UIView *AlertView;
    NSString * btnTitleText;
    
}

@property id delegate;

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)AlertDelegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitle:(NSString *)otherButtonTitle;
- (void)showInView:(UIView*)view;
- (NSString *)buttonTitleAtIndex:(NSInteger)buttonIndex;



@end

@protocol CustomerAlertDelegate
- (void)SSAlertView:(SSAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;

@end
