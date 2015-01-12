//
//  ViewController.m
//  WBCalender
//
//  Created by Amol Chavan on 14/10/14.
//  Copyright (c) 2014 Mansi Technologies Pvt. Ltd. All rights reserved.
//

#import "ViewController.h"
#import "DSLCalendarView.h"
#import "DSLCalendarDayView.h"

@interface ViewController ()<DSLCalendarViewDelegate>{
    
}
@property (nonatomic, weak) IBOutlet DSLCalendarView *calendarView;
//@property (nonatomic, weak) DSLCalendarView *calendarView;

@end
@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


#pragma mark - DSLCalendarViewDelegate methods

- (void)calendarView:(DSLCalendarView *)calendarView didSelectRange:(DSLCalendarRange *)range{
    if (range != nil) {
    }
    else {
    }
}

- (BOOL)calendarView:(DSLCalendarView *)calendarView shouldSelectDate:(NSDateComponents *)dateComponents {
    return YES;
    
}

- (BOOL)calendarView:(DSLCalendarView *)calendarView shouldDeselectDate:(NSDateComponents *)dateComponents {
    return YES;
}

-(void)calendarView:(DSLCalendarView *)calendarView didSelectDate:(NSDateComponents *)date {
}

-(void)calendarView:(DSLCalendarView *)calendarView didDeselectDate:(NSDateComponents *)date {
    
}

- (void)calendarView:(DSLCalendarView *)calendarView willChangeToVisibleMonth:(NSDateComponents *)month duration:(NSTimeInterval)duration {
    NSLog(@"Will show %@ in %.3f seconds", month, duration);
}

- (void)calendarView:(DSLCalendarView *)calendarView didChangeToVisibleMonth:(NSDateComponents *)month {
    NSLog(@"Now showing ");
}
@end
