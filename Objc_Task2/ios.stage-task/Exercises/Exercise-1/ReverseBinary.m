#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 h = 0;

    for (int i = 0; i < 8; ++i) {
        
        h |= (n & 1) << (7 - i);
        n >>= 1;
    }
    
    return h;
}
