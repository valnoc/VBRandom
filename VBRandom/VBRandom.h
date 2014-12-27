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

#import <Foundation/Foundation.h>

@interface VBRandom : NSObject

#pragma mark - random unsigned integer
+ (NSUInteger) randomUInteger;

#pragma mark - random integer
//  [%d; %d)
+ (NSInteger) randomIntegerWithLowerBound:(NSInteger)lowerBound
                               upperBound:(NSInteger)upperBound;
//  [1, max)
+ (NSInteger) randomIntegerPositive;
//  [0, max)
+ (NSInteger) randomIntegerNonNegative;
//  [min, 0)
+ (NSInteger) randomIntegerNegative;
//  [min, 1)
+ (NSInteger) randomIntegerNonPositive;

#pragma mark - random double
+ (double) randomDoubleWithLowerBound:(double)lowerBound
                           upperBound:(double)upperBound;
+ (double) randomDoublePositive;
+ (double) randomDoubleNonNegative;
+ (double) randomDoubleNegative;
+ (double) randomDoubleNonPositive;

#pragma mark - random BOOL
+ (BOOL) randomBOOL;

@end
