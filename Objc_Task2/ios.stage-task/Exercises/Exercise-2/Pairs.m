#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSSet *inputSet = [NSSet setWithArray:array];
    NSInteger result = 0;

    for(int i = 0; i < array.count; i++) {
        NSInteger neededValue = [array[i] integerValue] + [number integerValue];
        if([inputSet containsObject:@(neededValue)]) {
            result++;
        }
    }
    return result;
}

@end
