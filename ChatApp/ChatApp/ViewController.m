//
//  ViewController.m
//  ChatApp
//
//  Created by Mozzapp on 08/02/13.
//  Copyright (c) 2013 Mozzapp. All rights reserved.
//
#import "ViewController.h"
#import "TableViewController.h"
#import "TViewController.h"
#import "DummyViewController.h"
@interface ViewController ()
{
    int idx,count;
    NSArray* pointStrings;
    NSMutableArray *array;
    int totalCount;
}
@property (nonatomic,retain)TViewController *controller;
-(void)fetchValueFromCsv;
-(void)addValueIntoParse:(NSMutableArray*)paramArray;

@end

@implementation ViewController
@synthesize notification = _notification;
@synthesize jsonTextView = _jsonTextView;
@synthesize firstNameTextField = _firstNameTextField;
@synthesize lastNameTextField = _lastNameTextField;
@synthesize mobileNumberTextField = _mobileNumberTextField;
@synthesize officeNumberTextField = _officeNumberTextField;
@synthesize objectId = _objectId;
@synthesize controller = _controller;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
    
    
    
    //School Insertion
    
//    count = 1;
//    idx = 1;
//    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"schools" ofType:@"csv"];
//    NSError *error;
//    
//    NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
//    pointStrings = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
//    array = [[NSMutableArray alloc]init];
//    totalCount = pointStrings.count;
 //   [self fetchValueFromCsv];
    
    
    
    
    // Vote Question insertion
    
//    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"whistle" ofType:@"csv"];
//    NSError *error;
//    
//    NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
//    NSArray* pointStrings = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
//    NSMutableArray *array = [[NSMutableArray alloc]init];
//
//    for (int id1 =0; id1 <pointStrings.count; id1++ ) {
//        NSString *pointstring =[pointStrings objectAtIndex:id1];
//        NSArray *whistles =[pointstring componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@","]];
//        NSNumber *idval = [[NSNumber alloc] initWithInt:[[whistles objectAtIndex:0]intValue]];
//        NSString*question =[[NSString alloc]initWithFormat:@"%@",[whistles objectAtIndex:1]];
//        NSString *ans1 = [[NSString alloc]initWithFormat:@"%@",[whistles objectAtIndex:2]];
//        NSString *ans2 = [[NSString alloc]initWithFormat:@"%@",[whistles objectAtIndex:3]];
//        NSString *ans3 = [[NSString alloc]initWithFormat:@"%@",[whistles objectAtIndex:4]];
//        NSString *ans4 = [[NSString alloc]initWithFormat:@"%@",[whistles objectAtIndex:5]];
//        NSString*author =[[NSString alloc]initWithFormat:@"%@",[whistles objectAtIndex:6]];
//        //UIImage *quesImg = [UIImage imageNamed:@"quesImg"];
//        
//        //        [array addObject:idval];
//        //        [array addObject:question];
//        //        [array addObject:ans1];
//        //        [array addObject:ans2];
//        //        [array addObject:ans3];
//        //        [array addObject:ans4];
//        //        [array addObject:author];
//        PFObject *object = [PFObject objectWithClassName:@"VoteQues"];
//        [object setObject:idval forKey:@"quesId"];
//        [object setObject:question forKey:@"quesTxt"];
//        if(![ans1 isEqualToString:@""]) {
//            [object setObject:ans1 forKey:@"ansOptTxt1"];
//        }
//        if(![ans2 isEqualToString:@""]) {
//            [object setObject:ans2 forKey:@"ansOptTxt2"];
//        }
//        if(![ans3 isEqualToString:@""]) {
//            [object setObject:ans3 forKey:@"ansOptTxt3"];
//        }
//        if(![ans4 isEqualToString:@""]) {
//            [object setObject:ans4 forKey:@"ansOptTxt4"];
//        }
//        //        [object setObject:quesImg forKey:@"quesImg"];
//        //        NSData *data = UIImageJPEGRepresentation(quesImg, 0.9f);
//        //        PFFile *questionImageFile =[ PFFile fileWithName:@"questionImage.jpeg" data:data];
//        //        [object setObject:questionImageFile forKey:@"quesImg"];
//        if([author isEqualToString:@"Derek"]) {
//            [object setObject:[NSNumber numberWithInt:136] forKey:@"userId"];
//        } else {
//            [object setObject:[NSNumber numberWithInt:106] forKey:@"userId"];
//        }
//        [array addObject:object];
//        
//    }
//    [PFObject saveAllInBackground:array block:^(BOOL succeeded, NSError *error) {
//        if(succeeded)
//        {
//            NSLog(@"successfully added question to VoteQues");
//        }
//        else{
//            NSLog(@"failed %@",error);
//
//        }
//    }];
    
