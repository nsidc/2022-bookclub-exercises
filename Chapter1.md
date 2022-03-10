notes from Kevin in Slack on `car` and `cdr`

The thing I was going to say about car and cdr (before my internet connection rendered me the equivalent of about 2 Earth-moon distances away) was that IIRC, you can think about lists as linked lists. When these were implemented way-back-when, the assembly language instructions car and cdr basically gave you the contents of the thing at the head of the list (car) and a pointer to the rest of the list (cdr).
So if you have a list (3 9 7 5) then a simplistic view of memory might be something like this:

```
Address Contents
0x70    3
0x71    0x72
0x72    9
0x73    0x74
0x74    7
0x75    0x76
0x76    5
0x77    0x00
```

So if I was holding onto a list named foo , what I really have in foo is an address to the first atom in the list; in this case, 0x70. The simple version of car and cdr is that if you load an atom into the CPU, you would load the contents of the first two addresses 0x70 and 0x71. Then the assembly instructions car returns 3, and the assembly instruction cdr returns 0x72. Next, by loading (cdr foo) into the CPU,  I now have the contents of 0x72 and 0x73, so then car and cdr return 9 and 0x74 respectively.
I mean, I think it's more complicated than that, but this is "good enough" for a hand wavy view of car and cdr.
