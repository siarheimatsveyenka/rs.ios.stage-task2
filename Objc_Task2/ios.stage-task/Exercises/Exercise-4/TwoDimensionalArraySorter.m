#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray *resultNumbersArray = [[NSMutableArray alloc] init];
    NSMutableArray *resultStringsArray = [[NSMutableArray alloc] init];
    NSSortDescriptor *lowToHighSorting = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];

    for(int i = 0; i < array.count; i++) {
        if([array[i] isKindOfClass:[NSArray class]]) {
            if([array[i][0] isKindOfClass:[NSString class]]) {
                [resultStringsArray addObjectsFromArray:array[i]];
            } else {
                [resultNumbersArray addObjectsFromArray:array[i]];
            }
        } else {
            return @[];
        }
    }

    [resultNumbersArray sortUsingDescriptors:@[lowToHighSorting]];
    [resultStringsArray sortUsingDescriptors:@[lowToHighSorting]];

    if(resultStringsArray.count > 0) {
        return resultStringsArray;
    } else {
        return resultNumbersArray;
    }
}

@end