//    PFQuery *query = [PFQuery queryWithClassName:@"Users"];
//    [query getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error) {
//        NSLog(@"%@",object);
//    }];
    
    
    //PFImageView sample
    
//    PFQuery *query = [PFQuery queryWithClassName:@"VoteQues"];
//    [query whereKey:@"userId" equalTo:[NSNumber numberWithInt:138]];
//    [query orderByDescending:@"createdAt"];
//    [query getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error) {
//        NSLog(@"obj %@",object);
//        
////        PFImageView *imageView = [[PFImageView alloc]initWithFrame:CGRectMake(0.f, 0.f, 100.f, 50.f)];
////        imageView.image = [UIImage imageNamed:@"rtft.jpg"];
////        imageView.file = (PFFile*)[object objectForKey:@"quesImg"];
////        [imageView loadInBackground];
////        PFImageView *imageView1 = [[PFImageView alloc]initWithFrame:CGRectMake(0.f, 50.f, 100.f, 100.f)];
////        imageView1.image = [UIImage imageNamed:@"rtft.jpg"];
////        imageView1.file = (PFFile*)[object objectForKey:@"ansOptImg1"];
////        [imageView1 loadInBackground];
////        PFImageView *imageView2 = [[PFImageView alloc]initWithFrame:CGRectMake(0.f, 100.f, 100.f, 100.f)];
////        imageView2.image = [UIImage imageNamed:@"rtft.jpg"];
////        imageView2.file = (PFFile*)[object objectForKey:@"ansOptImg2"];
////        [imageView2 loadInBackground];
////        PFImageView *imageView3 = [[PFImageView alloc]initWithFrame:CGRectMake(0.f, 150.f, 100.f, 100.f)];
////        imageView3.image = [UIImage imageNamed:@"rtft.jpg"];
////        imageView3.file = (PFFile*)[object objectForKey:@"ansOptImg3"];
////        [imageView3 loadInBackground];
////        PFImageView *imageView4 = [[PFImageView alloc]initWithFrame:CGRectMake(0.f, 200.f, 100.f, 100.f)];
////        imageView4.image = [UIImage imageNamed:@"rtft.jpg"];
////        imageView4.file = (PFFile*)[object objectForKey:@"ansOptImg4"];
////        [imageView4 loadInBackground];
//        
//        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0.f, 0.f, 100.f, 50.f)];
//        PFFile *file = [object objectForKey:@"quesImg"];
//        NSData *data = [file getData];
//        imageView.image = [UIImage imageWithData:data];
//        
//        UIImageView *imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(0.f, 50.f, 100.f, 50.f)];
//        PFFile *file1 = [object objectForKey:@"ansOptImg1"];
//        NSData *data1 = [file1 getData];
//        imageView1.image = [UIImage imageWithData:data1];
//
//        UIImageView *imageView2 = [[UIImageView alloc]initWithFrame:CGRectMake(0.f, 100.f, 100.f, 50.f)];
//        PFFile *file2 = [object objectForKey:@"ansOptImg2"];
//        NSData *data2 = [file2 getData];
//        imageView2.image = [UIImage imageWithData:data2];
//
//        UIImageView *imageView3 = [[UIImageView alloc]initWithFrame:CGRectMake(0.f, 150.f, 100.f, 50.f)];
//        PFFile *file3 = [object objectForKey:@"ansOptImg3"];
//        NSData *data3 = [file3 getData];
//        imageView3.image = [UIImage imageWithData:data3];
//
//        UIImageView *imageView4 = [[UIImageView alloc]initWithFrame:CGRectMake(0.f, 200.f, 100.f, 50.f)];
//        PFFile *file4 = [object objectForKey:@"ansOptImg4"];
//        NSData *data4 = [file4 getData];
//        imageView4.image = [UIImage imageWithData:data4];
//
//        [self.view addSubview:imageView];
//        [self.view addSubview:imageView1];
//        [self.view addSubview:imageView2];
//        [self.view addSubview:imageView3];
//        [self.view addSubview:imageView4];
//
//           }];
    
        
//    self.controller = [[TViewController alloc]init];//WithStyle:UITableViewStylePlain];
//    self.controller.view.frame = CGRectMake(0.f, 208.f, 320.f, 208.f);
//    
//    [self addChildViewController:self.controller];
//    [self.view addSubview:self.controller.view];

