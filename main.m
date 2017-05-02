//
//  main.m
//  Word Effects
//
//  Created by swcl on 2017-05-01.
//  Copyright © 2017 Shreve LaFramenta. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        char inputChars[255];
        printf("input a string: ");
        fgets(inputChars, 255, stdin);
        strtok(inputChars, "\n");
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        int value = 0;
       
        
        BOOL keepPlaying = YES;
        while(keepPlaying){
        printf ("Lets add some word effects!\n Enter 1 to make it uppercase.\n Enter 2 to make it lowercase. \n Enter 3 to convert to a number.\n Enter 4 to make it Canadian.\n Enter 5 to get an answer.\n Enter 6 to remove spaces.\nEnter 7 to end.\n");
       
        printf ("Enter a number between 1 and 6: ");
        scanf ("%i", &value);
            
        NSString *uppercase = [inputString uppercaseString];
        NSString *lowercase = [inputString lowercaseString];
        
        NSInteger intValue = [inputString integerValue];

        NSString *eh = @"eh?";
        NSString *canadianize = [inputString stringByAppendingString:eh];
        NSString *strip = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];

        
        
        
        switch (value){
    
            case 1:
                NSLog(@"Your string is now uppercase: %@", uppercase);
                break;
                
            case 2:
                NSLog(@"Your string is now lowercase: %@", lowercase);
                break;
                
            case 3:
                NSLog(@"Your string is now a number: %li", intValue);
                break;

            case 4:
 
                NSLog(@"Your string is now Canadian: %@", canadianize);
                break;
                
            case 5:
                if ([inputString hasSuffix:@"?"])
                {
                    NSLog(@"I don't know");
                }
                else if ([inputString hasSuffix:@"!"])
                    NSLog(@"Whoa, calm down!");
                break;
        
        
            case 6:
                NSLog(@"Your string is now free of spaces: %@", strip);

                break;
                
            case 7:
                keepPlaying = NO;
                NSLog(@"Thanks for playing. Goodbye");

                break;
                
    }
            
    /*/     printf("Would you like to try another word effect? (y/n)");
            char inputChars2[255];
            fgets(inputChars2, 255, stdin);
            NSString *playAgain = [NSString stringWithUTF8String:inputChars2];
            if ([playAgain isEqualToString:@"y"]){}else{keepPlaying = NO;}
*/

        
        
    }
    }
    return 0;
}
