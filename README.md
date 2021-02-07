# dock-my-tor

anon proxy TOR under docker/alpine

## build
<pre>
docker build -t dock-my-tor .
</pre>

## run
<pre>
docker run --name dock-my-tor -p 9100:9100 fm4ttos/dock-my-tor

## usage 

simple as 123. if you want to access the network thru TOR proxy, set the browser proxy to 
<pre>
socks5://127.0.0.1:9100
</pre>

## remarks

TOR default config file is located at /etc/tor/torrc; it define log location (set to setout only), proxy mode, pre/proxy, exclusion, etc...

## current config notes

- ExcludeNodes: remove untrusted nodes and prevent TOR honeypots. current presets are (cn), (hk), (mo) - China, Hong Kong and Macau - you can put as many countries you want.
- HTTPProxy: front HTTP proxy. you know... reasons... it's possible that due 'reasons' home TOR nodes cannot be connect you may need to set a front proxy.
- HTTPSProxy: same mambo jambo from above, for https. 
- Socks5Proxy: same mambo jambo from above of the abovve, with lasers. for socks5. 
