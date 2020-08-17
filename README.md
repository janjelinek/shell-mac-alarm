## Simple CLI alarm script

What is purpose?
If you need to protect your Mac when you are in pablic place (café etc) and you need to go away without device for a while (WC or whatever).
When charcger is disconnected, this script will turn volume on, set to 100% and turn off bluetooth (it's because of headphone usages, alarm in headphones it's useless).
You can use some app with GUI or this simple script.

### Required dependency

For bluetooth disconnection it's using blueutil, so need to be installed first
```
$ brew install blueutil
```

### Usage

Make `armed.sh` executable first.

```
 $ chmod a+x armed.sh
 // If you going to run alarm on background, you can use unarmed.sh as well
 $ chmod a+x unarmed.sh
```

And then just run it when you need protection.

```
$ ./armed.sh
```

Or you can run it as background job

```
$ ./armed.sh &
```

And when you need to kill it, just do

```
$ kill %$(jobs | grep "armed.sh" | grep -o "[0-9]")
```

Or you can use `unarmed.sh` which basically contains simillar command.

```
$ ./unarmed.sh
```

