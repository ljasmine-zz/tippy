# Pre-work - *Tippy*

**Tippy** is a tip calculator application for iOS.

Submitted by: **Chia-Hsuan (Jasmine) Lee**

Time spent: **10** hours spent in total

## Table of Contents

1. [User Stories](#user-stories)
1. [Video Walkthrough](#video-walkthrough)
1. [Notes](#notes)
1. [License](#license)

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

* [x] The look of the app was improved by changing font/layout and adding sliders which allow the user to have more flexibility in setting the tip percentages  
* [x] App will suggest a lunch and dinner tip percentage for those users that need more guidance
* [x] App allows users to reset the tip percentages to predefined values by clicking on the "reset" buttons in settings
* [x] Added App Icon - made by Roundicons in technology from www.flaticon.com 

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

Basic Functionality: User should be able to enter bill amount. App will calculate the tip and total and display them in a short fade in animation. Notice that the user can slide left and right to adjust the desired tip.

<img src= 'https://github.com/ljasmine/tippy/blob/master/basicFunction.gif' />

**[Back to top](#table-of-contents)**

Settings Page: User can change their tip preferences from the settings page as well as pick a preferred theme.

<img src= 'https://github.com/ljasmine/tippy/blob/master/settings.gif' />

**[Back to top](#table-of-contents)**

When the user switches his/her region, the app will display the tip and total in the standard currency format of the locale.

<img src= 'https://github.com/ljasmine/tippy/blob/master/localeSpecific.gif' />

**[Back to top](#table-of-contents)**

The app saves the bill amount so that if the user restarts the app within 10 min, the same bill amount is displayed.

<img src= 'https://github.com/ljasmine/tippy/blob/master/savingBillAmount.gif' />

**[Back to top](#table-of-contents)**

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Some of the challenges included getting the app to initiate with default values for the preferences, getting the app to display the tip and total in locale-specific format, getting the sliders to round up to a precision of 0.01, implementing a theme for the app, and saving the bill amount across app sessions.

## License

    Copyright [2016] [Chia-Hsuan Lee]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


**[Back to top](#table-of-contents)**
