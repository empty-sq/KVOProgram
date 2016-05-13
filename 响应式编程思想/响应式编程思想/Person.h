//
//  Person.h
//  响应式编程思想
//
//  Created by 沈强 on 16/5/12.
//  Copyright © 2016年 SQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSInteger _age;
}

/** 年龄 */
@property (nonatomic, assign) NSInteger age;

@end
