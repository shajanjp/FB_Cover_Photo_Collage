#!/bin/bash
#Converts all 24 images to 200x200

#Creates tempout.jpg
convert -size 900x400 xc:skyblue tempout.jpg
#1
composite -geometry 200x200+400+100! 1.jpg tempout.jpg tempout.jpg

#2
composite -geometry 200x200+0+0! c2v.png 2.jpg 2sel.jpg
display 2sel.jpg
rm 2sel.jpg
sele="$(zenity --height=200 --list --radiolist --text 'Select an option' --column ' ' --column 'Your Choice' TRUE '1' FALSE '2' FALSE '3')"
if [ $sele -eq 1 ]
	then
	convert 2.jpg -crop 100x200+0+0 2tmp.jpg
elif [ $sele -eq 2 ]
	then
	convert 2.jpg -crop 100x200+50+0 2tmp.jpg
else
	convert 2.jpg -crop 100x200+100+0 2tmp.jpg
fi
composite -geometry 100x200+600+200! 2tmp.jpg tempout.jpg tempout.jpg

#3
composite -geometry 200x200+0+0! c2h.png 3.jpg 3sel.jpg
display 3sel.jpg
rm 3sel.jpg
sele="$(zenity --height=200 --list --radiolist --text 'Select an option' --column ' ' --column 'Your Choice' TRUE '1' FALSE '2' FALSE '3')"
if [ $sele -eq 1 ]
	then
	convert 3.jpg -crop 200x100+0+0 3tmp.jpg
elif [ $sele -eq 2 ]
	then
	convert 3.jpg -crop 200x100+0+50 3tmp.jpg
else
	convert 3.jpg -crop 200x100+0+100 3tmp.jpg
fi
composite -geometry 200x100+500+0! 3tmp.jpg tempout.jpg tempout.jpg

#4
composite -geometry 200x200+0+0! c2h.png 4.jpg 4sel.jpg
display 4sel.jpg
rm 4sel.jpg
sele="$(zenity --height=200 --list --radiolist --text 'Select an option' --column ' ' --column 'Your Choice' TRUE '1' FALSE '2' FALSE '3')"
if [ $sele -eq 1 ]
	then
	convert 4.jpg -crop 200x100+0+0 4tmp.jpg
elif [ $sele -eq 2 ]
	then
	convert 4.jpg -crop 200x100+0+50 4tmp.jpg
else
	convert 4.jpg -crop 200x100+0+100 4tmp.jpg
fi
composite -geometry 200x100+100+200! 4tmp.jpg tempout.jpg tempout.jpg

#5
composite -geometry 200x200+0+0! c2v.png 5.jpg 5sel.jpg
display 5sel.jpg
rm 5sel.jpg
sele="$(zenity --height=200 --list --radiolist --text 'Select an option' --column ' ' --column 'Your Choice' TRUE '1' FALSE '2' FALSE '3')"
if [ $sele -eq 1 ]
	then
	convert 5.jpg -crop 100x200+0+0 5tmp.jpg
elif [ $sele -eq 2 ]
	then
	convert 5.jpg -crop 100x200+50+0 5tmp.jpg
else
	convert 5.jpg -crop 100x200+100+0 5tmp.jpg
fi
composite -geometry 100x200+200+0! 5tmp.jpg tempout.jpg tempout.jpg

#6
composite -geometry 200x200+0+0! c2v.png 6.jpg 6sel.jpg
display 6sel.jpg
rm 6sel.jpg
sele="$(zenity --height=200 --list --radiolist --text 'Select an option' --column ' ' --column 'Your Choice' TRUE '1' FALSE '2' FALSE '3')"
if [ $sele -eq 1 ]
	then
	convert 6.jpg -crop 100x200+0+0 6tmp.jpg
elif [ $sele -eq 2 ]
	then
	convert 6.jpg -crop 100x200+50+0 6tmp.jpg
else
	convert 6.jpg -crop 100x200+100+0 6tmp.jpg
fi
composite -geometry 100x200+300+200! 6tmp.jpg tempout.jpg tempout.jpg

#7
composite -geometry 200x200+0+0! c2h.png 7.jpg 7sel.jpg
display 7sel.jpg
rm 7sel.jpg
sele="$(zenity --height=200 --list --radiolist --text 'Select an option' --column ' ' --column 'Your Choice' TRUE '1' FALSE '2' FALSE '3')"
if [ $sele -eq 1 ]
	then
	convert 7.jpg -crop 200x100+0+0 7tmp.jpg
elif [ $sele -eq 2 ]
	then
	convert 7.jpg -crop 200x100+0+50 7tmp.jpg
else
	convert 7.jpg -crop 200x100+0+100 7tmp.jpg
