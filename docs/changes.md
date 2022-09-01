 
- nuue net embedded
- search changes
- const added to vars & parameters
- vars moved to innerscope
- compile warnings resolved
- lowplyhistory & other search changes added
- compile info printed at startup
- obfuscated node count/nps fixed
- unused includes removed
- anarchy mode removed
- persistent transposition table removed

- Clang Diagnostics, Clang-tidy Checks, Clang Static Analyzer changes:
	- 208 Local variable '' can be made const
	- 101 Parameter '' can be made const
	- 21 Parameter '' can be made pointer to const	
	- 21 Declaration and assignment can be joined
    - 13 Redundant cast	
	- 8 Parameter has different names: 'key' and 'k'
    - 8 Redundant elaborated type specifier
	- 7 Variable '' can be moved to inner scope
	- 3 Redundant 'else' keyword	
	- 2 Variable '' can be moved to for-init-statement
    - 2 Parameter 'opt' is never used	
	- 1 Redundant elaborated type specifier
	
for more info on these warnings...see:
https://www.jetbrains.com/help/resharper/Reference__Code_Inspections_CPP.html


all msys64 compile warnings have been resolved:
Fat Titz
![alt tag](https://raw.githubusercontent.com/FireFather/BigBallz/master/bitmaps/fattitz_compile_warnings_1.png)
![alt tag](https://raw.githubusercontent.com/FireFather/BigBallz/master/bitmaps/fattitz_compile_warnings_2.png)


Big Ballz
![alt tag](https://raw.githubusercontent.com/FireFather/BigBallz/master/bitmaps/bigballz_clean_compile.png)

pre-release test (ulra-fast - avg game length = 14.5 secs):

| ---------------- | ---- | --------- | ------------ | ----- | ----- | -- | ----- |
|                  |      |  games    |  + ,  = ,  - |(%)    |Diff,  |SD, |CFS (%)|
| big_ballz_010922 | 3405 |   1500    | 313, 916, 271|51.4 % |+10    |6   |95.1   |
| fat_titz_2       | 3395 |   1500    | 271, 916, 313|48.6   |-10    |6   |4.9    |

ultra-fast dev test:
Settings = Gauntlet/32MB/1000ms+100ms/M 500cp for 6 moves, D 120 moves/EPD:book.epd(31526)
Time = 1575 sec elapsed, 19256 sec remaining

|                  |            |           |                      |                              |                              |
| ---------------- | ---------- | --------- | -------------------- | ---------------------------- | ---------------------------- |
| big_ballz_010922 | 633.0/1239 |263-236-740|L: m=3 t=0 i=0 a=233|D: r=487 i=82 f=58 s=20 a=93|tpm=107.5 d=14.28 nps=384700|
| fat_titz_2       | 606.0/1239 |236-263-740|L: m=4 t=1 i=0 a=258|D: r=487 i=82 f=58 s=20 a=93|tpm=108.4 d=14.20 nps=443303|
 
 
search changes and code optimization result in significantly faster time-to-depth:
time per move (tpm=107.5) has improved compared to (tpm=108.4)
depth reached (d=14.28) has improved compared to (d=d=14.20)


for code change details of this release...see:
https://github.com/FireFather/BigBallz/commit/1042931fded23613c5772c37983000935614e529