//    TableViewController *controller = [[TableViewController alloc]init];
//    [self.navigationController pushViewController:controller animated:YES];
//    DummyViewController *dummy = [[DummyViewController alloc]init];
//    [self.view addSubview:dummy.view];
    
	// Do any additional setup after loading the view, typically from a nib.
    //multiple insertion 
//    NSMutableArray *array = [[NSMutableArray alloc]init];
//    for(int i =10; i<15; i++)
//    {
//        PFObject *object = [PFObject objectWithClassName:@"userClass"];
//        [object setObject:[NSNumber numberWithInt:i] forKey:@"count"];
//        [array addObject:object];
//    }
//    [PFObject saveAllInBackground:array block:^(BOOL succeeded, NSError *error) {
//        if(succeeded)
//        {
//            NSLog(@"success");
//        }
//    }];

    
    //increment count
    
//    PFQuery *query = [PFQuery queryWithClassName:@"userClass"];
//    [query whereKey:@"count" equalTo:[NSNumber numberWithInt:1]];
//   // [query orderByDescending:@"updatedAt"];
//    [query getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error) {
//        if(object)
//        {
//            int count = [[object objectForKey:@"count"] intValue];
//            count += 1;
//            NSLog(@"%d",count);
//        }
////        [object incrementKey:@"count" byAmount:[NSNumber numberWithInt:1]];
////        [object saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
////            NSLog(@"succedd");
////        }];
//    }];
    
    
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"firstName = 'Bharathi'"];
//    PFQuery *query = [PFQuery queryWithClassName:@"tChat" predicate:predicate];
//    [query findObjectsInBackgroundWithTarget:self selector:@selector(findCallback:error:)];
    
//    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
//        NSLog(@"array %@",objects);
//        NSLog(@"array %@",[[objects objectAtIndex:0] objectForKey:@"firstName"]);
//        PFObject *update = [objects objectAtIndex:0];
//        [update setObject:@"kandan" forKey:@"lastName"];
//        [update saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//            if(succeeded)
//                NSLog(@"success");
//        }];
////        [[objects objectAtIndex: 0] setObject:@"Kandan" forKey:@"lastName"];
////        [[objects objectAtIndex: 0] saveInBackground];
//        
//      //  NSLog(@"array %@",objects);
//
//    }];
}
// First set up a callback.
- (void)findCallback:(NSArray *)results error:(NSError *)error {
    if (!error) {
        // The find succeeded.
        NSLog(@"Successfully retrieved %d scores.", results.count);
    } else {
        // Log details of the failure
        NSLog(@"Error: %@ %@", error, [error userInfo]);
    }
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [UIApplication sharedApplication].applicationIconBadgeNumber=0;
    
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

}

