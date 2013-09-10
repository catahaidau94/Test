//
//  newclass.h
//  RSP
//
//  Created by Training on 9/10/13.
//  Copyright (c) 2013 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface String : NSObject

@property char *text;
+ (String *)createWithCString:(char *)CString;

- (int)lenght;
- (void)addString:(String *)otherString;
- (BOOL)containsString:(String *)otherString;
- (void)upperCase;

@end
