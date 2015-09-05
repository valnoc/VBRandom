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

#import <Foundation/Foundation.h>

/**
 *  VBRandom is a pseudo-random numbers generator. Using of VBRandom simplifies random numbers creation code.
 *
 *  It uses arc4random() function.
 *
 */
@interface VBRandom : NSObject

/**
 *  Generate pseudo-random uinteger.
 *
 *  @return Random NSUInteger
 */
+ (NSUInteger) uinteger;

/**
 *  Generate pseudo-random integer in range [lowerBound; upperBound).
 *
 *  @param lowerBound Include lower bound
 *  @param upperBound Exlude upper bound
 *
 *  @return Random NSInteger
 */
+ (NSInteger) integerWithLowerBound:(NSInteger)lowerBound
                         upperBound:(NSInteger)upperBound;

/**
 *  Generate pseudo-random double in range [lowerBound; upperBound).
 *
 *  @param lowerBound Include lower bound
 *  @param upperBound Exlude upper bound
 *
 *  @return Random double
 */
+ (double) doubleWithLowerBound:(double)lowerBound
                     upperBound:(double)upperBound;

/**
 *  Generate pseudo-random BOOL.
 *
 *  @param lowerBound Include lower bound
 *  @param upperBound Exlude upper bound
 *
 *  @return Random BOOL
 */
+ (BOOL) boolYesNo;

@end
