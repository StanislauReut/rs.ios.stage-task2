#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger counter = 0;
    
    for (int n = 0; n < array.count; n++) {
        
        for (int m = n + 1; m < array.count; m++) {
            
            if (ABS(array[n].intValue - array[m].intValue) == number.intValue ) {
                counter++;
            }
        }
    }
    
    return counter;
}

@end
