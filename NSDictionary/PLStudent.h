//
//  PLStudent.h
//  NSDictionary
//
//  Created by Павел Лахно on 17.07.17.
//  Copyright © 2017 Павел Лахно. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PLStudent : NSObject 

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *whatYouSay;

- (NSString*) getFraze;

@end
