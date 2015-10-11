## Inspiration
There are many ad-blocking software that provides similar features and that are characterized by its performance and memory usage. weBlock is a extension for Chromium-based browsers forked from uBlock Origin, which delivers not only the performance and efficient memory usage, weBlock emphasizes on generating the filter lists driven by user input

## What it does
weBlock is a community-rating based ad blocker. Users up-vote or down-vote sites that they think should or should not be blocked. Other users can set their preferences to allow any threshold of community approval. This allows users to set their own balance between ads they deem allowable, and those they never wish to see. When a user sees an ad and blocks it, not only does it improve their browsing experience, it improves the browsing experience of all users of weBlock

## How I built it
weBlock was built in 36 hours during 2015's Calhacks 2.0. We used MySQL on an Ubuntu backend with API calls being handled by Flask, Python, and SQLAlchemy, using the Microsoft Blob Storage for files, all hosted from Azure. To create the Chrome extension front end, we forked the GPL licensed uBlock and made the necessary Javascript, HTML, and CSS modifications to allow it have an easy to use interface and to interact with our backend service.

## Challenges I ran into
Building on top of an open-source software gave us more flexibility to think about and design the unique feature of the ad-blocker rather than worrying about the performance and memory usage. The most challenging part was where we had to familiarize ourself with a fairly complex codebase, which is not heavily documented, and also the chrome extension development ecosystem

## Accomplishments that I'm proud of
* Jason is happy that he completed his first hackathon :)
* Salar is proud of his efficiency during hackathon
* I am proud of managing to understand uBlock Origin's codebase

## What I learned
Building on top of an open-sourced project was more challenging than we've anticipated as there were high volume of code that we had to understand within short period of time

## What's next for weBlock
Now that we've shown the direction we are taking with weBlock in the period of 36 hours, we will take weBlock to the next level by optimizing the algorithm behind generating the filter lists as well as revamping the user interface

## Installation
1. Clone this repository:
```bash
git clone git@github.com:sangyounkim/weBlock.git
```
2. Change into the cloned directory & run install script:
```bash
cd weBlock && tools/make-chromium.sh
```
3. Open Google Chrome > `Go to Extensions` > Enable Developer mode
4. Select `Load unpacked extension...`
5. Select the `dist/build/weBlock0.chromium/` directory under the your cloned directory
6. Browse to any web page and you are ready to go! :happy

## License

[GPLv3](https://github.com/sangyounkim/weBlock/blob/master/LICENSE.txt).
