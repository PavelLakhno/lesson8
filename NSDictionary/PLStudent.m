//
//  PLStudent.m
//  NSDictionary
//
//  Created by Павел Лахно on 17.07.17.
//  Copyright © 2017 Павел Лахно. All rights reserved.
//

#import "PLStudent.h"

@implementation PLStudent

- (NSString*) getFraze {
    
    return [NSString stringWithFormat:@"firstName = %@ lastName = %@. Student greeting: %@", self.firstName, self.lastName, self.whatYouSay];
    
}

@end
