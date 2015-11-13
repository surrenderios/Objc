//
//  NSIndexPath+DataPage.h
//  Objc
//
//  Created by Alex on 15/11/13.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSIndexPath (DataPage)
@property (nonatomic, assign) NSUInteger page;
@property (nonatomic, assign) NSUInteger pageCount;

+ (NSIndexPath *)indexPathForPage:(NSUInteger)page pageCount:(NSUInteger)count;
@end
