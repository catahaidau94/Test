//
//  ViewController.m
//  RSP
//
//  Created by Training on 9/10/13.
//  Copyright (c) 2013 Training. All rights reserved.
//

#import "ViewController.h"
#import "String.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)initalizeLogic
{    
    String *myString2 = [String createWithCString:"Hello"];
    
    [myString2 upperCase];
    NSLog (@"%s", myString2.text);
}

- (IBAction)rockpressed:(id)sender
{
    NSLog(@"ROCK PRESSED");
    self.choose = 0;
    self.image1.image = [UIImage imageNamed:@"rockimage.jpg"];
    
}

- (IBAction)scissorspressed:(id)sender
{
    self.choose = 1;
    self.image1.image = [UIImage imageNamed:@"scissorsimage.jpg"];
}


- (IBAction)paperpressed:(id)sender
{
    self.choose = 2;
    self.image1.image = [UIImage imageNamed:@"paperimage.jpg"];
}

- (IBAction)playpressed:(id)sender
{
    
    self.randomresult = arc4random() % 3;
    
    NSLog (@"%d %d ", self.choose, self.randomresult);
    
    if (! self.randomresult) self.image2.image = [UIImage imageNamed:@"rockimage.jpg"];
    if (self.randomresult == 1) self.image2.image = [UIImage imageNamed:@"scissorsimage.jpg"];
    if (self.randomresult == 2) self.image2.image = [UIImage imageNamed:@"paperimage.jpg"];
    
    if (self.choose == self.randomresult)
    {
        self.result.text = @"DRAW";
        return;
    }
    
    if (self.choose == 0 && self.randomresult == 1)
    {
        self.result.text = @"WIN";
        return;
    }
    else if (self.choose == 0)
    {
        self.result.text = @"LOSE";
        return;
    }
    
    if (self.choose == 1 && self.randomresult == 2)
    {
        self.result.text = @"WIN";
        return;
    }
    else if (self.choose == 1)
    {
        self.result.text = @"LOSE";
        return;
    }
    
    if (self.choose == 2 && self.randomresult == 0)
    {
        self.result.text = @"WIN";
        return;
    }
    else if (self.choose == 2)
    {
        self.result.text = @"LOSE";
    }
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initalizeLogic];
}


@end
