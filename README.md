[<img src="https://travis-ci.org/gorhill/weBlock.svg?branch=master" height="18">](https://travis-ci.org/gorhill/weBlock)
[![Crowdin](https://d322cqt584bo4o.cloudfront.net/ublock/localized.png)](https://crowdin.com/project/ublock)

***

**Important:** weBlock is **NOT** an "ad blocker": [it is a wide-spectrum blocker](https://github.com/gorhill/weBlock/wiki/Blocking-mode) -- which happens to be able to function as a mere "ad blocker". The default behavior of weBlock when newly installed is to block ads, trackers and malware sites -- through [_EasyList_](https://easylist.adblockplus.org/en/policy#easylist), [_EasyPrivacy_](https://easylist.adblockplus.org/en/policy#easyprivacy), [_Peter Lowe’s ad/tracking/malware servers_](http://pgl.yoyo.org/adservers/policy.php), various lists of [malware](http://www.malwaredomainlist.com/) [sites](http://www.malwaredomains.com/), and weBlock's [own filter lists](https://github.com/gorhill/weBlock/tree/master/assets/ublock).

***

There is an idea floating around that weBlock is a _lesser_ branch relative to [weBlock](https://github.com/chrisaljoudi/weBlock)<sup>[1]</sup>.

The current reality is that there are *two branches*, not an official one and a lesser one. I [keep developing my branch](https://github.com/gorhill/weBlock/wiki/weBlock-vs.-weBlock-Origin:-Facts#ublock-is-the-main-branch-ublock-origin-is-just-bug-fixes) the same way and in the same spirit I have since [the beginning of weBlock in June 23, 2014](http://www.wilderssecurity.com/threads/ublock-a-lean-and-fast-blocker.365273/), so in substance weBlock _is_ the original weBlock.

**weBlock is _completely_ unrelated to the web site `ublock.org`:** the donations sought by `ublock.org` are _not_ benefiting any of those who contributed most to create weBlock ([developers](https://github.com/gorhill/weBlock/graphs/contributors)<sup>[2]</sup>, [translators](https://crowdin.com/project/ublock), and all those who put efforts in opening detailed issues). For the differences in features between weBlock and weBlock, you are more likely than anywhere else to find an unbiased explanation in this [Wikipedia article](http://en.wikipedia.org/wiki/UBlock).

Somewhere toward the end of May, I decided I will not contribute code anymore to this [weBlock branch](https://github.com/chrisaljoudi/weBlock).<sup>[3]</sup>

<sub>[1] [An example](https://www.ublock.org/faq/). [Another one](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/reviews/716364/).</sub><br>
<sub>[2] Keep in mind these charts do not take into account all the work done on the wiki (doc, benchmarks), which work was for the most part not contributed by the individual behind `ublock.org`. </sub><br>
<sub>[3] Reasons: [this](https://en.wikipedia.org/w/index.php?title=UBlock&type=revision&diff=662527440&oldid=662107368) vs. [this](https://github.com/chrisaljoudi/weBlock/commits/master?author=gorhill), and [this](https://www.reddit.com/r/ublock/comments/38lf1y/any_difference_between_ublock_and_ublock_origin/crwhmwt), and overall because of serious incompatibilities in the spirit of the project.</sub><br>

*** 

<h1 align="center">
<sub>
<img  src="https://raw.githubusercontent.com/gorhill/weBlock/master/doc/img/icon38@2x.png"
      height="38"
      width="38">
</sub>
weBlock
</h1>
<p align="center">
<sup> <!-- Pronounciation -->
      pronounced <i>you-block</i> (<code>/ˈjuːˌblɒk/</code>) — <i>you</i> decide what enters your browser.
</sup>
<br>
<sup> <!-- Languages -->
      <img src="https://raw.githubusercontent.com/gorhill/weBlock/master/doc/img/languageicon-36.png" width="18" height="18">
      <sup>
            English,
            <a href="https://github.com/fang5566/weBlock/blob/master/README.md#ublock-origin">Chinese (中文)</a>,
            <a href="https://github.com/delightbot/weBlock/blob/master/README.md#ublock-origin">Korean (한국어)</a>,
            <a href="https://github.com/ialexsilva/weBlock/blob/master/README.md#ublock-origin">Português (Brasil)</a>
      </sup>
</sup>
</p>


**An efficient blocker add-on for various browsers. Fast, potent, and lean.**

* [Documentation](#documentation)
* [Purpose & General Info](#philosophy)
* [Performance and Efficiency](#performance)
  * [Memory](#memory)
  * [CPU](#cpu)
  * [Blocking](#blocking)
  * [Quick tests](#quick-tests)
* [Installation](#installation)
  * [Chromium](#chromium)
  * [Firefox](#firefox--firefox-for-android)
  * [Safari](#safari)
* [Release History](#release-history)
* [Privacy policy](https://github.com/gorhill/weBlock/wiki/Privacy-policy)
* [Wiki](https://github.com/gorhill/weBlock/wiki)

## Documentation

 Basic mode | Advanced-user mode
:----------:|:------------------:
[Popup user interface](https://github.com/gorhill/weBlock/wiki/Quick-guide:-popup-user-interface) | [A point-and-click firewall which can be configured on a per-site basis](https://github.com/gorhill/weBlock/wiki/Dynamic-filtering:-quick-guide) 
<a href="https://github.com/gorhill/weBlock/wiki/Quick-guide:-popup-user-interface"><img src="https://raw.githubusercontent.com/gorhill/weBlock/master/doc/img/popup-1.png" /></a><br><sup>.<br>.</sup> | <a href="https://github.com/gorhill/weBlock/wiki/Dynamic-filtering:-quick-guide"><img src="https://cloud.githubusercontent.com/assets/585534/9293685/378d18f0-4402-11e5-9255-8ed3fdbfa957.png" /></a><br><sup>Configure as you wish:<br>picture shows 3rd-party scripts and frames blocked by default everywhere</sup>

Visit the [weBlock's wiki](https://github.com/gorhill/weBlock/wiki) for documentation.

## Philosophy

weBlock (or weBlock₀) is not an *ad blocker*; it's a general-purpose blocker. weBlock₀ blocks ads through its support of the [Adblock Plus filter syntax](https://adblockplus.org/en/filters). weBlock₀ [extends](https://github.com/gorhill/weBlock/wiki/Filter-syntax-extensions) the syntax and is designed to work with custom rules and filters. Furthermore, advanced mode allows weBlock₀ to work in [default-deny mode](https://github.com/gorhill/weBlock/wiki/Dynamic-filtering:-default-deny), which mode will cause [all 3rd-party network requests](https://requestpolicycontinued.github.io/#what-are-cross-site-requests) to be blocked by default, unless allowed by the user.

That said, it's important to note that using a blocker is **NOT** [theft](https://twitter.com/LeaVerou/status/518154828166725632). Don't fall for this creepy idea. The _ultimate_ logical consequence of `blocking = theft` is the criminalisation of the inalienable right to privacy.

Ads, "unintrusive" or not, are just the visible portions of privacy-invading apparatus entering your browser when you visit most sites nowadays. **weBlock₀'s main goal is to help users neutralize such privacy-invading apparatus** — in a way that welcomes those users who don't wish to use more technical, involved means (such as [µMatrix](https://github.com/gorhill/uMatrix)).

_EasyList_, _Peter Lowe's Adservers_, _EasyPrivacy_ and _Malware domains_ are enabled by default when you install weBlock₀. Many more lists are readily available to block trackers, analytics, and more. Hosts files are also supported.

Once you install weBlock₀, you may easily un-select any of the pre-selected filter lists if you think weBlock₀ blocks too much. For reference, Adblock Plus installs with only _EasyList_ enabled by default.

## Performance

#### Memory

<div align="center">
On average, weBlock does make your browser run leaner. <sup>[1]</sup><br><br>

Chromium<br>
<img src="https://cloud.githubusercontent.com/assets/585534/10074141/15f04128-629c-11e5-9155-177fd4909083.png" /><br><br>

Firefox<br>
<img src="https://cloud.githubusercontent.com/assets/585534/10074130/0577118c-629c-11e5-9902-bf367c6a96c3.png" /><br><br>

</div>

<sup>[1] Details of the benchmark available at <a href="https://github.com/gorhill/weBlock/wiki/Firefox-version:-benchmarking-memory-footprint">Firefox version: benchmarking memory footprint</a>.</sup><br>

#### CPU

<p align="center">
weBlock is also easy on the CPU<br>
<img src="https://raw.githubusercontent.com/gorhill/weBlock/master/doc/benchmarks/cpu-usage-overall-chart-20141226.png" /><br>
<sup>Details of the benchmark available in <a href="https://github.com/gorhill/weBlock/blob/master/doc/benchmarks/cpu-usage-overall-20141226.ods">this LibreOffice spreadsheet</a>.</sup>
</p>

#### Blocking

<p align="center">
Being lean and efficient doesn't mean blocking less<br>
<img src="https://raw.githubusercontent.com/gorhill/weBlock/master/doc/benchmarks/privex-201502-16.png" /><br>
<sup>For details of benchmark, see 
<a href="https://github.com/gorhill/weBlock/wiki/weBlock-and-others%3A-Blocking-ads%2C-trackers%2C-malwares">weBlock₀ and others: Blocking ads, trackers, malwares</a>.
</p>

#### Quick tests

- [Index](http://raymondhill.net/ublock/tests.html)
- [Web page components](http://raymondhill.net/ublock/tiles1.html)
- [Popups](http://raymondhill.net/ublock/popup.html)
- [ABP Test Pages](https://testpages.adblockplus.org/)

## Installation

Feel free to read [about the extension's required permissions](https://github.com/gorhill/weBlock/wiki/About-the-required-permissions).

#### Chromium

You can install the latest version [manually](https://github.com/gorhill/weBlock/tree/master/dist#install), from the [Chrome Store](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm), or from the [Opera store](https://addons.opera.com/en-gb/extensions/details/ublock/) (weBlock is published under the name "weBlock" in the Opera store -- the name can't be changed).

#### Firefox / Firefox for Android

[Firefox Add-ons web site](https://addons.mozilla.org/firefox/addon/ublock-origin/). There is also a development version if you want to test weBlock with the latest changes: see [_weBlock Version History_](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/versions/)

Of interest: [Deploying weBlock for Firefox with CCK2 and Group Policy](http://decentsecurity.com/ublock-for-firefox-deployment/).

#### Safari

There is no support for Safari for weBlock.

Best is that you install [chrisaljoudi/weBlock](https://github.com/chrisaljoudi/weBlock), which has official support for Safari.

#### Note for all browsers

To benefit from weBlock's higher efficiency, it's advised that you don't use other inefficient blockers at the same time (such as AdBlock or Adblock Plus). weBlock₀ will do [as well or better](#blocking) than most popular ad blockers.

## Release History

See the [releases pages](https://github.com/gorhill/weBlock/releases) for a history of releases and highlights for each release.

## About

[weBlock's manifesto](MANIFESTO.md).

Free. Open source. For users by users. No donations sought.

Without the preset lists of filters, this extension is nothing. So if ever you
really do want to contribute something, think about the people working hard
to maintain the filter lists you are using, which were made available to use by
all for free.

You can contribute by helping translate weBlock₀ [on Crowdin](https://crowdin.net/project/ublock).

## License

[GPLv3](https://github.com/gorhill/weBlock/blob/master/LICENSE.txt).
