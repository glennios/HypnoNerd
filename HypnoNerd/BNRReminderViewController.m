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
- (IBAction)addReminder:(id)sender {
    NSLog(@"Setting a reminder for %@", self.datePicker.date);
}
@end
