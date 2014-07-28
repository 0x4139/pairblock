![](http://0x4139.com/content/images/2014/Jul/trust.png)

Well should you?
The short answer is **NO**

####What happens when you click trust?
;tldr the iOS device establishes a trusted relationship with your computer so that iTunes or any kind of different software can talk to your device.

Once the computer has a 'stable' relationship with your device it can access your data like sms database, address book, photos music and more. The relationship can be found in `/var/db/lockdown/*.plist` on the MAC and `/var/root/Library/Lockdown/pair_records` on the iOS and it looks like this
{<2>}![](http://0x4139.com/content/images/2014/Jul/Screen-Shot-2014-07-28-at-4-40-15-PM.png)

####Ok, so what's the problem?
The pairing lasts as long as the file system, in short terms the pairing is available untill you reset your phone to the factory state (updating doesn't clear the pairing).

Once a device is paired, the computer can access the data even if the Wifi sync feature is turned off.

The device also sends to the pc an EscrowBag key (see above) which can be used to access encrypted data even if the device has it's lockscreen on

By default pairing is always on, you can't turn it off on your iPhone, so that you can pair it anytime with any mallicious device. This is where you should really thank the Jailbreak community for securing your device.

#### How do I stop it?
Well, if you have a jailbreaked iOS device you probably already know about PairLock in Cydia, but for the rest of us, we need to set an attribute lock on these 2 directories `escrow_records` and `pair_records`, that will make all the pairing requests to fail on our iOS device. I wrote a little snippet that can help you set a lock on the above folders [pairblock](https://github.com/0x4139/pairblock/edit/master/Readme.md), you can run it from the command line of your device.

#### Proof of Concept
Coming soon!
