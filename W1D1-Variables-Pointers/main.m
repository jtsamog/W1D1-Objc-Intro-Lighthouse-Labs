//
//  main.m
//  W1D1-Variables-Pointers
//
//  Created by steve on 2017-06-26.
//  Copyright © 2017 steve. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
  /*
   NSDate *d1 = [NSDate date];
   NSDate *d2 = d1;
   
   NSLog(@"line %d: point d1: %p, point d2: %p", __LINE__, &d1, &d2);
   NSLog(@"line %d: value d1: %p, value d2: %p", __LINE__, *&d1, *&d2);
   
   d2 = nil;
   
   //  NSLog(@"line %d: point d1: %p, point d2: %p", __LINE__, &d1, &d2);
   NSLog(@"line %d: value d1: %p, value d2: %p", __LINE__, *&d1, *&d2);
   */
  
  /*
   *create string
   *create with format specifier
   *concat strings
   *string equality
   *comparing strings
   *converting to integers
   *splitting string componentsSeparatedByString:
   *create substring from range
   *append string to mutablestring
   *C strings
   const char * myS = [someString cStringUsingEncoding: NSUTF8StringEncoding];
   NSString *result12 = [NSString stringWithCString: myS encoding: NSUTF8StringEncoding];
   */
  
  
  NSString *s1 = @"this is my first string";
  
  NSString *s2 = [NSString stringWithFormat:@"%@ %@", s1, @"on w1 d1"];
  
//  NSString *s3 = [s1 stringByAppendingString:s2];

  if ([s1 isEqualToString:s2]) {
    // do stuff
  }
  
  NSString *s3 = @"John";
  NSString *s4 = @"James";
  
  NSComparisonResult result = [s3 caseInsensitiveCompare:s4];
  
  if (result == NSOrderedDescending) {
    
  }


  NSString *s5 = @"l12l";
  
  int n1 = s5.intValue;
  
  NSLog(@"line %d: %d", __LINE__, n1);
  
  NSArray *myArray = [s1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
  
  NSArray <NSString *>*myArray2 = [s1 componentsSeparatedByString:@" "];
  
  NSLog(@"%@", myArray2);
  
  
  NSString *s6 = @"this is my first string";
  
  NSRange range = NSMakeRange(5, 5);
  
  NSString *s7 = [s6 substringWithRange:range];
  NSLog(@"line %d: %@", __LINE__, s7);
  
  NSMutableString *m1 = [s7 mutableCopy];
  
  [m1 appendString:@" cat"];
  NSLog(@"line %d: %@", __LINE__, m1);
  
  NSString *s8 = [m1 copy];
  
  
  NSLog(@"line %d: %@", __LINE__, s8);
  
  const char * myS = [s8 cStringUsingEncoding: NSUTF8StringEncoding];
  
  NSString *result12 = [NSString stringWithCString: myS encoding: NSUTF8StringEncoding];

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  return 0;
}
