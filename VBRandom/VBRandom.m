//
//    The MIT License (MIT)
//
//    Copyright (c) 2014 Valeriy Bezuglyy
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.
//

#import "VBRandom.h"

#define RANDOM_MAX  NSUIntegerMax
#define RANDOM_MIN  -NSUIntegerMax

#define RANDOM_INT_MAX  NSIntegerMax
#define RANDOM_INT_MIN  NSIntegerMin

#define RANDOM_DOUBLE_MAX   DBL_MAX
#define RANDOM_DOUBLE_MIN   -DBL_MAX

@implementation VBRandom

#pragma mark - random integer
+ (NSInteger) randomIntegerWithLowerBound:(NSInteger)lowerBound
                               upperBound:(NSInteger)upperBound {
    if (upperBound > lowerBound) {
        return arc4random() % (upperBound - lowerBound) + lowerBound;
    }else{
        return 0;
    }
}

+ (NSInteger) randomIntegerPositive {
    return [self randomIntegerWithLowerBound:1
                                  upperBound:RANDOM_INT_MAX];
}

+ (NSInteger) randomIntegerNonNegative {
    return [self randomIntegerWithLowerBound:0
                                  upperBound:RANDOM_INT_MAX];
}

+ (NSInteger) randomIntegerNegative {
    return [self randomIntegerWithLowerBound:RANDOM_INT_MIN
                                  upperBound:0];
}

+ (NSInteger) randomIntegerNonPositive {
    return [self randomIntegerWithLowerBound:RANDOM_INT_MIN
                                  upperBound:1];
}

#pragma mark - random double
+ (double) randomDoubleWithLowerBound:(double)lowerBound
                           upperBound:(double)upperBound {
    if (upperBound > lowerBound) {
        return ((double)arc4random() / RANDOM_MAX) * (upperBound - lowerBound) + lowerBound;
    }else{
        return 0;
    }
}

+ (double) randomDoublePositive {
    return [self randomDoubleWithLowerBound:1
                                 upperBound:RANDOM_DOUBLE_MAX];
}

+ (double) randomDoubleNonNegative {
    return [self randomDoubleWithLowerBound:0
                                 upperBound:RANDOM_DOUBLE_MAX];
}

+ (double) randomDoubleNegative {
    return [self randomDoubleWithLowerBound:RANDOM_DOUBLE_MIN
                                 upperBound:0];
}

+ (double) randomDoubleNonPositive {
    return [self randomDoubleWithLowerBound:RANDOM_DOUBLE_MIN
                                 upperBound:1];
}

#pragma mark - random BOOL
+ (BOOL) randomBOOL {
    return [self randomIntegerWithLowerBound:0 upperBound:2] == 1 ? YES : NO;
}

@end
