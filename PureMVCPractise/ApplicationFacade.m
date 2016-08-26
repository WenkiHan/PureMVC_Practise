//
//  ApplicationFacade.m
//  PureMVCPractise
//
//  Created by nimo on 8/15/16.
//  Copyright © 2016 nimo. All rights reserved.
//

#import "ApplicationFacade.h"
#import "StartUpCommand.h"
#import "AddTwoNumbersCommand.h"
#import "SubTwoNumbersCommand.h"

NSString *StartUp = @"startup";
NSString *AddTwoNumbers = @"addtwonumbers";
NSString *SubTwoNumbers = @"subtwonumbers";
NSString *ShowResult = @"showresult";

@implementation ApplicationFacade

+ (instancetype)sharedInstance
{
    return (ApplicationFacade *)[super getInstance];
}

- (void)startup:(id)app
{
    [self sendNotification:StartUp body:app];
}

- (void)initializeController
{
    [super initializeController];
    [self registerCommand:StartUp commandClassRef:[StartUpCommand class]];
    [self registerCommand:AddTwoNumbers commandClassRef:[AddTwoNumbersCommand class]];
    [self registerCommand:SubTwoNumbers commandClassRef:[SubTwoNumbersCommand class]];
}

@end
