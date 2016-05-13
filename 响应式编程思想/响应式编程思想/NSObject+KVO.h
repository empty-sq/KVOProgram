//
//  NSObject+KVO.h
//  响应式编程思想
//
//  Created by 沈强 on 16/5/12.
//  Copyright © 2016年 SQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)

- (void)sq_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;

@end
