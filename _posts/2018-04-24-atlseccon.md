---
layout: default
title: Before the AtlSecCon Conference 2018
---

<pre style="text-align:center;color:#7FFF00;">
 ▄▄▄     ▄▄▄█████▓ ██▓      ██████ ▓█████  ▄████▄   ▄████▄   ▒█████   ███▄    █ 
▒████▄   ▓  ██▒ ▓▒▓██▒    ▒██    ▒ ▓█   ▀ ▒██▀ ▀█  ▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ 
▒██  ▀█▄ ▒ ▓██░ ▒░▒██░    ░ ▓██▄   ▒███   ▒▓█    ▄ ▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒
░██▄▄▄▄██░ ▓██▓ ░ ▒██░      ▒   ██▒▒▓█  ▄ ▒▓▓▄ ▄██▒▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒
 ▓█   ▓██▒ ▒██▒ ░ ░██████▒▒██████▒▒░▒████▒▒ ▓███▀ ░▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░
 ▒▒   ▓▒█░ ▒ ░░   ░ ▒░▓  ░▒ ▒▓▒ ▒ ░░░ ▒░ ░░ ░▒ ▒  ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒ 
  ▒   ▒▒ ░   ░    ░ ░ ▒  ░░ ░▒  ░ ░ ░ ░  ░  ░  ▒     ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░
  ░   ▒    ░        ░ ░   ░  ░  ░     ░   ░        ░        ░ ░ ░ ▒     ░   ░ ░ 
      ░  ░            ░  ░      ░     ░  ░░ ░      ░ ░          ░ ░           ░ 
                                          ░        ░                            
</pre>

I'll be presenting at AtlSecCon again this year on how to make a Google Chrome Extension malware & botnet.

There will be a lot of talk this year around the topic if `wget` or `curl` is a crime.

The code shown below is what many different people now have been arrested for.

> "The teenager told CBC News he thought he was downloading an archive of public documents when he saved approximately 7,000 records to his home computer." - [CBC News](http://www.cbc.ca/news/canada/nova-scotia/teen-accused-foi-website-resonates-programmers-1.4623757)

<pre>
  <code class="bash">
for i in {0..7000};
    do curl -s -o $i.pdf http://example.com/index.php?page=$i;
done
  </code>
</pre>

It will be interesting to see the outcome of the court case as it may set a presedent for the future of security and how it pertains to data that is accidently made public.

Looking forward to the conference tomorrow!
