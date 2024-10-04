#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSString *result = [[NSString alloc] init];
    NSMutableArray *resultArray = [[NSMutableArray alloc] initWithObjects:@"0", @"0", @"0", @"0", nil];
    
    if(numbersArray == nil || numbersArray.count > 4) {
        return result;
    }
    
    for(int i = 0; i < numbersArray.count; i++) {
        if([numbersArray[i] integerValue] > 255) {
            result = @"The numbers in the input array can be in the range from 0 to 255.";
            break;
        }
        
        if([numbersArray[i] integerValue] < 0) {
            result = @"Negative numbers are not valid for input.";
            break;
        }
        
        resultArray[i] = [numbersArray[i] stringValue];
        result = [resultArray componentsJoinedByString:@"."];
    }
    return result;
}

@end