// Sent to the delegate when the log in screen is dismissed.



- (IBAction)getVoteQues:(id)sender {
//    [self.controller queryForTable];
//    [self.controller getVoteQues:@"57"];
//    [self.controller loadObjects];

    
    
    
    
    //Users
    
//    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"Student Profiles - March 2013 v2" ofType:@"csv"];
//    NSError *error;
//    
//    NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
//    NSArray* pointStrings = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
//    NSMutableArray *array = [[NSMutableArray alloc]init];
//    for(int idx = 0; idx < pointStrings.count; idx++)
//    {
//        NSString* currentPointString = [pointStrings objectAtIndex:idx];
//        NSArray* arr = [currentPointString componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@","]];
//        NSString *colOne = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:0]];
//        NSString *colTwo = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:1]];
//        NSString *colThree = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:2]];
//        NSString *colEight = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:7]];
//        NSString *colNine = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:8]];
//        NSString *colTen = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:9]];
//        NSMutableString *phoneNumber = [[NSMutableString alloc]init];
//        [phoneNumber appendString:@"1"];
//        [phoneNumber appendString:colEight];
//        [phoneNumber appendString:colNine];
//        [phoneNumber appendString:colTen];
//        PFObject *object = [PFObject objectWithClassName:@"Users"];
//        [object setObject:[NSNumber numberWithInt:[colOne intValue]] forKey:@"userId"];
//        [object setObject:colTwo forKey:@"firstName"];
//        [object setObject:colThree forKey:@"lastName"];
//        [object setObject:phoneNumber forKey:@"phoneNumber"];
//        [array addObject:object];
//    }
//    [PFObject saveAllInBackground:array block:^(BOOL succeeded, NSError *error) {
//        if(succeeded)
//        {
//            NSLog(@"success");
//        }else
//        {
//            NSLog(@"failure");
//        }
//    }];
    
    
    //UserGradeNew
    
//    int userGradeNewId = 24;
//    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"Student Profiles - March 2013 v2" ofType:@"csv"];
//    NSError *error;
//    
//    NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
//    NSArray* pointStrings = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
//    NSMutableArray *array = [[NSMutableArray alloc]init];
//    for(int idx = 0; idx < pointStrings.count; idx++)
//    {
//        NSString* currentPointString = [pointStrings objectAtIndex:idx];
//        NSArray* arr = [currentPointString componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@","]];
//        NSString *colOne = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:0]];
//        NSString *colFour = [[NSString alloc] initWithFormat:@"%@", [arr objectAtIndex:3]];
//        NSString *colEleven = [[NSString alloc]initWithFormat:@"%@",[arr objectAtIndex:10]];
//        
//        PFObject *object = [PFObject objectWithClassName:@"UserGradeNew"];
//        [object setObject:[NSNumber numberWithInt:[colOne intValue]] forKey:@"userId"];
//        [object setObject:[NSNumber numberWithInt:[colEleven intValue]] forKey:@"schoolId"];
//        [object setObject:[NSNumber numberWithInt:userGradeNewId] forKey:@"userGradeNewId"];
//        [object setObject:[NSNumber numberWithInt:[colFour intValue]] forKey:@"gradeId"];
//        [array addObject:object];
//        userGradeNewId += 1;
//    }
//    [PFObject saveAllInBackground:array block:^(BOOL succeeded, NSError *error) {
//        if(succeeded)
//        {
//            NSLog(@"success");
//        }else
//        {
//            NSLog(@"failure");
//        }
//    }];
    
    //UserSchool
    
//    int userSchoolId = 335;
//    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"Student Profiles - March 2013 v2" ofType:@"csv"];
//    NSError *error;
//    
//    NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
//    NSArray* pointStrings = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
//    NSMutableArray *array = [[NSMutableArray alloc]init];
//    for(int idx = 0; idx < pointStrings.count; idx++)
//    {
//        NSString* currentPointString = [pointStrings objectAtIndex:idx];
//        NSArray* arr = [currentPointString componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@","]];
//        NSString *colOne = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:0]];
//        NSString *colEleven = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:10]];
//       
//        PFObject *object = [PFObject objectWithClassName:@"UserSchool"];
//        [object setObject:[NSNumber numberWithInt:[colOne intValue]] forKey:@"userId"];
//        [object setObject:[NSNumber numberWithInt:[colEleven intValue]] forKey:@"schoolId"];
//        [object setObject:[NSNumber numberWithInt:userSchoolId] forKey:@"userSchoolId"];
//        [array addObject:object];
//        userSchoolId += 1;
//    }
//    [PFObject saveAllInBackground:array block:^(BOOL succeeded, NSError *error) {
//        if(succeeded)
//        {
//            NSLog(@"success");
//        }else
//        {
//            NSLog(@"failure");
//        }
//    }];

    
}

