//
//  newclass.m
//  RSP
//
//  Created by Training on 9/10/13.
//  Copyright (c) 2013 Training. All rights reserved.
//

#import "String.h"

@implementation String

+ (String *)createWithCString:(char *)CString {
    String *result = [String new];
    
    result.text = malloc(strlen(CString) + 1);
    memcpy(result.text, CString,strlen(CString));
    result.text[strlen(CString)] = 0;
    
    return result;
}

- (int)lenght
{
    return strlen(self.text);
}

- (void)addString:(String *)otherString
{
    strcat(self.text, otherString.text);
}

- (BOOL)containsString:(String *)otherString
{
    if (! strstr(self.text, otherString.text))
    {
        return YES;
    }
    return NO;
}

- (void)upperCase
{
    for (int i = 0; i < self.lenght; ++ i)
    {
        self.text[i] = toupper(self.text[i]);
    }
}


@end
