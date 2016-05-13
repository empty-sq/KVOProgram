//
//  SQKVONotifying_Person.m
//  响应式编程思想
//
//  Created by 沈强 on 16/5/12.
//  Copyright © 2016年 SQ. All rights reserved.
//

#import "SQKVONotifying_Person.h"
#import <objc/runtime.h>

@implementation SQKVONotifying_Person

- (void)setAge:(NSInteger)age {
    [super setAge:age];
    
    // 通知观察者，属性改变
    id observer = objc_getAssociatedObject(self, @"observer");
    
    [observer observeValueForKeyPath:@"age" ofObject:self change:nil context:nil];
}

@end
