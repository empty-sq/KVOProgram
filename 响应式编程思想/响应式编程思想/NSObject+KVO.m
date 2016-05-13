//
//  NSObject+KVO.m
//  响应式编程思想
//
//  Created by 沈强 on 16/5/12.
//  Copyright © 2016年 SQ. All rights reserved.
//

#import "NSObject+KVO.h"
#import "SQKVONotifying_Person.h"
#import <objc/runtime.h>

@implementation NSObject (KVO)

- (void)sq_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context {
    // 修改isa，本质就是改变当前对象的类名
    object_setClass(self, [SQKVONotifying_Person class]);
    
    // 把观察者保存到当前对象里
    
    
    // 给对象添加关联
    // id object: 给哪个对象添加关联属性
    // key: 属性名
    // value: 关联值
    objc_setAssociatedObject(self, @"observer", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