fi
composite -geometry 200x100+700+100! 7tmp.jpg tempout.jpg tempout.jpg

#8
composite -geometry 200x200+0+0! c2v.png 8.jpg 8sel.jpg
display 8sel.jpg
rm 8sel.jpg
sele="$(zenity --height=200 --list --radiolist --text 'Select an option' --column ' ' --column 'Your Choice' TRUE '1' FALSE '2' FALSE '3')"
if [ $sele -eq 1 ]
	then
	convert 8.jpg -crop 100x200+0+0 8tmp.jpg
elif [ $sele -eq 2 ]
	then
	convert 8.jpg -crop 100x200+50+0 8tmp.jpg
else
	convert 8.jpg -crop 100x200+100+0 8tmp.jpg
fi
composite -geometry 100x200+0+0! 8tmp.jpg tempout.jpg tempout.jpg


#9
composite -geometry 200x200+0+0! c2v.png 9.jpg 9sel.jpg
display 9sel.jpg
rm 9sel.jpg
sele="$(zenity --height=200 --list --radiolist --text 'Select an option' --column ' ' --column 'Your Choice' TRUE '1' FALSE '2' FALSE '3')"
if [ $sele -eq 1 ]
	then
	convert 9.jpg -crop 100x200+0+0 9tmp.jpg
elif [ $sele -eq 2 ]
	then
	convert 9.jpg -crop 100x200+50+0 9tmp.jpg
else
	convert 9.jpg -crop 100x200+100+0 9tmp.jpg
fi
composite -geometry 100x200+800+200! 9tmp.jpg tempout.jpg tempout.jpg

#24
composite -geometry 200x200+0+0! c2h.png 24.jpg 24sel.jpg
display 24sel.jpg
rm 24sel.jpg
sele="$(zenity --height=200 --list --radiolist --text 'Select an option' --column ' ' --column 'Your Choice' TRUE '1' FALSE '2' FALSE '3')"
if [ $sele -eq 1 ]
	then
	convert 24.jpg -crop 200x100+0+0 24tmp.jpg
elif [ $sele -eq 2 ]
	then
	convert 24.jpg -crop 200x100+0+50 24tmp.jpg
else
	convert 24.jpg -crop 200x100+0+100 24tmp.jpg
fi
composite -geometry 200x100+0+300! 24tmp.jpg tempout.jpg tempout.jpg

#10
convert -resize 100 10.jpg 10tmp.jpg
composite -geometry 100x100+600+100! 10tmp.jpg tempout.jpg tempout.jpg

#11
convert -resize 100 11.jpg 11tmp.jpg
composite -geometry 100x100+300+100! 11tmp.jpg tempout.jpg tempout.jpg

#12
convert -resize 100 12.jpg 12tmp.jpg
composite -geometry 100x100+400+0! 12tmp.jpg tempout.jpg tempout.jpg

#13
convert -resize 100 13.jpg 13tmp.jpg
composite -geometry 100x100+700+200! 13tmp.jpg tempout.jpg tempout.jpg

#14
convert -resize 100 14.jpg 14tmp.jpg
composite -geometry 100x100+700+300! 14tmp.jpg tempout.jpg tempout.jpg

#15
convert -resize 100 15.jpg 15tmp.jpg
composite -geometry 100x100+400+300! 15tmp.jpg tempout.jpg tempout.jpg

#16
convert -resize 100 16.jpg 16tmp.jpg
composite -geometry 100x100+500+300! 16tmp.jpg tempout.jpg tempout.jpg

#17
convert -resize 100 17.jpg 17tmp.jpg
composite -geometry 100x100+700+0! 17tmp.jpg tempout.jpg tempout.jpg

#18
convert -resize 100 18.jpg 18tmp.jpg
composite -geometry 100x100+300+0! 18tmp.jpg tempout.jpg tempout.jpg

#19
convert -resize 100 19.jpg 19tmp.jpg
composite -geometry 100x100+100+100! 19tmp.jpg tempout.jpg tempout.jpg

#20
convert -resize 100 20.jpg 20tmp.jpg
composite -geometry 100x100+100+0! 20tmp.jpg tempout.jpg tempout.jpg

#21
convert -resize 100 21.jpg 21tmp.jpg
composite -geometry 100x100+0+200! 21tmp.jpg tempout.jpg tempout.jpg

#22
convert -resize 100 22.jpg 22tmp.jpg
composite -geometry 100x100+200+300! 22tmp.jpg tempout.jpg tempout.jpg

#23
convert -resize 100 23.jpg 23tmp.jpg
composite -geometry 100x100+800+0! 23tmp.jpg tempout.jpg tempout.jpg

#Adding strokes
composite -geometry 900x400+0+0! fethstr.png tempout.jpg finalpic.jpg


#display the current tempout
display finalpic.jpg
