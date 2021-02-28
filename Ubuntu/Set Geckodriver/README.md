# Ubuntu-Configs/Geckodriver

Proxy for using W3C WebDriver compatible clients to interact with Gecko-based browsers.

--------------------------
#### [[source](https://github.com/mozilla/geckodriver)]

## Installation
1. First copy latest Geckodriver ```.tar.gz``` file URL from [here.](https://github.com/mozilla/geckodriver/releases/latest)
2. Then run this to extract it in "/usr/bin" directory ```sudo sh -c 'tar -x geckodriver -zf (Tar File Name with extension & without parenthesis) -O > /usr/bin/geckodriver'```
3. Next run to change access permission of extracted directory to execution mode ```sudo chmod +x /usr/bin/geckodriver```
4. Atlast remove the downloaded tarball. ```rm (Tar File Name with extension & without parenthesis)```

> Here's an example of commands with linux64 compatible geckodriver-v0.26.0 
> ```
> wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz
> sudo sh -c 'tar -x geckodriver -zf ggeckodriver-v0.26.0-linux64.tar.gz -O > /usr/bin/geckodriver'
> sudo chmod +x /usr/bin/geckodriver
> rm geckodriver-v0.26.0-linux64.tar.gz
> ```
