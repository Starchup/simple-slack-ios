# Starchup's Simple iOS Logging Framework

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.
`#import <SimpleSlack.h>`
SimpleSlack *ss = [[SimpleSlack alloc] initWithWebHook:@"_slack_webhook_"];
[ss post:@"My fancy message"];

Also available: [[SimpleSlack alloc] initWithWebHook:@"_slack_webhook_" andContext:@"I am in this_file.m"];

## Author

Geoffroy Lesage, geoffroy@starchup.com

## License

SimpleSlack is available under the MIT license. See the LICENSE file for more info.
