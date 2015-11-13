//
//  NSIndexPath+DataPage.m
//  Objc
//
//  Created by Alex on 15/11/13.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "NSIndexPath+DataPage.h"
#import <objc/runtime.h>
static const void*Page = &Page;
static const void*PageCount = &PageCount;

@implementation NSIndexPath(DataPage)
@dynamic page;
@dynamic pageCount;

-(NSUInteger)page
{
    return [objc_getAssociatedObject(self, Page) intValue];
}

-(void)setPage:(NSUInteger)page
{
    NSNumber *number= [NSNumber numberWithUnsignedInteger:page];
    objc_setAssociatedObject(self, Page, number, OBJC_ASSOCIATION_ASSIGN);
}

-(NSUInteger)pageCount
{
    return [objc_getAssociatedObject(self, PageCount) intValue];
}
-(void)setPageCount:(NSUInteger)pageCount
{
    NSNumber *number = [NSNumber numberWithUnsignedInteger:pageCount];
    objc_setAssociatedObject(self, PageCount, number, OBJC_ASSOCIATION_ASSIGN);
}

+ (NSIndexPath *)indexPathForPage:(NSUInteger)page pageCount:(NSUInteger)count;
{
    NSIndexPath *index =[[NSIndexPath alloc ] init];
    [index setPageCount:count];
    [index setPage:page];
    return  index;
}
@end
