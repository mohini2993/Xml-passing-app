//
//  ViewController.h
//  day21_ios_xmlparsingAssignment
//
//  Created by Student 01 on 08/11/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import <UIKit/UIKit.h>
//define @"https://www.w3schools.com/xml/simple.xml"
@interface ViewController : UIViewController<NSXMLParserDelegate>

@property NSMutableString *charString;
@property NSMutableArray  *foodArray;
@property NSXMLParser *saxparser;
@end

