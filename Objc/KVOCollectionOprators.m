//
//  KVOCollectionOprators.m
//  Objc
//
//  Created by Alex on 15/11/13.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "KVOCollectionOprators.h"

@implementation Student

@end

@implementation KVOCollectionOprators
- (instancetype)init
{
    if (self = [super init]) {
        _students = [NSMutableArray new];
        [self randomStudentWithScore];
    }
    return self;
}

- (void)randomStudentWithScore;
{
    for (NSUInteger i = 0;i < 10; i++)
    {
        long score =  random() % 100;
        
        Student *st = [Student new];
        [st setScore:score];
     
        [_students addObject:st];
    }
}
@end