- (IBAction)uploadVideo:(id)sender {
   // NSMutableDictionary *nameElements = [[NSMutableDictionary alloc]init];
    

    NSArray *phoneNumbers = [[NSArray alloc]initWithObjects:self.mobileNumberTextField.text,self.officeNumberTextField.text, nil];
    
  //  [nameElements setObject:self.firstNameTextField.text forKey:@"firstName"];
  //  [nameElements setObject:self.lastNameTextField.text forKey:@"lastName"];
 //   [nameElements setObject:phoneNumbers forKey:@"phoneNumbers"];

    PFObject *tChat = [PFObject objectWithClassName:@"tChat"];
    [tChat setObject:self.firstNameTextField.text forKey:@"firstName"];
    [tChat setObject:self.lastNameTextField.text forKey:@"lastName"];
    [tChat setObject:phoneNumbers forKey:@"phoneNumbers"];

//    NSError *error;
//    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:nameElements options:NSJSONWritingPrettyPrinted error:&error];
//    NSDictionary *dict =[NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
//    [tChat setObject:dict forKey:@"tList"];
    [tChat saveInBackground];

    self.firstNameTextField.text = @"";
    self.lastNameTextField.text = @"";
    self.mobileNumberTextField.text = @"";
    self.officeNumberTextField.text = @"";

//    NSLog(@"jsondata %@",jsonData);
//    
//    if(!jsonData)
//    {
//        NSLog(@"error %@",error);
//    }
//    else
//    {
//        NSString *jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
//        NSLog(@"jsonString %@",jsonString);
//    }
    
    
    
//    [tChat setObject:self.lastNameTextField.text forKey:@"lastName"];
//    [tChat setObject:phoneNumbers forKey:@"phoneNumbers"];
    
    
////    PFFile *file = [PFFile fileWithName:@"jsonData" data:jsonData];
////    [file saveInBackground];
//    PFObject *userDetails = [PFObject objectWithClassName:@"userClass"];
////    [userDetails setObject:file forKey:@"userDetails"];
//    [userDetails saveInBackground];
    
   }

