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

@implementation VBRandom

#pragma mark - unsigned integer
+ (NSUInteger) uinteger {
    return arc4random();
}

#pragma mark - random integer
+ (NSInteger) integerFromIncluding:(NSInteger)lowerBound
                       toExcluding:(NSInteger)upperBound {
    if (upperBound <= lowerBound) {

    }
    return [self uinteger] % (upperBound - lowerBound) + lowerBound;
}

+ (NSInteger) randomIntegerNegativeIncludingLowerBound:(NSInteger)lowerBound {
    return [self randomIntegerIncludingLowerBound:lowerBound
                              excludingUpperBound:0];
}

+ (NSInteger) randomIntegerPositiveExcludingUpperBound:(NSInteger)upperBound {
    return [self randomIntegerIncludingLowerBound:0
                              excludingUpperBound:upperBound];
}

#pragma mark - random double
+ (double) randomDoubleIncludingLowerBound:(double)lowerBound
                       excludingUpperBound:(double)upperBound {
    if (upperBound > lowerBound) {
        double max = RAND_MAX;
        double percentage = (double)[self randomIntegerIncludingLowerBound:0
                                                       excludingUpperBound:max] / max;
        return percentage * (upperBound - lowerBound) + lowerBound;
    }else{
        return 0;
    }
}

+ (double) randomDoubleNegativeIncludingLowerBound:(double)lowerBound {
    return [self randomDoubleIncludingLowerBound:lowerBound
                             excludingUpperBound:0];
}

+ (double) randomDoublePositiveExcludingUpperBound:(double)upperBound {
    return [self randomDoubleIncludingLowerBound:0
                             excludingUpperBound:upperBound];
}

#pragma mark - random BOOL
+ (BOOL) randomBOOL {
    return [self randomIntegerIncludingLowerBound:0
                              excludingUpperBound:2] == 1 ? YES : NO;
}

@end
