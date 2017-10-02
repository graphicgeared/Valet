//
//  ValetTests.m
//  Valet
//
//  Created by Dan Federman on 2/11/15.
//  Copyright 2015 Square, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

@import Valet;

#import <XCTest/XCTest.h>


// FIXME: emuller - coming soon
@interface SwiftInteropTests : XCTestCase

@property (nonatomic, readwrite) VALValet *valet;
@property (nonatomic, copy, readwrite) NSString *key;
@property (nonatomic, copy, readwrite) NSString *string;

@end

@implementation SwiftInteropTests

- (void)setUp;
{
    [super setUp];

    self.valet = [VALValet vanillaValetWithIdentifier:@"valet_testing" accessibility:VALAccessibilityWhenUnlocked];
    
    // In case testing quit unexpectedly, clean up the keychain from last time.
    [self.valet removeAllObjects];
    
    self.key = @"foo";
    self.string = @"bar";
}

@end
