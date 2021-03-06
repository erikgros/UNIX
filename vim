#BASICS
:w
save document
:q
quit document
:qa
quit all documents
:wq
save and quit document
:wqa
save and quit all documents
:saveas filename
save new document
:e .
open file explore
:args
list of files
:e filename
edit another file
:split filename
split windows and load another file
:vsplit filename
vertical split windows and load another file
:sview filename
open a read-only file
:set backup
set tilde file backup
:ggVG
select the entire document
:make
run Makefile script
:32
go to line 32

#MOVING AROUND
gg
jump to beginning of file
G
jump to end of file
XG
jump to line X of file
0
jump to beginning of line
$
jump to end of line

#SUBSTITUTION
i
insert text
o
insert new line after cursor
O
insert new line before cursor
a
append text in the next cursor space
A
append text in the end of line
w
go to the next word
s
substitute character under cursor
S
delete line and start insert text
x
delete character under cursor

#REGISTERS
q[a-z;0-9]
start record to [a-z;0-9]
set of command

q
end of record
@[a-z;0-9]
execute set of command
@@[a-z;0-9]
repeat execution
5@@[a-z;0-9]
repeat execution 5 times

#DELETING
:1,.d
delete all the lines from the beginning of the file to your current cursor position
:.,$d
delete everything from the current line to the end of the file
