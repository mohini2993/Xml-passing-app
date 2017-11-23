//
//  ViewController.m
//  day21_ios_xmlparsingAssignment
//
//  Created by Student 01 on 08/11/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str=@"https://www.w3schools.com/xml/simple.xml";
    self.foodArray=[[NSMutableArray alloc]init];
    NSURL *url=[NSURL URLWithString:str];
    self.saxparser=[[NSXMLParser alloc]initWithContentsOfURL:url];
    self.charString=[[NSMutableString alloc]init];
    self.saxparser.delegate=self;
    [self.saxparser parse];

    // Do any additional setup after loading the view, typically from a nib.
}
-(void)parser:(NSXMLParser *)parser didiStartElement:(NSString *)elementName nameSpaceURI:(NSString *)nameSpaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict
{
    self.charString=[[NSMutableString alloc]init];
    NSLog(@"%@",elementName);
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    [self.charString appendString:string];
    NSLog(@"%@",self.charString);
}
-(void)parser:(NSXMLParser *)parser didEndElement:(nonnull NSString *)elementName namespaceURI:(nullable NSString *)namespaceURI qualifiedName:(nullable NSString *)qName
{
    NSLog(@"charString=%@",self.charString);
    [self.foodArray addObject:self.charString];
    NSLog(@"%@",self.foodArray);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