- (IBAction)getJsonFile:(id)sender {
    
    
    
//    self.jsonTextView.text = @"";
////    PFQuery *query = [PFQuery queryWithClassName:@"userClass"];
////    
////    [query getObjectInBackgroundWithId:self.objectId.text block:^(PFObject *object, NSError *error) {
////        PFFile *file = [object objectForKey:@"userDetails"];
////        NSData *data = [file getData];
////        NSString *jsonString = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
////        
////        NSLog(@"data %@", jsonString);
////        
////        self.jsonTextView.text = jsonString;
////    }];
//    
//    
//    
//    PFQuery *query1 = [PFQuery queryWithClassName:@"tChat"];
//
//    [query1 getObjectInBackgroundWithId:self.objectId.text block:^(PFObject *object, NSError *error) {
////        NSMutableDictionary *teenDetails = [[NSMutableDictionary alloc]init];
////        [teenDetails setObject:[object objectForKey:@"firstName"] forKey:@"firstName"];
////        [teenDetails setObject:[object objectForKey:@"lastName"] forKey:@"lastName"];
////        [teenDetails setObject:[object objectForKey:@"phoneNumbers"] forKey:@"phoneNumbers"];
////        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:teenDetails options:NSJSONWritingPrettyPrinted error:&error];
//        
//
//        
//        self.jsonTextView.text = [NSString stringWithFormat:@"%@",[object objectForKey:@"tList"]];    }];
    
    
    
    PFQuery *query = [PFQuery queryWithClassName:@"tChat"];
    [query whereKey:@"firstName" hasPrefix:self.objectId.text];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %@ ",objects);
            NSLog(@"Object value %@ ",[[[objects objectAtIndex:0] objectForKey:@"phoneNumbers"]objectAtIndex:1]);
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField == self.firstNameTextField)
       [self.lastNameTextField becomeFirstResponder];
    else if(textField == self.lastNameTextField)
        [self.mobileNumberTextField becomeFirstResponder];
    else if(textField == self.mobileNumberTextField)
        [self.officeNumberTextField becomeFirstResponder];
    else
        [textField resignFirstResponder];
    return YES;
}
-(void)fetchValueFromCsv
{
    [array removeAllObjects];
    int i = 0;
    //School Insertion
    for(;idx <= pointStrings.count; idx++)
    {
        i++;
        NSString* currentPointString = [pointStrings objectAtIndex:idx-1];
        NSArray* arr = [currentPointString componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@","]];
        NSString *colOne = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:0]];
        NSString *colTwo = [[NSString alloc] initWithFormat:@"%@", [arr objectAtIndex:1]];
        NSString *colThree = [[NSString alloc]initWithFormat:@"%@",[arr objectAtIndex:2]];
        NSString *colFour = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:3]];
        NSString *colFive = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:4]];
        NSString *colSix = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:5]];
        NSString *colSeven = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:6]];
        NSString *colEight = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:7]];
        NSString *colTen = [[NSString alloc] initWithFormat:@"%@",[arr objectAtIndex:8]];
        BOOL type;
        if([colTen isEqualToString:@"Public"])
        {
            type = TRUE;
        }
        else
        {
            type = FALSE;
        }
        PFGeoPoint *geoPoint = [PFGeoPoint geoPointWithLatitude:[colThree doubleValue] longitude:[colFour doubleValue]];
        PFObject *object = [PFObject objectWithClassName:@"School1"];
        [object setObject:colFive forKey:@"address"];
        [object setObject:colSix forKey:@"city"];
        [object setObject:geoPoint forKey:@"location"];
        [object setObject:colTwo forKey:@"name"];
        [object setObject:[NSNumber numberWithInt:[colOne intValue]] forKey:@"schoolId"];
        [object setObject:colSeven forKey:@"state"];
        [object setObject:[NSNumber numberWithBool:type] forKey:@"type"];
        [object setObject:[NSNumber numberWithInt:[colEight intValue]] forKey:@"zip"];
        
        [array addObject:object];
        if(i % 100 == 0)
        {
            idx++;
            break;
        }
    }
    if(totalCount != idx)
    [self addValueIntoParse:array];
    else
        NSLog(@"Finished");
    
   
}
-(void)addValueIntoParse:(NSMutableArray*)paramArray
{
    [PFObject saveAllInBackground:paramArray block:^(BOOL succeeded, NSError *error) {
        if(succeeded)
        {
            NSLog(@"success %d",count++);
            [self fetchValueFromCsv];
        }else
        {
            NSLog(@"failure %@",error);
            NSLog(@"paramArray %@",paramArray);
        }
    }];

}
@end
