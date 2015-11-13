//
//  KVOCollectionOprators.h
//  Objc
//
//  Created by Alex on 15/11/13.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic, assign) NSInteger score;
@end

@interface KVOCollectionOprators : NSObject
@property (nonatomic, strong) NSMutableArray *students;
@end
