#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSMutableArray *stringsArray = [NSMutableArray new];
    NSMutableArray *numbersArray = [NSMutableArray new];
    
    for (NSArray *subarr in array) {
        
        if (![subarr isKindOfClass:[NSArray class]]) {
            return @[];
        }
        
        if (subarr.count == 0) {
            continue;
        }
        
        if ([subarr.firstObject isKindOfClass:[NSNumber class]]) {
            [numbersArray addObjectsFromArray:subarr];
        }
        
        if ([subarr.firstObject isKindOfClass:[NSString class]]) {
            [stringsArray addObjectsFromArray:subarr];
        }
    }
    
    if (stringsArray.count == 0) {
        return [numbersArray sortedArrayUsingSelector:@selector(compare:)];
    }
    
    if (numbersArray.count == 0) {
        return [stringsArray sortedArrayUsingSelector:@selector(compare:)];
    }
    
    NSSortDescriptor* sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO selector:@selector(localizedCompare:)];
    return @[[numbersArray sortedArrayUsingSelector:@selector(compare:)], [stringsArray sortedArrayUsingDescriptors:@[sortDescriptor]]];
}

@end
