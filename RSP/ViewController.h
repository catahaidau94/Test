//
//  ViewController.h
//  RSP
//
//  Created by Training on 9/10/13.
//  Copyright (c) 2013 Training. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "String.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *rock;
@property (weak, nonatomic) IBOutlet UIButton *scissors;
@property (weak, nonatomic) IBOutlet UIButton *paper;
@property (weak, nonatomic) IBOutlet UIButton *play;


@property (weak, nonatomic) IBOutlet UILabel *result;

@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;


@property int choose;
@property int randomresult;

@property String *someString;

- (IBAction)rockpressed:(id)sender;
- (IBAction)scissorspressed:(id)sender;
- (IBAction)paperpressed:(id)sender;

- (IBAction)playpressed:(id)sender;



@end
