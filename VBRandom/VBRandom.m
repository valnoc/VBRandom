//
//    The MIT License (MIT)
//
//    Copyright (c) 2015 Valeriy Bezuglyy
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

#import "VBRandomInvalidBoundsException.h"

@implementation VBRandom

+ (NSUInteger) uinteger {
    return arc4random();
}

+ (NSInteger) integerFromIncluding:(NSInteger)lowerBound
                       toExcluding:(NSInteger)upperBound {
    if (upperBound <= lowerBound) {
        @throw [VBRandomInvalidBoundsException exception];
    }
    return [self uinteger] % (upperBound - lowerBound) + lowerBound;
}

+ (double) doubleFromIncluding:(double)lowerBound
                   toExcluding:(double)upperBound {
    if (upperBound <= lowerBound) {
        @throw [VBRandomInvalidBoundsException exception];
    }
    double max = RAND_MAX;
    double percentage = (double)[self integerFromIncluding:0
                                               toExcluding:max] / max;
    return percentage * (upperBound - lowerBound) + lowerBound;
}

+ (BOOL) randomBOOL {
    return [self integerFromIncluding:0
                          toExcluding:2] == 1 ? YES : NO;
}

@end
