//
//  ViewController.m
//  Objc
//
//  Created by Alex on 15/11/13.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "ViewController.h"
#import "NSIndexPath+DataPage.h"
#import "KVOCollectionOprators.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //add property to category
    NSIndexPath *indexPath = [NSIndexPath indexPathForPage:1 pageCount:100];
    NSLog(@"%lu",(unsigned long)indexPath.page);
    NSLog(@"%lu",(unsigned long)indexPath.pageCount);
    
    //test KVO collection oprators
    KVOCollectionOprators *operators = [[KVOCollectionOprators alloc]init];
    double doubleValue =  [[operators.students valueForKeyPath:@"@avg.score"] doubleValue];
    NSLog(@"%f",doubleValue);
    
    NSLog(@"%f",[[operators.students valueForKeyPath:@"@count"] doubleValue]);
    NSLog(@"%f",[[operators.students valueForKeyPath:@"@max.score"] doubleValue]);
    NSLog(@"%f",[[operators.students valueForKeyPath:@"@sum.score"] doubleValue]);
    NSLog(@"%f",[[operators.students valueForKeyPath:@"@min.score"] doubleValue]);
    
    
    NSLog(@"%@",[operators.students valueForKeyPath:@"@unionOfObjects.score"]);
    NSLog(@"%@",[operators.students valueForKeyPath:@"@distinctUnionOfObjects.score"]);
    
    
    //use traditional methods
    double totalScore = 0;
    for (Student *obj in operators.students)
    {
        totalScore += obj.score;
    }
    double avg = totalScore / operators.students.count;
    NSLog(@"%f",avg);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
