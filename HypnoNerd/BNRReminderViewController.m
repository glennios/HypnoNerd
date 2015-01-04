//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Glenn on 1/3/15.
//  Copyright (c) 2015 Glenn. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController()
@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@end

@implementation BNRReminderViewController
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        self.tabBarItem.image = [UIImage imageNamed:@"Hypno.png"];
    }
    
    return self;
}

- (IBAction)addReminder:(id)sender {
    NSLog(@"Setting a reminder for %@", self.datePicker.date);
}
@end
