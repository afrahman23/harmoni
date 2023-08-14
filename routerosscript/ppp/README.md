# Make your VPN customers comfortable ⚡️ 

## Senario
📝 When you'll restrict access One client with another on a VPN dial, the simplest is to follow the dynamic nature of the `interfaces`, limiting based on the attributes of the VPN interface itself, in this case `l2tp-client`.



# Goal ⚡️ 
1. Allow access to certain IP addresses only, specific to the intranet
  sample : `host-subnet_clientA` : 10.200.16.2
2. Subnet allocation for each client.
  sample : `ip-pool_clientA` : 10.10.16.0/24


<h2 align="center">
  <img src="https://github.com/afrahman23/harmoni/blob/main/intravpn.jpeg" alt="intranet" width="100%">
</h2>

---

## Configuration

accept established/related and work with `new packets`, [see]()  

```sh
/ip firewall filter
add action=accept chain=forward comment=\
    "== defconf: accept established,related, untracked" connection-state=\
    established,related,untracked
add action=drop chain=forward comment="== defconf: drop invalid" \
    connection-state=invalid
```


 jumps to a change called `ppp` in the `forward` chain, [see](https://forum.mikrotik.com/viewtopic.php?t=20595) 

```sh
/ip firewall filter    
add action=jump chain=forward comment="== customconf: jump for ppp" \
    jump-target=ppp
```



```sh
/ip firewall filter   
add action=drop chain=clientA-in comment="== drop | only clientA" dst-address-list=\
    !host-subnet_clientA src-address-list=ip-pool_clientA
add action=drop chain=clientB-in comment="== drop | onlyclientB" dst-address-list=\
    !host-subnet_clientB src-address-list=ip-pool_clientB
add action=drop chain=clientC-in comment="== drop | only clientC" dst-address-list=\
    !host-subnet_clientC src-address-list=ip-pool_clientC
```


## Check dial 

```sh
/ip firewall filter pr det

6  D chain=ppp action=jump jump-target=clientA-in in-interface=<l2tp-clientA001>

```


---