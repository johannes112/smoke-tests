# smoke-tests for shopware shops
smoke-testing like browser-testing related to the appearance of a website
## browser-tests for webshops of emmos
test the appearance of webshops of vega, jobeline, hotelwaesche, pulsiva in different environments via saucelabs

### which pages will be tested:
each webshop have different types of pages and our webshops using two different techniques to show content:
- php
- react
therefore different pages will be tested
- homepage

> extended tests:
>- categorypage
>- subcategorypage

- productdetailpage

### how will it be tested:
* homepage:
   - visit homepage
     go to 'url'
   - look for existing elements of several parts of the page
     - header
     - searchfield
     - navi
     - body
     - footer

>extended: not implemented
>* categorypage:
>   - visit categorypage
>     go to 'url'
>   - look for existing elements of several parts of the >page
>     - header
>     - searchfield
>     - navi
>     - body
>     - footer

>* subcategorypage:
>   - visit subcategorypage
>     go to 'url'
>   - look for existing elements of several parts of the >page
>     - header
>     - searchfield
>     - navi
>     - body
>     - footer

* productdetailpage:
   - visit productdetailpage
     go to 'url'
   - look for existing elements of several parts of the page
     -   productbox
     -   productname (not empty)
     -   dropdown_filter

##### Following tags exist:
To start different tests on each mandant navigate via tags:
- @visibility
- @homepage
- @productdetailpage
- @website_css
- @pulsiva
- @vega
- @v_jobeline
- @hotelwaesche
- @hw_jobeline

##### Following options for browsers exist:
- firefox
- ie
- chrome
- safari
- MicrosoftEdge
- headless

###### to start tests:
Syntax (bash-shellaufruf):
       bash run_cucumber.sh <driver> <browser> <shop_user> <shop_api_key> <saucelabs_user> <saucelabs_api_key> <system> <brand> <country> @<tag>

Sample:
       bash run_cucumber.sh saucelabs firefox <shop_user> <shop_api_key> <saucelabs_user> <saucelabs_api_key> live vega de @homepage
