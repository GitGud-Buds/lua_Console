--range[15][18]
local database_snapshots={"local c=require(module_name).c_UpBinds.dual_Capable_Map{\
\9[\"hexeract\"]=\"local meta_Script=[===[\\\
require(module_name).arithmetiCalc.initcalc=_\\\
require(module_name).arithmetiCalc.imptalgo=require(module_name).algorithms\\\
local x,y,z,a,b,c=require(module_name).arithmetiCalc(0,0,0,0,0,0)\\\
local initial_states={\\\
sizes={0.3,0.3},\\\
axes={\\\
{1,-math.sqrt(3)},\\\
{math.sqrt(3),-1},\\\
{2,0},\\\
{math.sqrt(3),1},\\\
{1,math.sqrt(3)},\\\
{0,2}\\\
},\\\
dimenses={\\\
{%d,%d,var=x},\\\
{%d,%d,var=y},\\\
{%d,%d,var=z},\\\
{%d,%d,var=a},\\\
{%d,%d,var=b},\\\
{%d,%d,var=c}\\\
}\\\
}\\\
for _,perm in require(module_name).permutation_Generator({x,y,z,a,b,c},{1,stateless=true})do\\\
initial_states.relations=require(module_name).true_Iterator({-2,2,-2,2,-2,2,-2,2,-2,2,step1=4,step2=4,step3=4,step4=4,step5=4,function(states)\\\
local comprehended={}\\\
for idx=1,#perm-1 do\\\
comprehended[idx]={perm[idx],\\\"==\\\",states.ctrls[idx],dof=0.1}\\\
end\\\
comprehended[1+#comprehended]={perm[#perm],\\\">=\\\",-2}\\\
comprehended[1+#comprehended]={perm[#perm],\\\"<=\\\",2}\\\
return comprehended\\\
end},_,initial_states.relations)\\\
end\\\
print(require(module_name).serialise(initial_states.relations,\\\"\\\\t\\\"))\\\
return require(module_name).dimensional_Animator(initial_states)\\\
]===]\\\
local scripts={}\\\
for idx1=-3,0,3 do\\\
for idx2=-3,0,3 do\\\
for idx3=-3,0,3 do\\\
for idx4=-3,0,3 do\\\
for idx5=-3,0,3 do\\\
for idx6=-3,0,3 do\\\
scripts[1+#scripts]=string.format(meta_Script,idx1,3+idx1,idx2,3+idx2,idx3,3+idx3,idx4,3+idx4,idx5,3+idx5,idx6,3+idx6)\\\
end\\\
end\\\
end\\\
end\\\
end\\\
end\\\
local collect=require(module_name).c_UpBinds.thread_Consolidator(scripts)\\\
require(module_name).plot_Pixels(collect)\",\
\9[\"rotated Parabolae\"]=\"local loaded_module=require(module_name)\\\
loaded_module.arithmetiCalc.initcalc=nil\\\
loaded_module.arithmetiCalc.imptalgo=loaded_module.algorithms\\\
local x,y,z=loaded_module.arithmetiCalc(0,0,0)\\\
local a,b,c,d,e,f=z(0,0,0,0,0,0)\\\
local j,k,l,m,n,o=z(0,0,0,0,0,0)\\\
local axes={\\\
{math.sqrt(3),-1},\\\
{math.sqrt(3),1},\\\
{0,2}\\\
}\\\
local background={\\\
axes=axes,\\\
relations={\\\
{\\\
{\\\
{\\\
{(x-7)^2+(y-math.sqrt(20))^2,\\\"==\\\",12,dof=1.1},\\\
{z,\\\"==\\\",6,dof=0.1}\\\
},\\\
{\\\
{(x+7)^2+(y+5+math.sqrt(12))^2,\\\"==\\\",12,dof=1.1},\\\
{z,\\\"==\\\",5-math.sqrt(12),dof=0.1}\\\
}\\\
}\\\
},\\\
{\\\
{x,\\\"==\\\",0,dof=0.1},\\\
{y,\\\"==\\\",0,dof=0.1},\\\
{z,\\\"<=\\\",1},\\\
{z,\\\">=\\\",0}\\\
},\\\
{\\\
{y,\\\"==\\\",0,dof=0.1},\\\
{z,\\\"==\\\",0,dof=0.1},\\\
{x,\\\"<=\\\",1},\\\
{x,\\\">=\\\",0}\\\
},\\\
{\\\
{z,\\\"==\\\",0,dof=0.1},\\\
{x,\\\"==\\\",0,dof=0.1},\\\
{y,\\\"<=\\\",1},\\\
{y,\\\">=\\\",0}\\\
}\\\
},\\\
dimenses={\\\
{-11,11,var=x},\\\
{-12,10,var=y},\\\
{-1,7,var=z}\\\
}\\\
}\\\
local states1={\\\
axes=axes,\\\
animation=function(ctrl)\\\
return function(_,n)\\\
n=1+n\\\
local y=n/100-math.sqrt(50)\\\
local z=10-1/5*y^2\\\
if z>=0 then\\\
return n,{7,y,z},{7,y,z}\\\
end\\\
return nil\\\
end,nil,ctrl\\\
end,\\\
animators={\\\
a,b,c,\\\
arg1=0,\\\
arg2=true\\\
},\\\
relations={\\\
{{(d-a)^2+(e-b)^2+(f-c)^2,\\\"<=\\\",10}},\\\
{{(d-a)^2+(e-b)^2+(f-c)^2,\\\"==\\\",10,dof=1.1}}\\\
},\\\
dimenses={\\\
{a-math.sqrt(15),a+math.sqrt(15),var=d},\\\
{b-math.sqrt(15),b+math.sqrt(15),var=e},\\\
{c-math.sqrt(15),c+math.sqrt(15),var=f}\\\
},\\\
trail=true,\\\
pace=20\\\
}\\\
local states2={\\\
axes=axes,\\\
animation=function(ctrl)\\\
return function(_,n)\\\
n=1+n\\\
local y=math.sqrt(50)-n/100\\\
local z1=10-1/5*y^2\\\
local z2=10-1/5*(10+y)^2\\\
if y>=-5 then\\\
return n,{-7,y,z1},{-7,y,z1}\\\
else\\\
return n,{-7,y,z2},{-7,y,z2}\\\
end\\\
return nil\\\
end,nil,ctrl\\\
end,\\\
animators={\\\
j,k,l,\\\
arg1=0,\\\
arg2=true\\\
},\\\
relations={\\\
{{(m-j)^2+(n-k)^2+(o-l)^2,\\\"<=\\\",10}},\\\
{{(m-j)^2+(n-k)^2+(o-l)^2,\\\"==\\\",10,dof=1.1}}\\\
},\\\
dimenses={\\\
{j-math.sqrt(15),j+math.sqrt(15),var=m},\\\
{k-math.sqrt(15),k+math.sqrt(15),var=n},\\\
{l-math.sqrt(15),l+math.sqrt(15),var=o}\\\
},\\\
trail=true,\\\
pace=20\\\
}\\\
local base_pixels=loaded_module.dimensional_Animator(background)\\\
local threads={coroutine.create(loaded_module.dimensional_Animator),coroutine.create(loaded_module.dimensional_Animator)}\\\
local n=1\\\
repeat\\\
local _,coords=coroutine.resume(threads[1],n<=1 and states1 or nil,n<=1 and base_pixels or nil)\\\
coroutine.resume(threads[2],n<=1 and states2 or nil,n<=1 and base_pixels or nil)\\\
states1.override=true\\\
local cache_color=states1.colours[1]\\\
states1.colours[1]={127,127,127}\\\
local _,replica=coroutine.resume(threads[1])\\\
states1.colours[1]=cache_color\\\
states1.override=false\\\
states2.override=true\\\
cache_color=states2.colours[1]\\\
states2.colours[1]={127,127,127}\\\
loaded_module.plot_Pixels(select(2,coroutine.resume(threads[2],replica)),string.format(\\\"/sdcard/Fonts/frame%03d.bmp\\\",n),{-350,200,-200,200})\\\
states2.colours[1]=cache_color\\\
states2.override=false\\\
n=1+n\\\
until coords[2]>=0\\\
local rotate,ctrl1,ctrl2=0\\\
while rotate<24 do\\\
rotate=1+rotate\\\
axes[1]={math.cos((-0.25-rotate/24)*math.pi)*math.sqrt(6),math.sin((-0.25-rotate/24)*math.pi)*math.sqrt(2)}\\\
axes[2]={math.cos((0.25-rotate/24)*math.pi)*math.sqrt(6),math.sin((0.25-rotate/24)*math.pi)*math.sqrt(2)}\\\
_,_,ctrl1=coroutine.resume(threads[1])\\\
_,_,ctrl2=coroutine.resume(threads[2])\\\
coroutine.close(threads[1])\\\
coroutine.close(threads[2])\\\
background={axes=background.axes,relations=background.relations,dimenses=background.dimenses}\\\
local rotated_base=loaded_module.dimensional_Animator(background)\\\
states1={axes=states1.axes,animation=states1.animation,animators=states1.animators,relations=states1.relations,dimenses=states1.dimenses,trail=states1.trail,pace=states1.pace}\\\
states2={axes=states2.axes,animation=states2.animation,animators=states2.animators,relations=states2.relations,dimenses=states2.dimenses,trail=states2.trail,pace=states2.pace}\\\
threads[1]=coroutine.create(loaded_module.dimensional_Animator)\\\
threads[2]=coroutine.create(loaded_module.dimensional_Animator)\\\
states1.pace=20+ctrl1\\\
coroutine.resume(threads[1],states1,rotated_base)\\\
states1.pace=20\\\
states2.pace=20+ctrl2\\\
coroutine.resume(threads[2],states2,rotated_base)\\\
states2.pace=20\\\
states1.override=true\\\
local cache_color=states1.colours[1]\\\
states1.colours[1]={127,127,127}\\\
local _,replica=coroutine.resume(threads[1])\\\
states1.colours[1]=cache_color\\\
states1.override=false\\\
states2.override=true\\\
cache_color=states2.colours[1]\\\
states2.colours[1]={127,127,127}\\\
loaded_module.plot_Pixels(select(2,coroutine.resume(threads[2],replica)),string.format(\\\"/sdcard/Fonts/frame%03d.bmp\\\",n),{-350-75*(math.cos(rotate/24*math.pi)-1),200-75*(math.cos(rotate/24*math.pi)-1),-200+75*math.sin(rotate/24*math.pi)/math.sqrt(3),200+75*math.sin(rotate/24*math.pi)/math.sqrt(3)})\\\
states2.colours[1]=cache_color\\\
states2.override=false\\\
n=1+n\\\
end\\\
repeat\\\
coroutine.resume(threads[1])\\\
coroutine.resume(threads[2])\\\
states1.override=true\\\
local cache_color=states1.colours[1]\\\
states1.colours[1]={127,127,127}\\\
local status,replica=coroutine.resume(threads[1])\\\
if not status then break end\\\
states1.colours[1]=cache_color\\\
states1.override=false\\\
states2.override=true\\\
cache_color=states2.colours[1]\\\
states2.colours[1]={127,127,127}\\\
loaded_module.plot_Pixels(select(2,coroutine.resume(threads[2],replica)),string.format(\\\"/sdcard/Fonts/frame%03d.bmp\\\",n),{-200,350,-200,200})\\\
states2.colours[1]=cache_color\\\
states2.override=false\\\
n=1+n\\\
until not status\\\
coroutine.close(threads[1])\\\
coroutine.close(threads[2])\\\
os.execute('magick -loop 0 -dispose previous -delay 10 /sdcard/Fonts/*.bmp \\\"/sdcard/Download/rotated Animation.gif\\\"')\"\
}\
local b=require(module_name).c_UpBinds.dual_Capable_Map{\
}\
local a=require(module_name).c_UpBinds.dual_Capable_Map{\
\9[\"space before EOL\"]=\"io.input(io.stdin):read()\\\
local line_number,bool,problematic,directory=0,true,{},select(2,require(module_name).directory_Match())\\\
for file_line in io.input(directory):lines(\\\"L\\\")do\\\
line_number=1+line_number\\\
if string.match(file_line,\\\"%s+\\\\n$\\\")then\\\
bool=false\\\
problematic[1+#problematic]=line_number\\\
end\\\
end\\\
io.input(directory):close()\\\
print(bool)\\\
print(require(module_name).serialise(problematic,true))\",\
\9[\"Theoretical\"]=c,\
\9[\"c WhiteBoard\"]=\"os.execute(\\\"rm -rvf $PREFIX/local/cTinkering\\\")\\\
os.execute(\\\"mkdir -v -m +rwx $PREFIX/local/cTinkering\\\")\\\
io.output(os.getenv(\\\"PREFIX\\\")..\\\"/local/cTinkering/cSrc\\\"):write([===[\\\
#include<stdlib.h>\\\
#include<string.h>\\\
#include<pthread.h>\\\
#include<lua.h>\\\
#include<lualib.h>\\\
#include<lauxlib.h>\\\
\\\
\\\
int main(int argc,char *argv[], char *envp[]){\\\
return 0;\\\
}]===])\\\
io.close()\\\
if os.execute(\\\"clang -x c $PREFIX/local/cTinkering/cSrc -S -emit-llvm -fno-discard-value-names -fPIC -ggdb -O0 -ffp-contract=fast -Wall -o $PREFIX/local/cTinkering/cIR\\\")and os.execute(\\\"cp $PREFIX/local/cTinkering/cIR /sdcard/Download/Codes/\\\")and os.execute(\\\"clang -x ir $PREFIX/local/cTinkering/cIR -S -fPIC -ggdb -O0 -ffp-contract=fast -Wall -o $PREFIX/local/cTinkering/cAsbl\\\")and os.execute(\\\"cp $PREFIX/local/cTinkering/cAsbl /sdcard/Download/Codes/\\\")and os.execute(\\\"clang -x assembler $PREFIX/local/cTinkering/cAsbl -fPIC -ggdb -O0 -ffp-contract=fast -Wall -o $PREFIX/local/cTinkering/cProgram -L$PREFIX/local/lib -llua -L$PREFIX/lib -pthread -lm\\\")then\\\
print(\\\"\\\\n------\\\")\\\
os.execute(\\\"$PREFIX/local/cTinkering/cProgram\\\")\\\
print(\\\"------\\\\n\\\")\\\
end\\\
os.execute(\\\"rm -rvf $PREFIX/local/cTinkering\\\")\",\
\9[\"directory Contrast\"]=\"local dictation,arg1,arg2,arg3=...\\\
local loaded_module=require(module_name)\\\
if dictation==\\\"d\\\"then\\\
io.input(io.stdin):read()\\\
loaded_module.directory_Contrast(_,_,arg1 or 27,arg2 or 27,arg3)\\\
elseif dictation==\\\"f\\\"then\\\
io.input(io.stdin):read()\\\
local results=loaded_module.directory_Match()\\\
loaded_module.directory_Contrast('\\\"'..results[2]..'\\\"','\\\"'..results[5]..'\\\"',arg1 or 27,arg2 or 27,arg3)\\\
elseif dictation==\\\"s\\\"then\\\
loaded_module.directory_Contrast(\\\"/sdcard/Download/Codes/\\\",\\\"/sdcard/Download/Codes/\\\",arg1 or 27,arg2 or 27,arg3)\\\
end\"\
}\
local _=require(module_name).c_UpBinds.dual_Capable_Map{\
\9[\"Applets\"]=a,\
\9[\"disambiguity\"]=b,\
\9[\"lua_Console.bat\"]=\"chcp 65001\\13\\\
@echo off\\13\\\
setlocal enabledelayedexpansion\\13\\\
set index=1\\13\\\
:while\\13\\\
call set \\\"temp=%%%index%%\\\"\\13\\\
if defined temp (\\13\\\
set \\\"directory!index!=!temp!\\\"\\13\\\
echo !directory%index%!\\13\\\
set \\\"temp=\\\"\\13\\\
set /a index+=1\\13\\\
goto while\\13\\\
) else (\\13\\\
set /a index-=1\\13\\\
call set \\\"temp=%%!index!%\\\"\\13\\\
set \\\"script_path=!temp!\\\"\\13\\\
echo !script_path!\\13\\\
set \\\"directory!index!=\\\"\\13\\\
set \\\"temp=\\\"\\13\\\
)\\13\\\
cmd\\13\\\
pause\"\
}\
return _",
"local e=require(module_name).c_UpBinds.dual_Capable_Map{\
}\
local d=require(module_name).c_UpBinds.dual_Capable_Map{\
\9[\"disambiguity\"]=e\
}\
return d"}
--range[15][15]
local function replicate(object,reconstruct,delve_guard,replicated,depth)
reconstruct,delve_guard,replicated,depth=math.tointeger(tonumber(reconstruct))or nil,math.tointeger(tonumber(delve_guard))or 1,type(replicated)=="table"and replicated or(type(delve_guard)=="table"and delve_guard or(type(reconstruct)=="table"and reconstruct or{})),math.tointeger(tonumber(depth)) or 1
if(not reconstruct or reconstruct>=depth)and(type(object)=="table"or(type(object)=="userdata"and tostring(object):find("dual_Capable_Map")==1))then
if replicated[object]and delve_guard+replicated[object]<depth then
return tostring(object).." - loophole patch"
elseif not replicated[object]then
replicated[object]=depth
end
local replica={}
if reconstruct==false or(type(object)=="userdata"and tostring(object):find("dual_Capable_Map")==1)then
replica=require(module_name).c_UpBinds.dual_Capable_Map(replica)
end
for k,v in pairs(object)do
replica[replicate(k,reconstruct,delve_guard,replicated,1+depth)]=replicate(v,reconstruct,delve_guard,replicated,1+depth)
end
return replica
end
return object
end

local function zip(lists,initial_params,params)
params=params or{}
if params.initialised then
goto second
end
params.far_reach=-1
for i=1,#lists do
local k=1+i%#lists
if #lists[i]~=#lists[k]then
warn("Misalignment Found at Row ",k,"!")
end
if #lists[i]>=params.far_reach then
params.far_reach,params.critical_position=#lists[i],i
end
end
for i=1,params.critical_position do
while #lists[i]<params.far_reach do
lists[i][1+#lists[i]]=false
end
end
params.unique={}
params.stateless=(initial_params or params.unique).stateless
params.offset=(initial_params or params.unique).offset or 1
params.unit=params.offset//math.abs(params.offset)
params.offset=params.unit<0 and 1+params.offset%params.far_reach or 1+(params.offset-1)%params.far_reach
params.onset=params.offset
params.initialised=true
::second::
if params.stateless then
params.lists=lists
return function(args,x)
if not args.initd then
args.initd=true
goto first
end
x=1+(args.unit+x-1)%args.far_reach
if x==args.onset then
return nil
end
::first::
local j,elem=1,{}
while j<=#args.lists and(args.lists[j]or args.unique)[x]~=nil do
elem[1+#elem]=args.lists[j][x]
j=1+j
end
return x,elem
end,params,params.offset
elseif params.stateless==false then
local lis=replicate(lists)
return function()
if not params.initd then
params.initd=true
goto first
end
params.offset=1+(params.unit+params.offset-1)%params.far_reach
if params.offset==params.onset then
return nil
end
::first::
local j,elem=1,{}
while j<=#lis and(lis[j]or params.unique)[params.offset]~=nil do
elem[1+#elem]=lis[j][params.offset]
j=1+j
end
return elem
end
end
local j,element=1,{}
while j<=#lists and(lists[j]or params.unique)[params.offset]~=nil do
element[1+#element]=lists[j][params.offset]
j=1+j
end
params.offset=1+(params.unit+params.offset-1)%params.far_reach
if params.offset~=params.onset then
return element,zip(lists,nil,params)
else
return element
end
end

local function comp_Factory(invoke_left_with_value,ref_collection)
invoke_left_with_value,ref_collection=type(invoke_left_with_value)=="boolean"and invoke_left_with_value or false,type(ref_collection)=="table"and ref_collection or(type(invoke_left_with_value)=="table"and invoke_left_with_value or nil)
return function(l,r)
if ref_collection then
if not invoke_left_with_value then
l=ref_collection[l]
end
r=ref_collection[r]
end
if type(l)~=type(r)then
return type(l)<type(r)
elseif type(l)=="number"then
if math.type(l)~=math.type(r)then
return math.type(l)<math.type(r)
elseif l~=r then
return l<r
end
elseif type(l)=="userdata"then
if io.type(l)~=io.type(r)then
if not io.type(r)then
return false
elseif not io.type(l)then
return true
else
return io.type(l)<io.type(r)
end
end
elseif type(l)=="string"then
if utf8.len(l)==#l and utf8.len(r)==#r and l~=r then
return l<r
elseif utf8.len(l)<utf8.len(r)then
for position,codepoint in utf8.codes(l)do
if codepoint~=utf8.codepoint(r,position,#r)then
return codepoint<utf8.codepoint(r,position,#r)
end
end
return true
else
for position,codepoint in utf8.codes(r)do
if codepoint~=utf8.codepoint(l,position,#l)then
return codepoint>utf8.codepoint(l,position,#l)
end
end
return false
end
end
return tostring(l)<tostring(r)
end
end

local function binary_Search(raw_table,sought,sorted_array,accommodate,rule,range)
accommodate,rule,range=type(accommodate)=="boolean"and accommodate or(type(sorted_array)=="boolean"and sorted_array or false),type(rule)=="function"and rule or(type(accommodate)=="function"and accommodate or(type(sorted_array)=="function"and sorted_array or comp_Factory)),type(range)=="table"and range or(type(rule)=="table"and rule or(type(accommodate)=="table"and accommodate or(type(raw_table)=="table"or type(sorted_array)~="table"and true or sorted_array)))
local established
if type(raw_table)~="table"and type(sought)=="table"then
raw_table,sought,sorted_array=nil,raw_table,sought
elseif type(sorted_array)~="table"then
sorted_array,established={},true
for key in next,raw_table do
sorted_array[1+#sorted_array]=key
end
table.sort(sorted_array,rule(raw_table))
end
if #sorted_array>0 then
if range==true then
range={1,#sorted_array}
end
range[1]=tonumber(range[1])and 1+(tonumber(range[1])-1)%#sorted_array or 1
range[2]=tonumber(range[2])and 1+(tonumber(range[2])-1)%#sorted_array or #sorted_array
if range[1]>range[2]then
range[1],range[2]=range[2],range[1]
end
else
range={1,#sorted_array}
end
while range[1]<=range[2]do
local middle,candidate,direction=(range[1]+range[2])//2
if raw_table then
candidate=raw_table[sorted_array[middle]]
direction=rule(true,raw_table)(sought,sorted_array[middle])
else
candidate=sorted_array[middle]
direction=rule(true,sorted_array)(sought,middle)
end
if sought==candidate then
if accommodate then
range[2]=middle-1
else
return not raw_table or not established and middle or sorted_array[middle]
end
elseif direction then
range[2]=middle-1
else
range[1]=1+middle
end
end
if accommodate then
return not raw_table or not established and range[1]or sorted_array[range[1]]
end
return nil
end

local function index_Body(input_table,start,stop,stateless)
local unit_forward
if stop==start then
unit_forward=1
else
unit_forward=(stop-start)//math.abs(stop-start)
end
start=start-unit_forward
if stateless then
local params={}
params.stop=stop
params.unit_forward=unit_forward
params.input_table=input_table
return function(args,strt)
strt=args.unit_forward+strt
if args.stop-strt~=-args.unit_forward then
return strt,args.input_table[strt]
end
end,params,start
end
local replica=replicate(input_table)
return function()
start=unit_forward+start
if stop-start~=-unit_forward then
return replica[start]
end
end
end

local function key_Body(input_table,start,stop,stateless,keys)
local unit_forward
if stop==start then
unit_forward=1
else
unit_forward=(stop-start)//math.abs(stop-start)
end
start=start-unit_forward
if stateless then
local params={}
params.stop=stop
params.unit_forward=unit_forward
params.keys=keys
params.input_table=input_table
return function(args,strt)
strt=args.unit_forward+strt
if args.stop-strt~=-args.unit_forward then
return strt,args.keys[strt],args.input_table[args.keys[strt]]
end
end,params,start
end
local replica=replicate(input_table)
return function()
start=unit_forward+start
if stop-start~=-unit_forward then
return replica[keys[start]]
end
end
end

local function serial_Body(input_table,start,stop,key_word,stateless)
local unit_forward
if stop==start then
unit_forward=1
else
unit_forward=(stop-start)//math.abs(stop-start)
end
start=start-unit_forward
if stateless then
local params={}
params.stop=stop
params.key_word=key_word
params.unit_forward=unit_forward
params.input_table=input_table
return function(args,strt)
repeat
strt=args.unit_forward+strt
until args.stop-strt==-args.unit_forward or(type(args.key_word)=="number"and args.input_table[strt]or args.input_table[args.key_word..strt])
if args.stop-strt~=-args.unit_forward then
if type(args.key_word)=="number"then
return strt,args.input_table[strt]
else
return strt,args.key_word..strt,args.input_table[args.key_word..strt]
end
end
end,params,start
end
local replica=replicate(input_table)
return function()
repeat
start=unit_forward+start
until stop-start==-unit_forward or(type(key_word)=="number"and replica[start]or replica[key_word..start])
if stop-start~=-unit_forward then
return type(key_word)=="number"and replica[start]or replica[key_word..start]
end
end
end

local function table_Player(input_table,params)
params=params or{}
local keys
if type(params.key_word)=="boolean"then
keys={}
for key in next,input_table,#input_table>0 and #input_table or nil do
keys[1+#keys]=key
end
if params.key_word then
table.sort(keys,type(params.comp_func)=="function"and params.comp_func or comp_Factory())
end
if params.i~=nil and(not math.tointeger(tonumber(params.i))or params.i>#input_table)then
params.i=type(params.i)~="table"and binary_Search(not params.key_word and keys or params.i,params.key_word and keys or params.i,type(params.comp_func)=="function"and params.comp_func)or params.i
end
if params.j~=nil and(not math.tointeger(tonumber(params.j))or params.j>#input_table)then
params.j=type(params.j)~="table"and binary_Search(not params.key_word and keys or params.j,params.key_word and keys or params.j,type(params.comp_func)=="function"and params.comp_func)or params.j
end
local unfound_keys={}
if params.i~=nil and not math.tointeger(tonumber(params.i))then
unfound_keys[1+#unfound_keys]=tostring(params.i)
end
if params.j~=nil and not math.tointeger(tonumber(params.j))then
unfound_keys[1+#unfound_keys]=tostring(params.j)
end
if #unfound_keys>0 then
error(table.concat(unfound_keys,", ")..": Key"..(#unfound_keys>1 and"s"or"").." Unfound in Input Table!")
end
end
if not params.i then
if not params.dist then
if not params.j then
params.i=(params.key_word==nil or type(params.key_word)=="boolean")and 1 or nil
else
params.i=(params.key_word==nil or type(params.key_word)=="boolean")and 1 or params.j
end
else
if not params.j then
if params.dist=="-"then
params.i=params.key_word==nil and(#input_table>0 and #input_table or nil)or(type(params.key_word)=="boolean"and #keys or nil)
elseif params.dist>0 then
params.i=(params.key_word==nil or type(params.key_word)=="boolean")and 1 or nil
elseif params.dist<0 then
params.i=params.key_word==nil and(#input_table>0 and #input_table or nil)or(type(params.key_word)=="boolean"and #keys or nil)
else
params.i=params.key_word==nil and(#input_table>0 and math.random(1,#input_table)or nil)or(type(params.key_word)=="boolean"and math.random(1,#keys)or nil)
end
else
if params.dist=="-"then
params.i=params.key_word==nil and(#input_table>0 and #input_table or nil)or(type(params.key_word)=="boolean"and #keys or params.j)
elseif params.dist~=0 then
params.i=params.j-params.dist
else
params.i=params.j
end
end
end
end
local start
if params.j and type(params.dist)=="number"and(params.i-params.j)*params.dist>0 then
if params.i-params.j<params.dist then
start=math.min(params.j,params.dist+params.i)
elseif params.i-params.j>params.dist then
start=math.max(params.j,params.dist+params.i)
else
start=params.j
end
else
start=params.i
end
if not params.dist then
if not params.j then
if params.key_word==nil then
return index_Body(input_table,start,#input_table>0 and #input_table or nil,params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,#keys,params.stateless,keys)
else
return serial_Body(input_table,start,start,params.key_word,params.stateless)
end
else
if params.key_word==nil then
return index_Body(input_table,start,params.j,params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,params.j,params.stateless,keys)
else
return serial_Body(input_table,start,params.j,params.key_word,params.stateless)
end
end
else
if not params.j then
if params.dist=="-"then
if params.key_word==nil then
return index_Body(input_table,start,1,params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,1,params.stateless,keys)
else
return serial_Body(input_table,start,start,params.key_word,params.stateless)
end
elseif params.dist~=0 then
if params.key_word==nil then
return index_Body(input_table,start,params.dist+params.i,params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,params.dist+params.i,params.stateless,keys)
else
return serial_Body(input_table,start,params.dist+params.i,params.key_word,params.stateless)
end
else
error("Invalid Arguments!")
end
else
if params.dist=="-"then
if params.key_word==nil then
return index_Body(input_table,start,params.j,params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,params.j,params.stateless,keys)
else
return serial_Body(input_table,start,params.j,params.key_word,params.stateless)
end
elseif params.i-params.j<0 and params.dist>0 then
if params.key_word==nil then
return index_Body(input_table,start,math.min(params.j,params.dist+params.i),params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,math.min(params.j,params.dist+params.i),params.stateless,keys)
else
return serial_Body(input_table,start,math.min(params.j,params.dist+params.i),params.key_word,params.stateless)
end
elseif params.i-params.j>0 and params.dist<0 then
if params.key_word==nil then
return index_Body(input_table,start,math.max(params.j,params.dist+params.i),params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,math.max(params.j,params.dist+params.i),params.stateless,keys)
else
return serial_Body(input_table,start,math.max(params.j,params.dist+params.i),params.key_word,params.stateless)
end
elseif(params.i-params.j)*params.dist>0 then
if params.i-params.j<params.dist then
if params.key_word==nil then
return index_Body(input_table,start,math.max(params.j,params.dist+params.i),params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,math.max(params.j,params.dist+params.i),params.stateless,keys)
else
return serial_Body(input_table,start,math.max(params.j,params.dist+params.i),params.key_word,params.stateless)
end
elseif params.i-params.j>params.dist then
if params.key_word==nil then
return index_Body(input_table,start,math.min(params.j,params.dist+params.i),params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,math.min(params.j,params.dist+params.i),params.stateless,keys)
else
return serial_Body(input_table,start,math.min(params.j,params.dist+params.i),params.key_word,params.stateless)
end
else
if params.dist~=0 then
if params.key_word==nil then
return index_Body(input_table,start,params.dist+params.i,params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,params.dist+params.i,params.stateless,keys)
else
return serial_Body(input_table,start,params.dist+params.i,params.key_word,params.stateless)
end
end
end
else
error("Invalid Arguments!")
end
end
end
end

local arithmetiCalc

--mentorship by deepseek
local function true_Iterator(params,initial_states,comprehension,layer_offset,ctrls,yields1,yields2,args,results)
local function iter(states,layer)
states=states or{}
states[ctrls or"ctrls"]=states[ctrls or"ctrls"]or{}
states[yields1 or"yields1"]=states[yields1 or"yields1"]or{}
states[yields2 or"yields2"]=states[yields2 or"yields2"]or{}
states[args or"args"]=states[args or"args"]or{}
states[results or"results"]=states[results or"results"]or{}
layer=layer or 1
if layer_offset then
layer=layer-layer_offset
end
states[args or"args"]["bhrconds"..layer]=states[args or"args"]["bhrconds"..layer]or function()return false end
states[args or"args"]["bbhrdo"..layer]=states[args or"args"]["bbhrdo"..layer]or function(states,layer,ctrl,yield1,yield2)return states end
states[args or"args"]["bhbconds"..layer]=states[args or"args"]["bhbconds"..layer]or states[args or"args"]["bhrconds"..layer]
states[args or"args"]["bbhbdo"..layer]=states[args or"args"]["bbhbdo"..layer]or states[args or"args"]["bbhrdo"..layer]
states[args or"args"]["bhconds"..layer]=states[args or"args"]["bhconds"..layer]or states[args or"args"]["bhrconds"..layer]
states[args or"args"]["bhdo"..layer]=states[args or"args"]["bhdo"..layer]or states[args or"args"]["bbhrdo"..layer]
states[args or"args"]["nuptconds"..layer]=states[args or"args"]["nuptconds"..layer]or states[args or"args"]["bhrconds"..layer]
states[args or"args"]["nuptdoinstd"..layer]=states[args or"args"]["nuptdoinstd"..layer]or states[args or"args"]["bbhrdo"..layer]
states[args or"args"]["mprconds"..layer]=states[args or"args"]["mprconds"..layer]or states[args or"args"]["bhrconds"..layer]
states[args or"args"]["bmprdo"..layer]=states[args or"args"]["bmprdo"..layer]or states[args or"args"]["bbhrdo"..layer]
states[args or"args"]["mpbconds"..layer]=states[args or"args"]["mpbconds"..layer]or states[args or"args"]["bhrconds"..layer]
states[args or"args"]["bmpbdo"..layer]=states[args or"args"]["bmpbdo"..layer]or states[args or"args"]["bbhrdo"..layer]
states[args or"args"]["mpconds"..layer]=states[args or"args"]["mpconds"..layer]or states[args or"args"]["bhrconds"..layer]
states[args or"args"]["mpdo"..layer]=states[args or"args"]["mpdo"..layer]or states[args or"args"]["bbhrdo"..layer]
states[args or"args"]["ndlvconds"..layer]=states[args or"args"]["ndlvconds"..layer]or states[args or"args"]["bhrconds"..layer]
states[args or"args"]["ndlvdoinstd"..layer]=states[args or"args"]["ndlvdoinstd"..layer]or states[args or"args"]["bbhrdo"..layer]
states[args or"args"]["awrconds"..layer]=states[args or"args"]["awrconds"..layer]or states[args or"args"]["bhrconds"..layer]
states[args or"args"]["bawrdo"..layer]=states[args or"args"]["bawrdo"..layer]or states[args or"args"]["bbhrdo"..layer]
states[args or"args"]["awbconds"..layer]=states[args or"args"]["awbconds"..layer]or states[args or"args"]["bhrconds"..layer]
states[args or"args"]["bawbdo"..layer]=states[args or"args"]["bawbdo"..layer]or states[args or"args"]["bbhrdo"..layer]
states[args or"args"]["awconds"..layer]=states[args or"args"]["awconds"..layer]or states[args or"args"]["bhrconds"..layer]
states[args or"args"]["awdo"..layer]=states[args or"args"]["awdo"..layer]or states[args or"args"]["bbhrdo"..layer]
local cache_layer,cache_ctrl,cache_yield1,cache_yield2
if(type(states[args or"args"][2*layer-1])=="number"and type(states[args or"args"][2*layer])=="number")or(rawequal(debug.getmetatable(states[args or"args"][2*layer-1]),arithmetiCalc)and rawequal(debug.getmetatable(states[args or"args"][2*layer]),arithmetiCalc))then
local start=rawequal(debug.getmetatable(states[args or"args"][2*layer-1]),arithmetiCalc)and states[args or"args"][2*layer-1]:evaluate()or arithmetiCalc.evaluate(states[args or"args"][2*layer-1])
local stop=rawequal(debug.getmetatable(states[args or"args"][2*layer]),arithmetiCalc)and states[args or"args"][2*layer]:evaluate()or arithmetiCalc.evaluate(states[args or"args"][2*layer])
for ctrl=start,stop,states[args or"args"]["step"..layer]or 1 do
if states[args or"args"]["bhrconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bbhrdo"..layer](states,layer,ctrl)
return states,cache_layer or layer,cache_ctrl or ctrl,cache_yield1,cache_yield2
elseif states[args or"args"]["bhbconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bbhbdo"..layer](states,layer,ctrl)
break
elseif states[args or"args"]["bhconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bhdo"..layer](states,layer,ctrl)
end
if states[args or"args"]["nuptconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["nuptdoinstd"..layer](states,layer,ctrl)
else
states[ctrls or"ctrls"][layer]=ctrl
end
if 1+2*layer<#states[args or"args"]and(cache_layer or states[args or"args"]["mprconds"..layer](states,layer,ctrl))or states[args or"args"]["mprconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bmprdo"..layer](states,layer,ctrl)
return states,cache_layer or layer,cache_ctrl or ctrl,cache_yield1,cache_yield2
elseif states[args or"args"]["mpbconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bmpbdo"..layer](states,layer,ctrl)
break
elseif states[args or"args"]["mpconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["mpdo"..layer](states,layer,ctrl)
end
if 1+2*layer<#states[args or"args"]then
if states[args or"args"]["ndlvconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["ndlvdoinstd"..layer](states,layer,ctrl)
else
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=(states[args or"args"]["customdlv"..layer]or iter)(states,not layer_offset and 1+layer or 1+layer_offset+layer)
end
else
local comprehend=states[args or"args"][1+2*layer](states,layer,ctrl)
if comprehend~=nil then
states[results or"results"][1+#states[results or"results"]]=comprehend
end
end
if states[args or"args"]["awrconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bawrdo"..layer](states,layer,ctrl)
return states,cache_layer or layer,cache_ctrl or ctrl,cache_yield1,cache_yield2
elseif states[args or"args"]["awbconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bawbdo"..layer](states,layer,ctrl)
break
elseif states[args or"args"]["awconds"..layer](states,layer,ctrl)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["awdo"..layer](states,layer,ctrl)
end
end
else
local gen_func,invar_state,ctrl_var_init
if states[args or"args"][2*layer-1]==states[args or"args"][2*layer]and type(states[args or"args"][2*layer])=="function"then
gen_func=states[args or"args"][2*layer]
elseif type(states[args or"args"]["customgen"..layer])=="function"then
gen_func,invar_state,ctrl_var_init=states[args or"args"]["customgen"..layer](states[args or"args"][2*layer-1],states[args or"args"][2*layer])
else
gen_func,invar_state,ctrl_var_init=table_Player(states[args or"args"][2*layer-1],states[args or"args"][2*layer])
end
for ctrl,yield1,yield2 in gen_func,invar_state,ctrl_var_init do
if states[args or"args"]["bhrconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bbhrdo"..layer](states,layer,ctrl,yield1,yield2)
return states,cache_layer or layer,cache_ctrl or ctrl,cache_yield1 or yield1,cache_yield2 or yield2
elseif states[args or"args"]["bhbconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bbhbdo"..layer](states,layer,ctrl,yield1,yield2)
break
elseif states[args or"args"]["bhconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bhdo"..layer](states,layer,ctrl,yield1,yield2)
end
if states[args or"args"]["nuptconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["nuptdoinstd"..layer](states,layer,ctrl,yield1,yield2)
else
states[ctrls or"ctrls"][layer]=ctrl
states[yields1 or"yields1"][layer]=yield1
states[yields2 or"yields2"][layer]=yield2
end
if 1+2*layer<#states[args or"args"]and(cache_layer or states[args or"args"]["mprconds"..layer](states,layer,ctrl,yield1,yield2))or states[args or"args"]["mprconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bmprdo"..layer](states,layer,ctrl,yield1,yield2)
return states,cache_layer or layer,cache_ctrl or ctrl,cache_yield1 or yield1,cache_yield2 or yield2
elseif states[args or"args"]["mpbconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bmpbdo"..layer](states,layer,ctrl,yield1,yield2)
break
elseif states[args or"args"]["mpconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["mpdo"..layer](states,layer,ctrl,yield1,yield2)
end
if 1+2*layer<#states[args or"args"]then
if states[args or"args"]["ndlvconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["ndlvdoinstd"..layer](states,layer,ctrl,yield1,yield2)
else
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=(states[args or"args"]["customdlv"..layer]or iter)(states,not layer_offset and 1+layer or 1+layer_offset+layer)
end
else
local comprehend=states[args or"args"][1+2*layer](states,layer,ctrl,yield1,yield2)
if comprehend~=nil then
states[results or"results"][1+#states[results or"results"]]=comprehend
end
end
if states[args or"args"]["awrconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bawrdo"..layer](states,layer,ctrl,yield1,yield2)
return states,cache_layer or layer,cache_ctrl or ctrl,cache_yield1 or yield1,cache_yield2 or yield2
elseif states[args or"args"]["awbconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["bawbdo"..layer](states,layer,ctrl,yield1,yield2)
break
elseif states[args or"args"]["awconds"..layer](states,layer,ctrl,yield1,yield2)then
states,cache_layer,cache_ctrl,cache_yield1,cache_yield2=states[args or"args"]["awdo"..layer](states,layer,ctrl,yield1,yield2)
end
end
end
return states,cache_layer,cache_ctrl,cache_yield1,cache_yield2
end
if layer_offset or ctrls or yields1 or yields2 or args or results then
return iter
end
initial_states=initial_states or{}
comprehension=comprehension or{}
initial_states[args or"args"]=params
initial_states[results or"results"]=comprehension
local bool,bool1=true,true
for layer=1,#params-1 do
if params["customgen"..layer]or type(params[layer])~="table"or next(params[layer],#params[layer]>0 and #params[layer]or nil)or #params[layer]==0 then
bool=false
if layer%2==1 then
bool1=false
end
end
end
if bool==true then
local uniform={stateless=true}
for idx=#params,2,-1 do
table.insert(params,idx,uniform)
end
elseif bool1==true and #params%2==1 then
local bool2=true
for idx=2,#params-1,2 do
if params["customgen"..idx/2]or type(params[idx])~="table"or not next(params[idx],#params[idx]>0 and #params[idx]or nil)or #params[idx]>0 then
bool2=false
end
end
if bool2==true then
for idx=2,#params-1,2 do
params[idx].stateless=true
end
end
end
local states,layer,ctrl,yield1,yield2=iter(initial_states)
params=type(params.ress)=="function"and params.ress(params,states,comprehension,layer,ctrl,yield1,yield2)or nil
if not params then
return comprehension,states,layer,ctrl,yield1,yield2
else
return true_Iterator(params,states,comprehension)
end
end


arithmetiCalc={}

function arithmetiCalc:initialise(parents,inverse_map)
for k in next,debug.getmetatable(self).map do
local config=k:match("^(%w%w%w)%w-$")
rawset(debug.getmetatable(self),"_"..k,debug.getmetatable(self).prototypes[config.."usc"](debug.getmetatable(self),k))
rawset(debug.getmetatable(self),"__"..k:match("^%w%w%w(%w-)$"),debug.getmetatable(self).prototypes[config.."mm"](debug.getmetatable(self),k))
end
parents=parents or{}
rawset(debug.getmetatable(self),"__index",function(self,method)
local found=rawget(debug.getmetatable(self),method)
if found then
return found
end
for idx=#parents,1,-1 do
found=parents[idx][method]
if found then
return found
end
end
end)
inverse_map=inverse_map or{}
for k,v in next,debug.getmetatable(self).map do
inverse_map[v]={debug.getmetatable(self),k}
end
local function import_Facility(self,math_lib,processed,layer)
processed,layer=processed or{},layer or 1
if type(math_lib)=="table"then
if processed[math_lib]and processed[math_lib]<layer then
return false
else
processed[math_lib]=layer
end
local bool
for k,v in next,math_lib do
if type(k)=="table"then
import_Facility(self,k,processed,1+layer)
end
if type(v)=="table"then
import_Facility(self,v,processed,1+layer)
elseif type(v)=="function"then
bool=true
local algorithm=v(debug.getmetatable(self))
if debug.getmetatable(self).map[algorithm]then
local ex_method=debug.getmetatable(self).map[algorithm]
inverse_map[ex_method][1][ex_method]=nil
inverse_map[ex_method]=nil
elseif inverse_map[k]then
local ex_algo=inverse_map[k][2]
inverse_map[k][1][k]=nil
debug.getmetatable(self).map[ex_algo]=nil
debug.getmetatable(self)["_"..ex_algo]=nil
debug.getmetatable(self)["__"..ex_algo]=nil
inverse_map[k]=nil
end
debug.getmetatable(self).map[algorithm]=k
rawset(debug.getmetatable(self),"_"..algorithm,debug.getmetatable(self).prototypes[algorithm:match("^(%w%w%w)%w-$").."usc"](debug.getmetatable(self),algorithm))
rawset(debug.getmetatable(self),"__"..algorithm,debug.getmetatable(self).prototypes[algorithm:match("^(%w%w%w)%w-$").."mm"](debug.getmetatable(self),algorithm))
inverse_map[k]={math_lib,algorithm}
end
end
if not math_lib.__index and bool then
math_lib.__index=math_lib
parents[1+#parents]=debug.setmetatable({},math_lib)
end
end
end
rawset(debug.getmetatable(self),"import_Algorithms",import_Facility)
end

function arithmetiCalc:evaluate(choice)
if type(self)~="table"then
return self
elseif rawequal(debug.getmetatable(self),arithmetiCalc)and rawget(self,"value")then
return self.value
elseif rawequal(debug.getmetatable(self),arithmetiCalc)and rawget(self,"algorithm")then
local respective,operands={},debug.getmetatable(self).prototypes[self.algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
for idx=1,#operands do
respective[1+#respective]=rawequal(debug.getmetatable(self[operands[idx]]),debug.getmetatable(self))and self[operands[idx]]:evaluate()or debug.getmetatable(self).evaluate(self[operands[idx]])
end
if debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binadd"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())+(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binsub"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())-(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binmul"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())*(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="bindiv"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())/(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binmod"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())%(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binpow"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())^(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binunm"then
return -(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binidiv"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())//(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binband"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())&(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binbor"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())|(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binbxor"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())~(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binbnot"then
return ~(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binshl"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())<<(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
elseif debug.getmetatable(self).map[self.algorithm]and self.algorithm=="binshr"then
return(math.tointeger(respective[1])or tonumber(respective[1])or load("return "..respective[1])())>>(math.tointeger(respective[2])or tonumber(respective[2])or load("return "..respective[2])())
else
if #debug.getmetatable(self).prototypes[self.algorithm:match("^(%w%w%w)%w-$").."cfg"].results>1 then
return table.pack(self[debug.getmetatable(self).map[self.algorithm]](self))[choice or rawget(self,"result")or 1]
else
return self[debug.getmetatable(self).map[self.algorithm]](self)
end
end
end
end

local function len_Precursor(self,dummy,results,layer)
results,layer=results or{},layer or 1
if layer>(results.depth or 0)then
results.depth=layer
end
if rawequal(debug.getmetatable(dummy),arithmetiCalc)and rawget(dummy,"algorithm")then
local paretheses,height,width,operands=0,{},{},debug.getmetatable(dummy).prototypes[dummy.algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
for idx=1,#operands do
if dummy.algorithm~="bindiv"and(dummy.algorithm~="binpow"or(rawequal(debug.getmetatable(dummy[operands[2]]),debug.getmetatable(dummy))and rawget(dummy[operands[2]],"algorithm"))or not tonumber(debug.getmetatable(dummy).evaluate(dummy[operands[2]]))or not math.tointeger(1/tonumber(debug.getmetatable(dummy).evaluate(dummy[operands[2]]))))and rawequal(debug.getmetatable(dummy[operands[idx]]),debug.getmetatable(dummy))then
if(tonumber((debug.getmetatable(dummy).map[dummy.algorithm]or"0"):match("^%d"))or 0)>(tonumber((debug.getmetatable(dummy).map[dummy[operands[idx]].algorithm]or"4"):match("^%d"))or 4)then
paretheses=2+paretheses
end
end
height[1+#height]=len_Precursor(dummy[operands[idx]],dummy[operands[idx]],results,1+layer).height
width[1+#width]=len_Precursor(dummy[operands[idx]],dummy[operands[idx]],results,1+layer).width
end
results.height,results.width=0,0
if dummy.algorithm=="bindiv"then
for idx=1,#height do
results.height=height[idx]+results.height
if idx<#height then
results.height=1+results.height
end
end
results.width=math.max(table.unpack(width))
else
results.height=(dummy.algorithm=="binpow"and 1 or 0)+math.max(table.unpack(height))
local power
if dummy.algorithm=="binpow"and(not rawequal(debug.getmetatable(dummy[operands[2]]),debug.getmetatable(dummy))or not rawget(dummy[operands[2]],"algorithm"))then
power=rawequal(debug.getmetatable(dummy[operands[2]]),debug.getmetatable(dummy))and dummy[operands[2]]:evaluate()or debug.getmetatable(dummy).evaluate(dummy[operands[2]])
end
for idx=1,#width do
if idx>1 or(dummy.algorithm~="binunm"and dummy.algorithm~="binbnot")then
results.width=(idx==2 and tonumber(power)and math.tointeger(1/tonumber(power))and #tostring(math.tointeger(1/tonumber(power)))or width[idx])+results.width
end
if idx<#width and dummy.algorithm~="binpow"then
results.width=(debug.getmetatable(dummy).map[dummy.algorithm]:find("%w-$",2)==2 and 1 or utf8.len(debug.getmetatable(dummy).map[dummy.algorithm],1,#debug.getmetatable(dummy).map[dummy.algorithm])-1)+results.width
end
end
if debug.getmetatable(dummy).map[dummy.algorithm]:find("%w-$",2)==2 then
results.width=(not rawget(dummy,"result")and 0 or 1+#tostring(dummy.result))+2+utf8.len(debug.getmetatable(dummy).map[dummy.algorithm],1,#debug.getmetatable(dummy).map[dummy.algorithm])+results.width
else
results.width=paretheses+results.width
end
end
else
results.height=1
results.width=utf8.len(tostring(rawequal(debug.getmetatable(dummy),arithmetiCalc)and dummy:evaluate()or arithmetiCalc.evaluate(dummy)),1,#tostring(rawequal(debug.getmetatable(dummy),arithmetiCalc)and dummy:evaluate()or arithmetiCalc.evaluate(dummy)))
end
return results
end

arithmetiCalc.__len=len_Precursor

local function concat_Precursor(...)
local sizes,pieces={},table.pack(...)
if not rawequal(debug.getmetatable(pieces[1]),arithmetiCalc)and arithmetiCalc.map[(type(pieces[1])=="table"and pieces[1]or sizes)[1]]then
sizes[1]=true
else
sizes[1]=false
end
for idx1=sizes[1]and 2 or 1,pieces.n do
if sizes[1]then
sizes[idx1]=rawequal(debug.getmetatable(pieces[idx1]),arithmetiCalc)and #pieces[idx1]or utf8.len(tostring(arithmetiCalc.evaluate(pieces[idx1])),1,#tostring(arithmetiCalc.evaluate(pieces[idx1])))
end
if rawequal(debug.getmetatable(pieces[idx1]),arithmetiCalc)and rawget(pieces[idx1],"algorithm")then
local collect,operands={},debug.getmetatable(pieces[idx1]).prototypes[pieces[idx1].algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
for idx2=1,#operands do
collect[1+#collect]=pieces[idx1][operands[idx2]]
end
table.insert(collect,1,{pieces[idx1].algorithm,rawget(pieces[idx1],"result")})
pieces[idx1]=concat_Precursor(table.unpack(collect))
else
pieces[idx1]={{},{{rawequal(debug.getmetatable(pieces[idx1]),arithmetiCalc)and pieces[idx1]:evaluate()or arithmetiCalc.evaluate(pieces[idx1])}}}
end
end
if sizes[1]then
local height,width={},{}
for idx=2,#sizes do
height[1+#height]=type(sizes[idx])~="table"and 1 or sizes[idx].height
width[1+#width]=type(sizes[idx])~="table"and sizes[idx]or sizes[idx].width
end
local combined={}
if pieces[1][1]=="bindiv"then
local max_width=math.max(table.unpack(width))
for idx=1,1+height[1]+height[2]do
if idx<=height[1]then
combined[idx]={string.rep(" ",(max_width-width[1])//2),table.concat(pieces[2][2][idx]),string.rep(" ",math.ceil((max_width-width[1])/2))}
elseif idx==1+height[1]then
combined[idx]={string.rep("-",max_width)}
else
combined[idx]={string.rep(" ",math.ceil((max_width-width[2])/2)),table.concat(pieces[3][2][idx-1-height[1]]),string.rep(" ",(max_width-width[2])//2)}
end
end
elseif pieces[1][1]=="binpow"then
local max_height=1+math.max(table.unpack(height))
if not next(pieces[3][1])and tonumber(pieces[3][2][1][1])and math.tointeger(1/tonumber(pieces[3][2][1][1]))then
for idx=1,max_height do
if idx==1 then
combined[idx]={math.tointeger(1/tonumber(pieces[3][2][1][1])),string.rep("-",width[1])}
else
combined[idx]={string.rep(" ",#tostring(math.tointeger(1/tonumber(pieces[3][2][1][1])))-1),(idx==2 and"√"or" "),table.concat(pieces[2][2][idx-1])}
end
end
else
for idx1=1,max_height do
combined[idx1]={}
for idx2=1,#width do
if idx2<=1 then
if idx1<=(height[1+idx2]<=height[idx2]and 1 or 1+height[1+idx2]-height[idx2])then
combined[idx1][1+#combined[idx1]]=string.rep(" ",((tonumber((arithmetiCalc.map[pieces[1][1]]or"0"):match("^%d"))or 0)>(tonumber((arithmetiCalc.map[pieces[1+idx2][1][1]]or"4"):match("^%d"))or 4)and 2 or 0)+width[idx2])
else
combined[idx1][1+#combined[idx1]]=((tonumber((arithmetiCalc.map[pieces[1][1]]or"0"):match("^%d"))or 0)<=(tonumber((arithmetiCalc.map[pieces[1+idx2][1][1]]or"4"):match("^%d"))or 4)and""or(idx1~=1+max_height-math.ceil(height[idx2]/2)and" "or"("))..table.concat(pieces[1+idx2][2][idx1-(height[1+idx2]<=height[idx2]and 1 or 1+height[1+idx2]-height[idx2])])..((tonumber((arithmetiCalc.map[pieces[1][1]]or"0"):match("^%d"))or 0)<=(tonumber((arithmetiCalc.map[pieces[1+idx2][1][1]]or"4"):match("^%d"))or 4)and""or(idx1~=1+max_height-math.ceil(height[idx2]/2)and" "or")"))
end
elseif idx2>=2 then
if idx1<=height[idx2] then
combined[idx1][1+#combined[idx1]]=((tonumber((arithmetiCalc.map[pieces[1][1]]or"0"):match("^%d"))or 0)<=(tonumber((arithmetiCalc.map[pieces[1+idx2][1][1]]or"4"):match("^%d"))or 4)and""or(idx1~=1+height[2]//2 and" "or"("))..table.concat(pieces[1+idx2][2][idx1])..((tonumber((arithmetiCalc.map[pieces[1][1]]or"0"):match("^%d"))or 0)<=(tonumber((arithmetiCalc.map[pieces[1+idx2][1][1]]or"4"):match("^%d"))or 4)and""or(idx1~=1+height[2]//2 and" "or")"))
else
combined[idx1][1+#combined[idx1]]=string.rep(" ",((tonumber((arithmetiCalc.map[pieces[1][1]]or"0"):match("^%d"))or 0)>(tonumber((arithmetiCalc.map[pieces[1+idx2][1][1]]or"4"):match("^%d"))or 4)and 2 or 0)+width[idx2])
end
end
end
end
end
else
local max_height=math.max(table.unpack(height))
if arithmetiCalc.map[pieces[1][1]]:find("%w-$",2)==2 then
height[0]=1
height[1+#height]=1
width[0]=(not pieces[1][2]and 0 or 1+utf8.len(tostring(pieces[1][2]),1,#tostring(pieces[1][2])))+1+utf8.len(arithmetiCalc.map[pieces[1][1]],1,#arithmetiCalc.map[pieces[1][1]])
width[1+#width]=1
end
for idx1=1,max_height do
combined[idx1]={}
for idx2=arithmetiCalc.map[pieces[1][1]]:find("%w-$",2)==2 and 0 or 1,#width do
if idx2==1 and(pieces[1][1]=="binunm"or pieces[1][1]=="binbnot")then
goto unary_omission
end
if idx1<=math.ceil((max_height-height[idx2])/2)or idx1>max_height-(max_height-height[idx2])//2 then
combined[idx1][1+#combined[idx1]]=string.rep(" ",((tonumber((arithmetiCalc.map[pieces[1][1]]or"0"):match("^%d"))or 0)>(tonumber((arithmetiCalc.map[(pieces[1+idx2]or{{}})[1][1]]or"4"):match("^%d"))or 4)and 2 or 0)+width[idx2])
else
if idx2==0 then
combined[idx1][1+#combined[idx1]]=arithmetiCalc.map[pieces[1][1]].."("..(not pieces[1][2]and""or pieces[1][2]..",")
elseif idx2==#width and arithmetiCalc.map[pieces[1][1]]:find("%w-$",2)==2 then
combined[idx1][1+#combined[idx1]]=")"
else
combined[idx1][1+#combined[idx1]]=((tonumber((arithmetiCalc.map[pieces[1][1]]or"0"):match("^%d"))or 0)<=(tonumber((arithmetiCalc.map[(pieces[1+idx2]or{{}})[1][1]]or"4"):match("^%d"))or 4)and""or(idx1~=1+max_height//2 and" "or"("))..table.concat(pieces[1+idx2][2][idx1-math.ceil((max_height-height[idx2])/2)])..((tonumber((arithmetiCalc.map[pieces[1][1]]or"0"):match("^%d"))or 0)<=(tonumber((arithmetiCalc.map[(pieces[1+idx2]or{{}})[1][1]]or"4"):match("^%d"))or 4)and""or(idx1~=1+max_height//2 and" "or")"))
end
end
::unary_omission::
if idx2>0 and(arithmetiCalc.map[pieces[1][1]]:find("%w-$",2)==2 and 1 or 0)+idx2<#width then
if idx1~=1+max_height//2 then
combined[idx1][1+#combined[idx1]]=string.rep(" ",arithmetiCalc.map[pieces[1][1]]:find("%w-$",2)==2 and 1 or utf8.len(arithmetiCalc.map[pieces[1][1]],1,#arithmetiCalc.map[pieces[1][1]])-1)
else
combined[idx1][1+#combined[idx1]]=arithmetiCalc.map[pieces[1][1]]:find("%w-$",2)==2 and","or arithmetiCalc.map[pieces[1][1]]:match(".-$",2)
end
end
end
end
end
pieces={pieces[1],combined}
end
return pieces
end

arithmetiCalc.__concat=concat_Precursor

local function eq_Precursor(self,compared)
if rawequal(self,compared)then
return true
end
local bool
if rawequal(debug.getmetatable(self),debug.getmetatable(compared))and rawequal(debug.getmetatable(self),arithmetiCalc)and rawget(self,"algorithm")and rawget(compared,"algorithm")and rawequal(rawget(self,"algorithm"),rawget(compared,"algorithm"))then
local config=debug.getmetatable(self).prototypes[self.algorithm:match("^(%w%w%w)%w-$").."cfg"]
if #config.results>1 and self.result~=compared.result then
goto double_evaluation
end
bool=true
for idx=1,#config.operands do
if not eq_Precursor(self[config.operands[idx]],compared[config.operands[idx]])then
bool=false
end
end
if not bool and(self.algorithm=="binadd"or self.algorithm=="binmul")then
if eq_Precursor(self[config.operands[1]],compared[config.operands[2]])and eq_Precursor(self[config.operands[2]],compared[config.operands[1]])then
return true
end
end
::double_evaluation::
end
return bool or rawequal(math.tointeger(arithmetiCalc.evaluate(self))or tonumber(arithmetiCalc.evaluate(self))or load("return "..arithmetiCalc.evaluate(self))(),math.tointeger(arithmetiCalc.evaluate(compared))or tonumber(arithmetiCalc.evaluate(compared))or load("return "..arithmetiCalc.evaluate(compared))())
end

arithmetiCalc.__eq=eq_Precursor

local function le_Precursor(self,compared)
if self==compared or(math.tointeger(arithmetiCalc.evaluate(self))or tonumber(arithmetiCalc.evaluate(self))or load("return "..arithmetiCalc.evaluate(self))())<(math.tointeger(arithmetiCalc.evaluate(compared))or tonumber(arithmetiCalc.evaluate(compared))or load("return "..arithmetiCalc.evaluate(compared))())then
return true
end
return false
end

arithmetiCalc.__le=le_Precursor

local function lt_Precursor(self,compared)
return not(self>=compared)
end

arithmetiCalc.__lt=lt_Precursor

local function call_Precursor(self,...)
if rawequal(debug.getmetatable(self),self)then
debug.setmetatable(self,nil)
self.__mode="v"
end
local params=table.pack(...)
for idx=1,params.n do
if type(params[idx])=="table"then
params[idx]={call_Precursor(self,table.unpack(params[idx]))}
else
params[idx]=debug.setmetatable({value=params[idx]},debug.getmetatable(self)or self)
end
end
return table.unpack(params,1,params.n)
end

arithmetiCalc.__call=call_Precursor

function arithmetiCalc.__newindex(self,dictation,details)
if dictation=="initcalc"then
self:initialise((type(details)~="table"and{}or details).n and table.unpack(details,1,details.n)or details)
elseif dictation=="imptalgo"then
self:import_Algorithms((type(details)~="table"and{}or details).n and table.unpack(details,1,details.n)or details)
elseif dictation=="optalgo"and rawget(self,"algorithm")then
details=details or{}
local height,width,algorithms,operands={},{},{},debug.getmetatable(self).prototypes[self.algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
for idx=1,#operands-1 do
local size
if idx<#operands-1 then
size=rawequal(debug.getmetatable(self[operands[idx]]),debug.getmetatable(self))and #self[operands[idx]]or{height=1,width=utf8.len(tostring(debug.getmetatable(self).evaluate(self[operands[idx]])),1,#tostring(debug.getmetatable(self).evaluate(self[operands[idx]])))}
height[1+#height]=size.height
width[1+#width]=size.width
algorithms[1+#algorithms]=(self[operands[idx]]..self[operands[1+idx]])[1]
else
size=rawequal(debug.getmetatable(self[operands[idx]]),debug.getmetatable(self))and #self[operands[idx]]or{height=1,width=utf8.len(tostring(debug.getmetatable(self).evaluate(self[operands[idx]])),1,#tostring(debug.getmetatable(self).evaluate(self[operands[idx]])))}
height[1+#height]=size.height
width[1+#width]=size.width
size=rawequal(debug.getmetatable(self[operands[1+idx]]),debug.getmetatable(self))and #self[operands[1+idx]]or{height=1,width=utf8.len(tostring(debug.getmetatable(self).evaluate(self[operands[1+idx]])),1,#tostring(debug.getmetatable(self).evaluate(self[operands[1+idx]])))}
height[1+#height]=size.height
width[1+#width]=size.width
algorithms[1+#algorithms],algorithms[2+#algorithms]=table.unpack(self[operands[idx]]..self[operands[1+idx]])
end
end
local combined,max_height={},math.max(table.unpack(height))
for idx1=1,max_height do
combined[idx1]={}
for idx2=1,#width do
if idx1~=1+max_height//2 then
combined[idx1][1+#combined[idx1]]=string.rep(" ",utf8.len(tostring(details[idx2]or"Undefined "..(idx2>1 and"Operation"or"Prefix")),1,#tostring(details[idx2]or"Undefined "..(idx2>1 and"Operation"or"Prefix"))))
else
combined[idx1][1+#combined[idx1]]=tostring(details[idx2]or"Undefined "..(idx2>1 and"Operation"or"Prefix"))
end
if idx1<=math.ceil((max_height-height[idx2])/2)or idx1>max_height-(max_height-height[idx2])//2 then
combined[idx1][1+#combined[idx1]]=string.rep(" ",width[idx2])
else
combined[idx1][1+#combined[idx1]]=table.concat(algorithms[idx2][2][idx1-math.ceil((max_height-height[idx2])/2)])
end
if idx2>=#width then
if idx1~=1+max_height//2 then
combined[idx1][1+#combined[idx1]]=string.rep(" ",utf8.len(tostring(details[1+idx2]or"Undefined Suffix"),1,#tostring(details[1+idx2]or"Undefined Suffix")))
else
combined[idx1][1+#combined[idx1]]=tostring(details[1+idx2]or"Undefined Suffix")
end
end
end
combined[idx1]=table.concat(combined[idx1])
end
details.block=table.concat(combined,"\n")
details.stream:write(details.block)
elseif dictation=="prteval"and rawget(self,"algorithm")then
print(self:evaluate(details))
elseif dictation=="upteval"and rawget(self,"algorithm")then
rawset(self,"value",self:evaluate())
local operands=debug.getmetatable(self).prototypes[self.algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
for idx1=1,#operands do
if rawequal(debug.getmetatable(self[operands[idx1]]),debug.getmetatable(self))then
local results
if rawget(self[operands[idx1]],"value")then
results={rawget(debug.getmetatable(self),"constresultfield")}
elseif rawget(self[operands[idx1]],"algorithm")then
results=debug.getmetatable(self).prototypes[self[operands[idx1]].algorithm:match("^(%w%w%w)%w-$").."cfg"].results
end
for idx2=1,#results do
for idx3=1,math.huge do
if rawget(self[operands[idx1]],results[idx2]..idx3)==nil then
break
elseif rawequal(self[operands[idx1]][results[idx2]..idx3],self)then
self[operands[idx1]][results[idx2]..idx3]=false
end
end
end
end
self[operands[idx1]]=nil
end
if rawget(self,"result")then
self.result=nil
end
self.algorithm=nil
collectgarbage()
elseif dictation=="prtvlu"and rawget(self,"value")then
print(self.value)
elseif dictation=="uptvlu"and rawget(self,"value")then
self.value=details
end
end

debug.setmetatable(arithmetiCalc,arithmetiCalc)

local function ordinary_underscores(meta_class,algorithm)
return function(...params)
local results,cache_algorithm,operands={},{},meta_class.prototypes[algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
for idx1=1,#operands do
if rawequal(debug.getmetatable(params[idx1]),meta_class)then
results[idx1]=rawget(params[idx1],"value")and{meta_class.constresultfield}or meta_class.prototypes[rawget(params[idx1],"algorithm"):match("^(%w%w%w)%w-$").."cfg"].results
local cache_result
for idx2=1,#results[idx1]do
for idx3=1,math.huge do
local potential=rawget(params[idx1],results[idx1][idx2]..idx3)
if not potential then
if not cache_result then
cache_result=results[idx1][idx2]..idx3
end
if rawequal(potential,nil)then
break
end
else
cache_algorithm[potential]=1+(cache_algorithm[potential]or 0)
end
end
end
results[idx1]=cache_result
end
end
local instance
for k,v in next,cache_algorithm do
if v>=#operands and rawget(k,"algorithm")==algorithm then
local bool=true
for idx=1,#operands do
if not rawequal(params[idx],rawget(k,operands[idx]))then
bool=false
break
end
end
if bool then
instance=k
break
end
end
end
if not instance then
instance={}
instance.algorithm=algorithm
for idx=1,#operands do
instance[operands[idx]]=params[idx]
if results[idx]then
rawset(params[idx],results[idx],instance)
end
end
instance=debug.setmetatable(instance,meta_class)
end
return instance
end
end
local function ordinary_metamethods(meta_class,algorithm)
return function(...)
return meta_class["_"..algorithm](...)
end
end
local function selective_underscores(meta_class,algorithm)
return function(result,...params)
local results,cache_algorithm,operands={},{},meta_class.prototypes[algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
for idx1=1,#operands do
if rawequal(debug.getmetatable(params[idx1]),meta_class)then
results[idx1]=rawget(params[idx1],"value")and{meta_class.constresultfield}or meta_class.prototypes[rawget(params[idx1],"algorithm"):match("^(%w%w%w)%w-$").."cfg"].results
local cache_result
for idx2=1,#results[idx1]do
for idx3=1,math.huge do
local potential=rawget(params[idx1],results[idx1][idx2]..idx3)
if not potential then
if not cache_result then
cache_result=results[idx1][idx2]..idx3
end
if rawequal(potential,nil)then
break
end
else
cache_algorithm[potential]=1+(cache_algorithm[potential]or 0)
end
end
end
results[idx1]=cache_result
end
end
local instance
for k,v in next,cache_algorithm do
if v>=#operands and rawget(k,"algorithm")==algorithm then
local bool=true
for idx=1,#operands do
if not rawequal(params[idx],rawget(k,operands[idx]))then
bool=false
break
end
end
if bool and(not rawget(k,"result")and result==1 or rawget(k,"result")==result)then
instance=k
break
end
end
end
if not instance then
instance={}
instance.algorithm=algorithm
for idx=1,#operands do
instance[operands[idx]]=params[idx]
if results[idx]then
rawset(params[idx],results[idx],instance)
end
end
if type(result)=="number"and result>1 and result<=#meta_class.prototypes[algorithm:match("^(%w%w%w)%w-$").."cfg"].results then
instance.result=result
end
instance=debug.setmetatable(instance,meta_class)
end
return instance
end
end
local function selective_metamethods(meta_class,algorithm)
return function(result,...)
return meta_class["_"..algorithm](result,...)
end
end

local function group_Generator(specifications,incomplete)
specifications=specifications or{}
specifications[1],specifications[2]=tonumber(specifications[1])or math.random(5,15),tonumber(specifications[2])or 2
local function gGen(ttl,comps,icmplt,grps,layer)
layer,grps=layer or 1,grps or{}
local sum=0
for idx=1,layer-1 do
sum=grps[idx]+sum
end
if layer<comps then
for idx=icmplt and 1 or 0,icmplt and ttl-sum-comps+layer or ttl-sum do
grps[layer]=idx
gGen(ttl,comps,icmplt,grps,1+layer)
end
else
grps[layer]=ttl-sum
coroutine.yield(grps)
end
end
local thread=coroutine.create(gGen)
if specifications.stateless then
local params={}
params.thread=thread
params.total=specifications[1]
params.compartments=specifications[2]
params.incomplete=incomplete
return function(args)
local status,group_yield=coroutine.resume(args.thread,args.total,args.compartments,args.incomplete)
if status then
return group_yield
end
coroutine.close(args.thread)
return nil
end,params
end
local replica_specifications=replicate(specifications)
return function()
local status,group_yield=coroutine.resume(thread,replica_specifications[1],replica_specifications[2],incomplete)
if status then
return group_yield
end
coroutine.close(thread)
return nil
end
end

local function permutation_Generator(input_table,groups)
local keys,list={},{}
for key,item in next,input_table do
keys[1+#keys]=key
list[1+#list]=item
end
groups=groups or{}
groups[1]=groups[1]or #list
local function permGen(ks,lis,grps,layer,group_layer)
layer,group_layer=layer or 1,group_layer or 0
local foothold=0
for idx=1,group_layer do
foothold=grps[idx]+foothold
end
for idx=#lis,layer+foothold,-1 do
ks[layer+foothold],ks[idx]=ks[idx],ks[layer+foothold]
lis[layer+foothold],lis[idx]=lis[idx],lis[layer+foothold]
if layer>=grps[1+group_layer]then
if group_layer<#grps-1 then
permGen(ks,lis,grps,nil,1+group_layer)
else
coroutine.yield(ks,lis)
end
else
permGen(ks,lis,grps,1+layer,group_layer)
end
ks[layer+foothold],ks[idx]=ks[idx],ks[layer+foothold]
lis[layer+foothold],lis[idx]=lis[idx],lis[layer+foothold]
end
end
local thread=coroutine.create(permGen)
if groups.stateless then
local params={}
params.thread=thread
params.keys=keys
params.list=list
params.groups=groups
return function(args)
local status,key_yield,permutation_yield=coroutine.resume(args.thread,args.keys,args.list,args.groups)
if status then
return key_yield,permutation_yield
end
coroutine.close(args.thread)
return nil
end,params
end
local replica_groups=replicate(groups)
return function()
local status,_,permutation_yield=coroutine.resume(thread,keys,list,replica_groups)
if status then
return permutation_yield
end
coroutine.close(thread)
return nil
end
end

local function grouped_Combination_Generator(input_table,groups)
local keys,list={},{}
for key,item in next,input_table do
keys[1+#keys]=key
list[1+#list]=item
end
groups=groups or{}
groups[1]=groups[1]or math.random(2,#list-1)
local function gCombGen(ks,lis,grps,elim,layer,group_layer)
elim,layer,group_layer=elim or 0,layer or 1,group_layer or 0
local foothold=0
for idx=1,group_layer do
foothold=grps[idx]+foothold
end
for idx=#lis-elim,layer+foothold,-1 do
ks[layer+foothold],ks[idx]=ks[idx],ks[layer+foothold]
lis[layer+foothold],lis[idx]=lis[idx],lis[layer+foothold]
if layer>=grps[1+group_layer]then
if group_layer<#grps-1 then
gCombGen(ks,lis,grps,nil,nil,1+group_layer)
else
coroutine.yield(ks,lis)
end
else
gCombGen(ks,lis,grps,elim,1+layer,group_layer)
end
ks[layer+foothold],ks[idx]=ks[idx],ks[layer+foothold]
lis[layer+foothold],lis[idx]=lis[idx],lis[layer+foothold]
elim=1+elim
end
end
local thread=coroutine.create(gCombGen)
if groups.stateless then
local params={}
params.thread=thread
params.keys=keys
params.list=list
params.groups=groups
return function(args)
local status,key_yield,combination_yield=coroutine.resume(args.thread,args.keys,args.list,args.groups)
if status then
return key_yield,combination_yield
end
coroutine.close(args.thread)
return nil
end,params
end
local replica_groups=replicate(groups)
return function()
local status,_,combination_yield=coroutine.resume(thread,keys,list,replica_groups)
if status then
return combination_yield
end
coroutine.close(thread)
return nil
end
end

local function partially_Determined_Permutation_Generator(free_elements,ordered_groups)
if #ordered_groups>0 then
for idx=1,#ordered_groups do
if type(ordered_groups[idx])=="table"then
if #ordered_groups[idx]<=0 then
error("Table at vararg position "..idx.." lacks a sequence!")
end
elseif type(ordered_groups[idx])~="string"then
error(type(ordered_groups[idx]).." at vararg position "..idx.." is invalid!")
end
end
end
local function pPermGen(ks,lis,ogrps,layer)
layer=layer or 1
local posits=true_Iterator{1,1+#ks,function(states)return table.unpack(states.ctrls)end}
for num_of_grps=1,type(ogrps[layer])=="string"and utf8.len(ogrps[layer])or #ogrps[layer]do
for grp_lyot in group_Generator(type(ogrps[layer])=="string"and utf8.len(ogrps[layer])or #ogrps[layer],num_of_grps)do
for pos in grouped_Combination_Generator(posits,{#grp_lyot,stateless=true})do
local srtd_pos,keys,list=true_Iterator{pos,{j=#grp_lyot,stateless=true},function(states)return table.unpack(states.yields1)end},replicate(ks),replicate(lis)
table.sort(srtd_pos)
for idx1=type(ogrps[layer])=="string"and utf8.len(ogrps[layer])or #ogrps[layer],1,-1 do
local sum,fnl_pos=0
for idx2=1,#grp_lyot do
sum=grp_lyot[idx2]+sum
if sum>=idx1 then
fnl_pos=srtd_pos[idx2]
break
end
end
table.insert(keys,fnl_pos,ogrps[layer][idx1])
table.insert(list,fnl_pos,ogrps[layer][idx1])
end
if layer<#ogrps then
pPermGen(keys,list,ogrps,1+layer)
else
coroutine.yield(keys,list)
end
end
end
end
end
local thread=coroutine.create(function(felems,ogrps)
for ks,lis in permutation_Generator(felems,{stateless=true})do
if #ogrps>0 then
pPermGen(ks,lis,ogrps)
else
coroutine.yield(ks,lis)
end
end
end)
if ordered_groups.stateless then
local params={}
params.thread=thread
params.free_elements=free_elements
params.ordered_groups=ordered_groups
return function(args)
local status,key_yield,permutation_yield=coroutine.resume(args.thread,args.free_elements,args.ordered_groups)
if status then
return key_yield,permutation_yield
end
coroutine.close(args.thread)
return nil
end,params
end
local replica_free_elements=replicate(free_elements)
local replica_ordered_groups=replicate(ordered_groups)
return function()
local status,_,permutation_yield=coroutine.resume(thread,replica_free_elements,replica_ordered_groups)
if status then
return permutation_yield
end
coroutine.close(thread)
return nil
end
end

local function uni_Inc_Rand(a, b, precision)
precision = precision or 1e6
local range = b-a
local randint = math.random(0,precision)
return a+(range*randint)/precision
end

local function kahan_Product(values)
local product,c=1.0,1.0
for v in table_Player(values) do
local y=v/c
local t=product*y
c=(t/product)/y
product=t
end
return product
end

local function kahan_Sum(values)
local sum, c = 0.0, 0.0
for v in table_Player(values)do
local y = v - c
local t = sum + y
c = (t - sum) - y
sum = t
end
return sum
end

rawset(arithmetiCalc,"constresultfield","convey")

rawset(arithmetiCalc,"map",{
binadd="1+",
binsub="1--",
binmul="2×",
bindiv="3/",
binmod="2%",
binpow="3^",
binunm="1-",
binidiv="2//",
binband="2&",
binbor="2|",
binbxor="2~~",
binbnot="2~",
binshl="2<<",
binshr="2>>"
})

rawset(arithmetiCalc,"prototypes",{unausc=ordinary_underscores,
unamm=ordinary_metamethods,
unacfg={
operands={"unwrapped"},
results={"wrapped"}
},
binusc=ordinary_underscores,
binmm=ordinary_metamethods,
bincfg={
operands={"left","right"},
results={"sole"}
},
ttrusc=ordinary_underscores,
ttrmm=ordinary_metamethods,
ttrcfg={
operands={"one","two","three","four"},
results={"convergence"}
},
frkusc=selective_underscores,
frkmm=selective_metamethods,
frkcfg={
operands={"source"},
results={"larm","rarm"}
}
})

local algorithms={}

function algorithms:sin(dummy)
local algorithm="unasin"
if rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
return algorithm
elseif not rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
if dummy==nil then
local operands=debug.getmetatable(self).prototypes[algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
local distinguished=rawequal(debug.getmetatable(self[operands[1]]),debug.getmetatable(self))and self[operands[1]]:evaluate()or debug.getmetatable(self).evaluate(self[operands[1]])
return math.sin(math.tointeger(distinguished)or tonumber(distinguished)or load("return "..distinguished)())
elseif type(dummy)=="table"and not debug.getmetatable(dummy)then
end
end
return arithmetiCalc["__"..algorithm](self,dummy)
end

function algorithms:ln(dummy)
local algorithm="unaln"
if rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
return algorithm
elseif not rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
if dummy==nil then
local operands=debug.getmetatable(self).prototypes[algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
local distinguished=rawequal(debug.getmetatable(self[operands[1]]),debug.getmetatable(self))and self[operands[1]]:evaluate()or debug.getmetatable(self).evaluate(self[operands[1]])
return math.log(math.tointeger(distinguished)or tonumber(distinguished)or load("return "..distinguished)())
elseif type(dummy)=="table"and not debug.getmetatable(dummy)then
end
end
return arithmetiCalc["__"..algorithm](self,dummy)
end

function algorithms:log(base)
local algorithm="binlog"
if rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
return algorithm
elseif not rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
if not base then
local respective,operands={},debug.getmetatable(self).prototypes[algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
for idx=1,#operands do
respective[1+#respective]=rawequal(debug.getmetatable(self[operands[idx]]),debug.getmetatable(self))and self[operands[idx]]:evaluate()or debug.getmetatable(self).evaluate(self[operands[idx]])
respective[#respective]=math.tointeger(respective[#respective])or tonumber(respective[#respective])or load("return "..respective[#respective])()
end
return math.log(table.unpack(respective,1,2))
elseif type(base)=="table"and not debug.getmetatable(base)then
end
end
return arithmetiCalc["__"..algorithm](self,base)
end

function algorithms:fmod(divider)
local algorithm="binfmod"
if rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
return algorithm
elseif not rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
if not divider then
local respective,operands={},debug.getmetatable(self).prototypes[algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
for idx=1,#operands do
respective[1+#respective]=rawequal(debug.getmetatable(self[operands[idx]]),debug.getmetatable(self))and self[operands[idx]]:evaluate()or debug.getmetatable(self).evaluate(self[operands[idx]])
respective[#respective]=math.tointeger(respective[#respective])or tonumber(respective[#respective])or load("return "..respective[#respective])()
end
return math.fmod(table.unpack(respective,1,2))
elseif type(divider)=="table"and not debug.getmetatable(divider)then
end
end
return arithmetiCalc["__"..algorithm](self,divider)
end

function algorithms:modf(switch)
local algorithm="frkmodf"
if rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
return algorithm
elseif not rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
if not switch then
local operands=debug.getmetatable(self).prototypes[algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
local distinguished=rawequal(debug.getmetatable(self[operands[1]]),debug.getmetatable(self))and self[operands[1]]:evaluate()or debug.getmetatable(self).evaluate(self[operands[1]])
return math.modf(math.tointeger(distinguished)or tonumber(distinguished)or load("return "..distinguished)())
elseif type(switch)=="table"and not debug.getmetatable(switch)then
end
end
switch=switch or 1
return arithmetiCalc["__"..algorithm](switch,self)
end

function algorithms:dummy4(...extra_operands)
local algorithm="ttrdummy4"
if rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
return algorithm
elseif not rawequal(debug.getmetatable(self),self)and rawequal(debug.getmetatable(self),arithmetiCalc)then
if extra_operands.n==0 then
elseif type(extra_operands[1])=="table"and not debug.getmetatable(extra_operands[1])then
end
end
return arithmetiCalc["__"..algorithm](self,...)
end

local function vector_Addition(vectors)
local bool=true
for i=1,#vectors do
local k=1+i%#vectors
if #vectors[i]~=#vectors[k]then
bool=false
end
end
if not bool then
error("Unable to Perform Vector Addition on Misaligned Vectors!")
end
return(true_Iterator{{zip(vectors)},function(_,_,_,yield1)local yield=kahan_Sum(yield1)return math.tointeger(yield)or yield end})
end

local function vector_Length(vector)
local intermediate=kahan_Sum(true_Iterator{vector,function(_,_,_,yield1)return yield1^2 end})
return math.sqrt(math.tointeger(intermediate)or intermediate)
end

local function colour_Blend(colour)
colour[1]=math.min(math.ceil(math.max(table.unpack(colour.blue))/#colour.blue),math.min(table.unpack(colour.blue))-1)
colour[2]=math.min(math.ceil(math.max(table.unpack(colour.green))/#colour.green),math.min(table.unpack(colour.green))-1)
colour[3]=math.min(math.ceil(math.max(table.unpack(colour.red))/#colour.red),math.min(table.unpack(colour.red))-1)
for idx=1,#colour do
if colour[idx]<0 then
colour[idx]=0
end
end
colour.blue,colour.green,colour.red=nil,nil,nil
colour[4]=255
return colour
end

local function dimensional_Animator(initial_states,pixels)
if type(initial_states)~="table"or type(initial_states.dimenses)~="table"or #initial_states.dimenses<=0 or type(initial_states.relations)~="table"or #initial_states.relations<=0 or initial_states.animation and((type(initial_states.animation)~="function"and type(initial_states.animation)~="table")or type(initial_states.animators)~="table"or #initial_states.animators<=0)then
error("Improper Parameters Table!")
end
for idx1=1,initial_states.animation and 2 or 1 do
local checked=idx1<2 and initial_states.dimenses or initial_states.animators
for idx2=1,#checked do
if rawequal(debug.getmetatable((type(initial_states.animators)~="function"or idx1<2)and checked[idx2].var or checked[idx2]),arithmetiCalc)then
if rawget(debug.getmetatable((type(initial_states.animators)~="function"or idx1<2)and checked[idx2].var or checked[idx2]),"__mode")then
debug.getmetatable((type(initial_states.animators)~="function"or idx1<2)and checked[idx2].var or checked[idx2]).__mode=nil
end
else
error("Invalid Variable Found!")
end
end
end
initial_states.sizes=initial_states.sizes or{}
initial_states.sizes[1]=initial_states.sizes[1]or((not initial_states.sizes[3]and #initial_states.dimenses>2)and 0.2 or 0.1)
initial_states.sizes[2]=initial_states.sizes[2]or((not initial_states.sizes[3]and #initial_states.dimenses>2)and 0.2 or 0.1)
initial_states.axes=initial_states.axes or{}
if #initial_states.sizes>2 and type(initial_states.sizes[3])=="number"then
initial_states.axes[1]=initial_states.axes[1]or{1,0,0}
initial_states.axes[2]=initial_states.axes[2]or{0,1,0}
initial_states.axes[3]=initial_states.axes[3]or{0,0,1}
elseif #initial_states.dimenses>2 then
initial_states.axes[1]=initial_states.axes[1]or{math.sqrt(2),-math.sqrt(2)}
initial_states.axes[2]=initial_states.axes[2]or{math.sqrt(2),math.sqrt(2)}
initial_states.axes[3]=initial_states.axes[3]or{0,2}
else
initial_states.axes[1]=initial_states.axes[1]or{1,0}
initial_states.axes[2]=initial_states.axes[2]or{0,1}
end
local fully_aligned,alignment=true,{}
for idx1=1,#initial_states.axes do
local zero_count,largest_component,non_zero_position,largest_component_position=0,-1
for idx2=1,#initial_states.axes[idx1]do
if initial_states.axes[idx1][idx2]==0 then
zero_count=1+zero_count
else
if not non_zero_position then
non_zero_position=idx2
end
if math.abs(initial_states.axes[idx1][idx2]/initial_states.sizes[idx2])>largest_component then
largest_component=initial_states.axes[idx1][idx2]/initial_states.sizes[idx2]
largest_component_position=idx2
end
end
end
if 1+zero_count<#initial_states.axes[idx1]then
initial_states.dimenses[idx1][3]=vector_Length(initial_states.axes[idx1])*initial_states.sizes[largest_component_position]/largest_component
if fully_aligned then
fully_aligned=false
end
else
initial_states.dimenses[idx1][3]=initial_states.sizes[non_zero_position]/initial_states.axes[idx1][non_zero_position]
end
if initial_states.dimenses[idx1][1]<initial_states.dimenses[idx1][2]then
initial_states.dimenses[idx1][3]=math.abs(initial_states.dimenses[idx1][3])
elseif initial_states.dimenses[idx1][1]>initial_states.dimenses[idx1][2]then
initial_states.dimenses[idx1][3]=-math.abs(initial_states.dimenses[idx1][3])
else
error("Too Thin for a Dimension!")
end
if type(initial_states.animation)=="table"then
initial_states.animators[idx1][3]=initial_states.dimenses[idx1][3]
if initial_states.animators[idx1][1]<initial_states.animators[idx1][2]then
initial_states.animators[idx1][3]=math.abs(initial_states.animators[idx1][3])
elseif initial_states.animators[idx1][1]>initial_states.animators[idx1][2]then
initial_states.animators[idx1][3]=-math.abs(initial_states.animators[idx1][3])
else
error("Too Thin for a Dimension!")
end
end
if not alignment[non_zero_position]and fully_aligned then
alignment[non_zero_position]=initial_states.axes[idx1][non_zero_position]//math.abs(initial_states.axes[idx1][non_zero_position])*idx1
elseif fully_aligned then
fully_aligned=false
end
end
if fully_aligned and type(initial_states.animation)=="function"then
fully_aligned=false
end
if not fully_aligned then
for idx1=initial_states.animation and 2 or 1,1,-1 do
if idx1<2 and type(initial_states.animation)=="function"then
goto null_offset
end
local trends,vars={},(not initial_states.animation or idx1>1)and initial_states.dimenses or initial_states.animators
for idx2=1,#initial_states.axes do
trends[idx2]={}
for idx3=1,#initial_states.sizes do
trends[idx2][idx3]=vars[idx2][3]//math.abs(vars[idx2][3])*initial_states.axes[idx2][idx3]/math.abs(initial_states.sizes[idx3])
end
end
trends=vector_Addition(trends)
initial_states[idx1<2 and"offsets"or"frame_offsets"]={}
local offsets=idx1<2 and initial_states.offsets or initial_states.frame_offsets
for idx2=1,#initial_states.sizes do
local net_increase={}
for idx3=1,#initial_states.axes do
net_increase[1+#net_increase]=(rawequal(debug.getmetatable(vars[idx3][1]),arithmetiCalc)and vars[idx3][1]:evaluate()or arithmetiCalc.evaluate(vars[idx3][1]))*initial_states.axes[idx3][idx2]
end
net_increase=kahan_Sum(net_increase)
local grid_bias=net_increase%math.abs(initial_states.sizes[idx2])
if grid_bias<0.5*math.abs(initial_states.sizes[idx2])and trends[idx2]>0 then
offsets[idx2]=0.5*math.abs(initial_states.sizes[idx2])
elseif grid_bias>=0.5*math.abs(initial_states.sizes[idx2])and trends[idx2]<0 then
offsets[idx2]=-0.5*math.abs(initial_states.sizes[idx2])
else
offsets[idx2]=0
end
end
::null_offset::
end
end
for idx=1,type(initial_states.animation)=="table"and 2 or 1 do
local cache_parent_new,cache_parent,cache_index,new_relations,relations,index={},{},{},{},idx<2 and initial_states.relations or initial_states.animation,1
while relations[index]do
if type(relations[index][2])=="string"and(rawequal(debug.getmetatable(relations[index][1]),arithmetiCalc)or rawequal(debug.getmetatable(relations[index][3]),arithmetiCalc))then
if relations[index][2]=="=="or relations[index][2]=="~="then
relations[index].dof=relations[index].dof or 1
local llvl=rawequal(debug.getmetatable(relations[index][1]),arithmetiCalc)and #relations[index][1]or{depth=0,height=0,width=0}
local rlvl=rawequal(debug.getmetatable(relations[index][3]),arithmetiCalc)and #relations[index][3]or{depth=0,height=0,width=0}
local new_relation1,new_relation2={},{}
if llvl.depth<rlvl.depth or(llvl.depth==rlvl.depth and llvl.height*llvl.width<rlvl.height*rlvl.width)then
if llvl.depth==0 and rlvl.depth==1 or relations[index][3].evaluate(relations[index][1])==0 then
new_relation1[1]=relations[index].dof+relations[index][1]
new_relation2[1]=relations[index][1]-relations[index].dof
else
new_relation1[1]=relations[index].dof*relations[index][1]
new_relation2[1]=relations[index][1]/relations[index].dof
end
new_relation1[3]=relations[index][3]
new_relation2[3]=relations[index][3]
else
if llvl.depth==1 and rlvl.depth==0 or relations[index][1].evaluate(relations[index][3])==0 then
new_relation1[3]=relations[index].dof+relations[index][3]
new_relation2[3]=relations[index][3]-relations[index].dof
else
new_relation1[3]=relations[index].dof*relations[index][3]
new_relation2[3]=relations[index][3]/relations[index].dof
end
new_relation1[1]=relations[index][1]
new_relation2[1]=relations[index][1]
end
new_relation1[2]="<="
new_relation2[2]=">="
if(relations[index][2]=="=="and(#cache_parent-1)%2==0)or(relations[index][2]=="~="and(#cache_parent-1)%2==1)then
new_relations[1+#new_relations]=new_relation1
new_relations[1+#new_relations]=new_relation2
elseif(relations[index][2]=="=="and(#cache_parent-1)%2==1)or(relations[index][2]=="~="and(#cache_parent-1)%2==0)then
new_relations[1+#new_relations]={}
table.insert(new_relations[#new_relations],new_relation1)
table.insert(new_relations[#new_relations],new_relation2)
end
else
new_relations[1+#new_relations]=relations[index]
end
else
cache_parent_new[1+#cache_parent_new]=new_relations
new_relations[1+#new_relations]={}
new_relations=new_relations[#new_relations]
cache_parent[1+#cache_parent]=relations
relations=relations[index]
cache_index[1+#cache_index]=index
index=0
end
::escape::
index=1+index
if not relations[index] and #cache_parent>0 then
new_relations=cache_parent_new[#cache_parent_new]
cache_parent_new[#cache_parent_new]=nil
relations=cache_parent[#cache_parent]
cache_parent[#cache_parent]=nil
index=cache_index[#cache_index]
cache_index[#cache_index]=nil
goto escape
end
end
if idx<2 then
initial_states.relations=new_relations
else
initial_states.animation=new_relations
end
end
local function relation_Constructor(object,layer1,layer2)
layer1,layer2=layer1 or 1,layer2 or 1
if type(object[layer2])~="table"then
if layer2>=#object then
return object[layer2]
end
if layer1%2==1 then
return object[layer2]or relation_Constructor(object,layer1,1+layer2)
elseif layer1%2==0 then
return object[layer2]and relation_Constructor(object,layer1,1+layer2)
end
elseif type(object[layer2][2])=="string"and(rawequal(debug.getmetatable(object[layer2][1]),arithmetiCalc)or rawequal(debug.getmetatable(object[layer2][3]),arithmetiCalc))then
local expression
if object[layer2][2]=="<"then
expression=object[layer2][1]<object[layer2][3]
elseif object[layer2][2]==">"then
expression=object[layer2][1]>object[layer2][3]
elseif object[layer2][2]=="<="then
expression=object[layer2][1]<=object[layer2][3]
elseif object[layer2][2]==">="then
expression=object[layer2][1]>=object[layer2][3]
end
if layer2>=#object then
return expression
end
if layer1%2==1 then
return expression or relation_Constructor(object,layer1,1+layer2)
elseif layer1%2==0 then
return expression and relation_Constructor(object,layer1,1+layer2)
end
else
if layer2>=#object then
return relation_Constructor(object[layer2],1+layer1)
end
if layer1%2==1 then
return relation_Constructor(object[layer2],1+layer1)or relation_Constructor(object,layer1,1+layer2)
elseif layer1%2==0 then
return relation_Constructor(object[layer2],1+layer1)and relation_Constructor(object,layer1,1+layer2)
end
end
end
initial_states.relation_Constructor=relation_Constructor
local function on_Toggle()
return true
end
local function count_Steps(ctrls)
return function(states,layer)
states[ctrls or"ctrls"][layer]=1+(states[ctrls or"ctrls"][layer]or 0)
return states
end
end
local function reset_Steps(ctrls)
return function(states,layer)
if states[ctrls or"ctrls"][1+layer]then
states[ctrls or"ctrls"][1+layer]=0
elseif not ctrls and states.frame_ctrls then
states.frame_ctrls[1]=0
end
return states
end
end
local function update_Values(special_case)
return function(states,layer,ctrl,yield1,yield2)
if special_case and states.animation then
if type(states.animation)=="function"then
if type(states.pace)=="number"and(type(states.count_to_pace)~="number"or states.count_to_pace//states.pace<(1+states.count_to_pace)//states.pace)then
for idx=1,#states.animators do
states.animators[idx].uptvlu=yield2[idx]
end
end
elseif type(states.animation)=="table"then
states.animators[layer].var.uptvlu=ctrl
end
else
states.dimenses[layer].var.uptvlu=ctrl
end
return states
end
end
local function yield_Frame(states)
if states.frame_results then
states.frame_results=coroutine.yield(states.frame_results)
if states.meta_Hash(states.hashed)~=states.hash then
return true
end
end
return false
end
if initial_states.animation then
initial_states.frame_args={}
end
local params
for idx1=initial_states.animation and 2 or 1,1,-1 do
params=idx1<2 and{}or initial_states.frame_args
local sources=(not initial_states.animation or idx1>1)and initial_states.dimenses or initial_states.animators
for idx2=1,type(initial_states.animation)=="function"and idx1<2 and 1 or #sources do
params[2*idx2-1]=type(initial_states.animation)=="function"and idx1<2 and sources.arg1 or sources[idx2][1]
params[2*idx2]=type(initial_states.animation)=="function"and idx1<2 and sources.arg2 or sources[idx2][2]
if type(initial_states.animation)=="function"and idx1<2 then
params["customgen"..idx2]=initial_states.animation
else
params["step"..idx2]=sources[idx2][3]
end
if fully_aligned then
params["nuptconds"..idx2]=on_Toggle
params["nuptdoinstd"..idx2]=count_Steps(idx1>1 and"frame_ctrls"or false)
params["awconds"..idx2]=on_Toggle
params["awdo"..idx2]=reset_Steps(idx1>1 and"frame_ctrls"or false)
end
params["mpconds"..idx2]=on_Toggle
params["mpdo"..idx2]=update_Values(idx1<2 and true or false)
end
end
local function meta_Processor(always_noyield)
return function(states,layer,ctrl,yield1)
local elementary_evaluations
if type(states.animation)~="function"or always_noyield then
elementary_evaluations={}
for idx=1,#((not states.animation or always_noyield)and states.relations or states.animation)do
elementary_evaluations[idx]=states.relation_Constructor(((not states.animation or always_noyield)and states.relations or states.animation)[idx],2)
end
end
if(not always_noyield and type(states.animation)=="function")or states.relation_Constructor(elementary_evaluations)then
if not always_noyield and states.animation and type(states.pace)=="number"then
states.count_to_pace=1+(states.count_to_pace or 0)
end
local pixel_colour={blue={},green={},red={}}
for idx=1,not always_noyield and type(states.animation)=="function"and 0 or #elementary_evaluations do
if elementary_evaluations[idx]then
pixel_colour.blue[1+#pixel_colour.blue]=(states.colours[idx]or{})[1]or math.random(0,255)
pixel_colour.green[1+#pixel_colour.green]=(states.colours[idx]or{})[2]or math.random(0,255)
pixel_colour.red[1+#pixel_colour.red]=(states.colours[idx]or{})[3]or math.random(0,255)
end
end
if #pixel_colour.blue>1 and #pixel_colour.green>1 and #pixel_colour.red>1 then
pixel_colour=states.colour_Blend(pixel_colour)
elseif #pixel_colour.blue==0 and #pixel_colour.green==0 and #pixel_colour.red==0 then
pixel_colour={table.unpack(states.colours[1])}
pixel_colour[4]=255
else
pixel_colour={pixel_colour.blue[1],pixel_colour.green[1],pixel_colour.red[1],255}
end
if not states.alignment then
for idx1=states.animation and 2 or 1,1,-1 do
if idx1<2 and type(states.animation)=="function"then
goto null_offset
end
local trends,vars={},(not states.animation or idx1>1)and states.dimenses or states.animators
for idx2=1,#states.axes do
trends[idx2]={}
for idx3=1,#states.sizes do
trends[idx2][idx3]=vars[idx2][3]//math.abs(vars[idx2][3])*states.axes[idx2][idx3]/math.abs(states.sizes[idx3])
end
end
trends=vector_Addition(trends)
states[idx1<2 and"offsets"or"frame_offsets"]={}
local offsets=idx1<2 and states.offsets or states.frame_offsets
for idx2=1,#states.sizes do
local net_increase={}
for idx3=1,#states.axes do
net_increase[1+#net_increase]=(rawequal(debug.getmetatable(vars[idx3][1]),arithmetiCalc)and vars[idx3][1]:evaluate()or arithmetiCalc.evaluate(vars[idx3][1]))*states.axes[idx3][idx2]
end
net_increase=kahan_Sum(net_increase)
local grid_bias=net_increase%math.abs(states.sizes[idx2])
if grid_bias<0.5*math.abs(states.sizes[idx2])and trends[idx2]>0 then
offsets[idx2]=0.5*math.abs(states.sizes[idx2])
elseif grid_bias>=0.5*math.abs(states.sizes[idx2])and trends[idx2]<0 then
offsets[idx2]=-0.5*math.abs(states.sizes[idx2])
else
offsets[idx2]=0
end
end
::null_offset::
end
end
local cache_route,control_table,argument_table,result_table={}
if states.animation then
if type(states.animation)=="function"then
control_table=not always_noyield and yield1 or states.frame_ctrls
elseif type(states.animation)=="table"then
control_table=not always_noyield and states.ctrls or states.frame_ctrls
argument_table=not always_noyield and states.args or states.frame_args
end
result_table=not always_noyield and states.results or states.frame_results
else
control_table=states.ctrls
argument_table=states.args
result_table=states.results
end
for idx1=#(type(states.alignment)=="table"and states.alignment or states.sizes),1,-1 do
if type(states.alignment)=="table"then
cache_route[1+#cache_route]=math.tointeger(argument_table["step"..math.abs(states.alignment[idx1])]//math.abs(argument_table["step"..math.abs(states.alignment[idx1])])*states.alignment[idx1]//math.abs(states.alignment[idx1])*control_table[math.abs(states.alignment[idx1])])
else
cache_route[1+#cache_route]={}
for idx2=1,#states.axes do
table.insert(cache_route[#cache_route],control_table[idx2]*states.axes[idx2][idx1])
end
local offsets
if not states.animation or not always_noyield then
offsets=states.offsets or{}
else
offsets=states.frame_offsets
end
cache_route[#cache_route]=math.tointeger(((offsets[idx1]or 0)+kahan_Sum(cache_route[#cache_route]))//math.abs(states.sizes[idx1]))
end
result_table.definition=result_table.definition or{}
result_table.definition[2*idx1-1]=not result_table.definition[2*idx1-1]and cache_route[#cache_route]or(cache_route[#cache_route]<result_table.definition[2*idx1-1]and cache_route[#cache_route]or result_table.definition[2*idx1-1])
result_table.definition[2*idx1]=not result_table.definition[2*idx1]and cache_route[#cache_route]or(cache_route[#cache_route]>result_table.definition[2*idx1]and cache_route[#cache_route]or result_table.definition[2*idx1])
if #cache_route==1 then
result_table[cache_route[1]]=result_table[cache_route[1]]or{}
elseif #cache_route==2 then
if not result_table[cache_route[1]][cache_route[2]]then
result_table[cache_route[1]][cache_route[2]]=idx1>1 and{}or pixel_colour
elseif idx1<=1 then
result_table[cache_route[1]][cache_route[2]]=states.override and pixel_colour or states.colour_Blend{blue={result_table[cache_route[1]][cache_route[2]][1],pixel_colour[1]},green={result_table[cache_route[1]][cache_route[2]][2],pixel_colour[2]},red={result_table[cache_route[1]][cache_route[2]][3],pixel_colour[3]}}
end
elseif #cache_route==3 then
result_table[cache_route[1]][cache_route[2]][cache_route[3]]=(not result_table[cache_route[1]][cache_route[2]][cache_route[3]]or states.override)and pixel_colour or states.colour_Blend{blue={result_table[cache_route[1]][cache_route[2]][cache_route[3]][1],pixel_colour[1]},green={result_table[cache_route[1]][cache_route[2]][cache_route[3]][2],pixel_colour[2]},red={result_table[cache_route[1]][cache_route[2]][cache_route[3]][3],pixel_colour[3]}}
end
end
if not always_noyield and states.animation and states.trail and(type(states.pace)~="number"or(states.count_to_pace-1)//states.pace<states.count_to_pace//states.pace)then
states.frame_results=coroutine.yield(control_table)
states.frame_results=states.frame_results or replicate(states.results)
end
if always_noyield or type(states.pace)~="number"or(states.count_to_pace-1)//states.pace<states.count_to_pace//states.pace then
return false
end
end
if not always_noyield then
return true
end
end
end
if initial_states.animation then
initial_states.frame_args[1+#initial_states.frame_args]=meta_Processor(true)
if type(initial_states.animation)=="function"then
params["nuptconds"..1]=on_Toggle
end
params["ndlvconds"..(type(initial_states.animation)=="function"and 1 or #initial_states.axes)]=meta_Processor(false)
params["customdlv"..(type(initial_states.animation)=="function"and 1 or #initial_states.axes)]=true_Iterator(nil,nil,nil,type(initial_states.animation)=="function"and 1 or #initial_states.axes,"frame_ctrls",nil,nil,"frame_args","frame_results")
for idx=1,#initial_states.axes do
initial_states.frame_args["customdlv"..idx]=params["customdlv"..(type(initial_states.animation)=="function"and 1 or #initial_states.axes)]
end
params["awrconds"..(type(initial_states.animation)=="function"and 1 or #initial_states.axes)]=yield_Frame
params[1+#params]=false
params[1+#params]=false
params[1+#params]=function()end
else
params[1+#params]=meta_Processor(true)
end
if fully_aligned then
initial_states.alignment=alignment
end
initial_states.colours={}
initial_states.colours[1]=initial_states.colours[1]or{255,0,255}
initial_states.colours[2]=initial_states.colours[2]or{79,135,255}
initial_states.colours[3]=initial_states.colours[3]or{0,255,0}
initial_states.colours[4]=initial_states.colours[4]or{255,0,0}
initial_states.colours[5]=initial_states.colours[5]or{0,255,255}
initial_states.colours[6]=initial_states.colours[6]or{0,0,255}
initial_states.colour_Blend=colour_Blend
initial_states.meta_Hash=require(module_name).meta_Hash
initial_states.hashed={sizes=initial_states.sizes,axes=initial_states.axes}
initial_states.hash=initial_states.meta_Hash(initial_states.hashed)
pixels=pixels or{}
pixels.definition=pixels.definition or{}
local _,_,_,cache_ctrl=true_Iterator(params,initial_states,pixels)
return pixels,cache_ctrl
end

local function plot_Pixels(pixels,directory,definition)
definition=definition or directory
if type(pixels)~="table"then
error("Expecting at least a Table of Pixels!")
end
if pixels.definition then
pixels={{pixels},definition=pixels.definition}
else
pixels.definition=pixels.definition or{}
for idx1=1,#pixels do
for idx2=1,#pixels[idx1]do
local data=load("return "..pixels[idx1][idx2])()
if type(data)~="table"then
data={definition={0,0,0,0}}
elseif type(data.definition)~="table"then
data.definition={0,0,0,0}
end
for idx3=1,3 do
if type(data.definition[2*idx3-1])~="number"or type(data.definition[2*idx3])~="number"then
if idx3<3 or(data.definition[2*idx3-1]or data.definition[2*idx3])then
error("Invalid Definition!")
end
end
pixels.definition[2*idx3-1]=data.definition[2*idx3-1]and(not pixels.definition[2*idx3-1]and data.definition[2*idx3-1]or(data.definition[2*idx3-1]<pixels.definition[2*idx3-1]and data.definition[2*idx3-1]or pixels.definition[2*idx3-1]))
pixels.definition[2*idx3]=data.definition[2*idx3]and(not pixels.definition[2*idx3]and data.definition[2*idx3]or(data.definition[2*idx3]>pixels.definition[2*idx3]and data.definition[2*idx3]or pixels.definition[2*idx3]))
end
pixels[idx1][idx2]=data
end
end
end
if type(definition)=="table"and(#definition==4 or #definition==6)then
definition=true_Iterator{definition,function(states)return math.floor(table.unpack(states.yields1))end}
pixels.definition=definition
end
if #pixels.definition==6 then
elseif #pixels.definition==4 then
local handle=io.open(type(directory)~="string"and(os.getenv("ANDROID_ROOT")=="/system"and"/sdcard/Download/Composed bitmap.bmp"or"D:\\Composed bitmap.bmp")or directory,"wb")
handle:write(string.pack("<c2I4I2I2I4","BM",54+4*(1+pixels.definition[2]-pixels.definition[1])*(1+pixels.definition[4]-pixels.definition[3]),0,0,54))
handle:write(string.pack("<I4I4I4I2I2I4I4I4I4I4I4",40,1+pixels.definition[2]-pixels.definition[1],1+pixels.definition[4]-pixels.definition[3],1,32,0,0,1+pixels.definition[4]-pixels.definition[3],1+pixels.definition[2]-pixels.definition[1],0,0))
for idx1=pixels.definition[3],pixels.definition[4]do
for idx2=pixels.definition[1],pixels.definition[2]do
local pixel_colour,cache_route1,cache_route2={blue={},green={},red={}}
for idx3=1,#pixels do
for idx4=1,#pixels[idx3]do
if type(pixels[idx3][idx4][idx1])=="table"and type(pixels[idx3][idx4][idx1][idx2])=="table"then
cache_route1=idx3
cache_route2=idx4
pixel_colour.blue[1+#pixel_colour.blue]=pixels[idx3][idx4][idx1][idx2][1]
pixel_colour.green[1+#pixel_colour.green]=pixels[idx3][idx4][idx1][idx2][2]
pixel_colour.red[1+#pixel_colour.red]=pixels[idx3][idx4][idx1][idx2][3]
end
end
end
if #pixel_colour.blue>1 or #pixel_colour.green>1 or #pixel_colour.red>1 then
pixel_colour=colour_Blend(pixel_colour)
handle:write(string.char(table.unpack(pixel_colour)))
elseif #pixel_colour.blue==0 and #pixel_colour.green==0 and #pixel_colour.red==0 then
handle:write(string.char(255,255,255,127))
else
handle:write(string.char(table.unpack(pixels[cache_route1][cache_route2][idx1][idx2])))
end
end
end
handle:close()
else
local collect={}
for idx=1,6 do
if not pixels.definition[idx]then
collect[1+#collect]=(idx%2==1 and"lower"or"upper").." boundary of dimension #"
collect[1+#collect]=math.ceil(idx/2)
end
end
warn("Nothing has been done because ",table.concat(collect," and ")," were found missing!")
end
end


local function directory_Contrast(directory1,directory2,dof,rows,sieve,nc,xy,namecontent)
dof=dof or 6
rows=rows or 6
sieve=sieve or 6
local function pattern_MisAlign(captures,thresh,sieve,cap)
local outcomes,loop,key,misalignment = {}
repeat
loop = 0
repeat
if not key then
key = next(captures)
loop = 1+loop
end
if key == thresh and captures[1+key] and key-captures[key] == 1+key-captures[1+key]then
break
end
key = next(captures,key)
until loop > 3
if loop <= 3 then
local stop = key
while captures[1+stop] and stop-captures[stop] == 1+stop-captures[1+stop]do
stop = 1+stop
end
misalignment = stop-captures[stop]
if stop-key >= sieve then
outcomes[key]={stop,misalignment}
end
thresh = stop
else
thresh = 1+thresh
end
until thresh >= cap
return outcomes
end
local directory_handle1,directory_path1,directory_location1=require(module_name).directory_Match(directory1)
local directory_handle2,directory_path2,directory_location2,sum1,sum2,compare1,compare2
if directory_path1 then
sum1,compare1=require(module_name).directory_CheckSum(directory_location1 and directory1 and directory_path1 or directory_handle1,directory_location1 or directory_path1,nc,xy,namecontent)
else
sum1,compare1=require(module_name).directory_CheckSum(directory_handle1[3]and directory1 and directory_handle1[2]or directory_handle1[1],directory_handle1[3]or directory_handle1[2],nc,xy,namecontent)
if directory2 then
for idx=2,#directory_handle1,3 do
if directory_handle1[idx]:find(directory2)==1 then
directory_handle2,directory_path2,directory_location2=directory_handle1[idx-1],directory_handle1[idx],directory_handle1[1+idx]
break
end
end
else
directory_handle2,directory_path2,directory_location2=directory_handle1[4],directory_handle1[5],directory_handle1[6]
end
end
if not directory_handle2 and not directory_path2 then
directory_handle2,directory_path2,directory_location2=require(module_name).directory_Match(directory2)
end
if directory_path2 then
sum2,compare2=require(module_name).directory_CheckSum(directory_location2 and directory2 and directory_path2 or directory_handle2,directory_location2 or directory_path2,nc,xy,namecontent)
else
sum2,compare2=require(module_name).directory_CheckSum(directory_handle2[3]and directory2 and directory_handle2[2]or directory_handle2[1],directory_handle2[3]or directory_handle2[2],nc,xy,namecontent)
end
local loop,presence,results,captures,result,identical = 0,0, {}, {}
if sum1 == sum2 then
print("No difference found!")
else
for idx,k2,v2 in table_Player(compare2,{key_word=false,stateless=true})do
if compare1[k2] == nil then
result = k2.." in "..compare2.root_path.." unfound in "..compare1.root_path
print(result)
table.insert(results,result)
end
end
for idx1,k1,v1 in table_Player(compare1,{key_word=false,stateless=true})do
if compare2[k1] == nil then
result = k1.." in "..compare1.root_path.." unfound in "..compare2.root_path
print(result)
table.insert(results,result)
elseif compare2[k1] ~= v1 then
if type(compare2[k1]) ~= type(v1)then
if type(v1) == "number"then
result = k1.." in "..compare1.root_path.." is a directory!"
print(result)
table.insert(results,result)
elseif type(compare2[k1]) == "number"then
result = k1.." in "..compare2.root_path.." is a directory!"
print(result)
table.insert(results,result)
end
end
end
for idx2,k2,v2 in table_Player(compare2,{key_word=false,stateless=true})do
if type(v1) == type(v2) and type(v1) == "table"then
if v1.contentsum == v2.contentsum then
if k1 ~= k2 then
result = "Oddly enough, "..k1.." in "..compare1.root_path.." and "..k2.." in "..compare2.root_path.." are in fact identical!"
print(result)
table.insert(results,result)
end
elseif math.abs(#v1-#v2) <= dof then
for idx1,vlu1 in table_Player(v1,{stateless=true})do
loop,identical = 1+loop,0
for idx2,vlu2 in table_Player(v2,{stateless=true})do
if vlu1 == vlu2 then
identical = 1+identical
if idx1 ~= idx2 then
captures[idx1] = idx2
end
end
end
if identical < 1 then
result = "No match found for line "..idx1.." from "..k1.." of "..compare1.root_path.." in "..k2.." of "..compare2.root_path.."!"
print(result)
table.insert(results,result)
end
presence = identical+presence
if loop > rows and 4*presence <= loop then
break
end
end
for k,v in next,pattern_MisAlign(captures,1,sieve,#v1)do
result = "Lines from "..k.." to "..v[1].." in "..k1.." of "..compare1.root_path.." and lines from "..k-v[2].." to "..v[1]-v[2].." in "..k2.." of "..compare2.root_path.." have been misaligned!"
print(result)
table.insert(results,result)
end
loop,presence,captures = 0,0, {}
for idx2,vlu2 in table_Player(v2,{stateless=true})do
loop,identical = 1+loop,0
for idx1,vlu1 in table_Player(v1,{stateless=true})do
if vlu1 == vlu2 then
identical = 1+identical
if idx1 ~= idx2 then
captures[idx2] = idx1
end
end
end
if identical < 1 then
result = "No match found for line "..idx2.." from "..k2.." of "..compare2.root_path.." in "..k1.." of "..compare1.root_path.."!"
print(result)
table.insert(results,result)
end
presence = identical+presence
if loop > rows and 4*presence <= loop then
break
end
end
for k,v in next,pattern_MisAlign(captures,1,sieve,#v2)do
result = "Lines from "..k.." to "..v[1].." in "..k2.." of "..compare1.root_path.." and lines from "..k-v[2].." to "..v[1]-v[2].." in "..k1.." of "..compare2.root_path.." have been misaligned!"
print(result)
table.insert(results,result)
end
end
end
end
end
end
return results
end

local consolidate_File={}

consolidate_File.recycle_redundant={__mode="kv"}

function consolidate_File:remove(rows,dispose,dest)
do
if self[debug.getmetatable(self)]~="excel"and self[debug.getmetatable(self)]=="text"then
warn("Excel Function Not Applicable to Plain ",self[debug.getmetatable(self)]," Data!")
goto not_applicable
end
dispose,dest=dest and dispose or nil,dest or dispose
for idx=1,2 do
rows[idx]=rows[idx]or rows[3-idx]
rows[idx]=1+(rows[idx]-1)%#self
end
if rows[1]>rows[2]then
rows[1],rows[2]=rows[2],rows[1]
end
if not rawequal(dest,self)then
dest=table.move(self,1,rows[1]-1,1,dest)
end
dest=table.move(self,1+rows[2],#self,rows[1],dest)
if rawequal(dest,self)then
for idx=rows[1],rows[2]do
table.remove(dest)
end
end
dest[debug.getmetatable(self)]=dest[debug.getmetatable(self)]or self[debug.getmetatable(self)]
if not rawequal(dest,self)then
if not rawequal(debug.getmetatable(dest),debug.getmetatable(self))then
debug.setmetatable(dest,debug.getmetatable(self))
end
if dispose then
debug.setmetatable(self,debug.getmetatable(self).recycle_redundant)
end
end
return dest
end
::not_applicable::
end

function consolidate_File:replace(rows,dispose,dest)
do
if self[debug.getmetatable(self)]~="excel"and self[debug.getmetatable(self)]=="text"then
warn("Excel Function Not Applicable to Plain ",self[debug.getmetatable(self)]," Data!")
goto not_applicable
end
dispose,dest=dest and dispose or nil,dest or dispose or self
for idx=2,3 do
rows[idx]=rows[idx]or rows[5-idx]
rows[idx]=1+(rows[idx]-1)%#self
end
if rows[2]>rows[3]then
rows[2],rows[3]=rows[3],rows[2]
end
local cache_with=table.move(self,rows[2],rows[3],1,{})
if not rawequal(dest,self)then
dest=table.move(self,1,rows[2]-1,1,dest)
end
dest=table.move(self,1+rows[3],#self,rows[2],dest)
if rawequal(dest,self)then
for idx=rows[2],rows[3]do
table.remove(dest)
end
end
if rows[1]>1+#dest then
for idx=1+#dest,rows[1]-1 do
dest[idx]={}
end
end
dest=table.move(cache_with,1,#cache_with,rows[1],dest)
dest[debug.getmetatable(self)]=dest[debug.getmetatable(self)]or self[debug.getmetatable(self)]
if not rawequal(dest,self)then
if not rawequal(debug.getmetatable(dest),debug.getmetatable(self))then
debug.setmetatable(dest,debug.getmetatable(self))
end
if dispose then
debug.setmetatable(self,debug.getmetatable(self).recycle_redundant)
end
end
return dest
end
::not_applicable::
end

function consolidate_File:rotate(valve,dispose,dest)
do
if self[debug.getmetatable(self)]~="excel"and self[debug.getmetatable(self)]=="text"then
warn("Excel Function Not Applicable to Plain ",self[debug.getmetatable(self)]," Data!")
goto not_applicable
end
dispose,dest=dest and dispose or nil,dest or dispose
valve[2]=valve[2]or valve[3]-1
valve[3]=valve[3]or 1+valve[2]
for idx=2,3 do
valve[idx]=1+(valve[idx]-1)%#self
end
valve[1]=(valve[3]-valve[2])//math.abs(valve[3]-valve[2])*(math.abs(valve[1])%(1+math.max(valve[2],valve[3])-math.min(valve[2],valve[3])))
if not rawequal(dest,self)then
dest=table.move(self,1,valve[2]-1,1,dest)
dest=table.move(self,1+valve[3],#self,1+valve[3],dest)
end
local cache_overflow=table.move(self,valve[1]<0 and valve[3]or 1+valve[3]-valve[1],valve[1]<0 and valve[3]-valve[1]-1 or valve[3],1,{})
dest=table.move(self,valve[1]<0 and valve[3]-valve[1]or valve[2],valve[1]<0 and valve[2]or valve[3]-valve[1],valve[1]<0 and valve[3]or valve[1]+valve[2],dest)
dest=table.move(cache_overflow,1,#cache_overflow,valve[1]<0 and 1+valve[1]+valve[2]or valve[2],dest)
dest[debug.getmetatable(self)]=dest[debug.getmetatable(self)]or self[debug.getmetatable(self)]
if not rawequal(dest,self)then
if not rawequal(debug.getmetatable(dest),debug.getmetatable(self))then
debug.setmetatable(dest,debug.getmetatable(self))
end
if dispose then
debug.setmetatable(self,debug.getmetatable(self).recycle_redundant)
end
end
return dest
end
::not_applicable::
end

function consolidate_File:move(coordinates,dispose,dest)
do
if self[debug.getmetatable(self)]~="excel"and self[debug.getmetatable(self)]=="text"then
warn("Excel Function Not Applicable to Plain ",self[debug.getmetatable(self)]," Data!")
goto not_applicable
end
dispose,dest=dest and dispose or nil,dest or dispose or self
coordinates.vstrt,coordinates.hstrt=coordinates.vstrt or 1,coordinates.hstrt or 1
for idx1=math.min(1+#dest,coordinates.vstrt),coordinates.vstrt+math.max(coordinates.u,coordinates.d)-math.min(coordinates.u,coordinates.d)do
dest[idx1]=dest[idx1]or{}
if idx1<coordinates.vstrt then
goto blank_row
end
for idx2=1+#dest[idx1],coordinates.hstrt-1 do
dest[idx1][idx2]=dest[idx1][idx2]or false
end
if coordinates.l<=coordinates.r then
dest[idx1]=table.move(self[coordinates.u+(coordinates.u<=coordinates.d and idx1-coordinates.vstrt or coordinates.vstrt-idx1)]or{},coordinates.l,coordinates.r,coordinates.hstrt,dest[idx1])
else
for idx2,grid in table_Player(self[coordinates.u+(coordinates.u<=coordinates.d and idx1-coordinates.vstrt or coordinates.vstrt-idx1)]or{},{i=coordinates.l,j=coordinates.r,stateless=true})do
dest[idx1][coordinates.hstrt+coordinates.l-idx2]=grid
end
end
::blank_row::
end
dest[debug.getmetatable(self)]=dest[debug.getmetatable(self)]or self[debug.getmetatable(self)]
if not rawequal(dest,self)then
if not rawequal(debug.getmetatable(dest),debug.getmetatable(self))then
debug.setmetatable(dest,debug.getmetatable(self))
end
if dispose then
debug.setmetatable(self,debug.getmetatable(self).recycle_redundant)
end
end
return dest
end
::not_applicable::
end

function consolidate_File:transpose(dispose,conveyed)
do
if self[debug.getmetatable(self)]~="excel"and self[debug.getmetatable(self)]=="text"then
warn("Excel Function Not Applicable to Plain ",self[debug.getmetatable(self)]," Data!")
goto not_applicable
end
dispose,conveyed=type(dispose)=="boolean"and dispose or false,conveyed or dispose
if type(conveyed)=="table"then
conveyed.stateless=nil
else
conveyed=nil
end
local transposed=debug.setmetatable({[debug.getmetatable(self)]=self[debug.getmetatable(self)],zip(self,conveyed)},debug.getmetatable(self))
if dispose then
debug.setmetatable(self,debug.getmetatable(self).recycle_redundant)
end
return transposed
end
::not_applicable::
end

function consolidate_File:process(processor,dispose,result)
do
dispose,result=result and dispose or nil,result or dispose or self
if self[debug.getmetatable(self)]=="excel"then
local sequential,procedure,insertion
if math.tointeger(tonumber(processor))then
processor=1+(processor-1)%#self
sequential,procedure=processor,require(module_name).meta_Hash
elseif type(processor)=="function"then
procedure=processor
elseif type(processor)=="table"then
if #processor>1 then
sequential={}
for idx1=1,#processor do
if type(processor[idx1])=="table"then
local start,stop
for idx2=1,#processor[idx1]do
if math.tointeger(tonumber(processor[idx1][idx2]))then
if not start then
start=processor[idx1][idx2]
elseif not stop then
stop=processor[idx1][idx2]
break
end
end
end
if start then
if stop then
if start>stop then
start,stop=stop,start
end
else
stop=start
end
end
start=1+(start-1)%#self
stop=1+(stop-1)%#self
for idx2=start,stop do
sequential[idx2]=1+(sequential[idx2]or 0)
end
elseif math.tointeger(tonumber(processor[idx1]))then
local row_num=1+(processor[idx1]-1)%#self
sequential[row_num]=1+(sequential[row_num]or 0)
end
end
local cache_sequential=sequential
sequential={}
for k,v in next,cache_sequential do
if v<=1 then
sequential[1+#sequential]=k
end
end
table.sort(sequential)
else
sequential=1+(tonumber(processor[1])-1)%#self
end
procedure=type(processor.proc)=="function"and processor.proc or require(module_name).meta_Hash
end
if type(sequential)=="table"and #sequential<=0 then
sequential=nil
end
insertion=1+(type(sequential)=="table"and math.max(table.unpack(sequential))or sequential or #self)
local range
if not sequential then
range=math.max(table.unpack((true_Iterator{self,function(states)return #table.unpack(states.yields1)end})))
elseif type(sequential)=="table"then
range=math.max(table.unpack((true_Iterator{sequential,function(states)return #self[table.unpack(states.yields1)]end})))
else
range=#self[sequential]
end
if not rawequal(result,self)then
result=table.move(self,1,insertion-1,1,result)
end
local block={}
for idx1=1,range do
local outcome
if not sequential then
outcome=table.pack(procedure((true_Iterator{self,function(states)return table.unpack(states.yields1)[idx1]or false end})))
elseif type(sequential)=="table"then
outcome=table.pack(procedure((true_Iterator{sequential,function(states)return self[table.unpack(states.yields1)][idx1]or false end})))
else
outcome=table.pack(procedure(self[sequential][idx1]or false))
end
if outcome.n>1 then
for idx2=1,outcome.n do
if not outcome[idx2]then
outcome[idx2]=false
end
end
block[1+#block]=outcome
elseif type(outcome[1])=="table"then
block[1+#block]=outcome[1]
else
block[1+#block]={outcome[1]or false}
end
end
block=table.pack(zip(block))
table.move(self,insertion,#self,block.n+insertion,result)
table.move(block,1,block.n,insertion,result)
elseif self[debug.getmetatable(self)]=="text"then
for token,metadata in next,self do
if math.tointeger(tonumber(token))and token>0 and token<=#self then
result[token]=result[token]or{}
for section_token,section_token_metadata in next,metadata do
if type(section_token_metadata)=="table"then
local new_metadata=replicate(section_token_metadata)
table.insert(new_metadata,1,section_token)
result[token][section_token]=(type(processor)=="function"and processor or require(module_name).meta_Hash)(new_metadata)
else
result[token][section_token]=section_token_metadata
end
end
elseif not rawequal(token,debug.getmetatable(self))then
local new_metadata=replicate(metadata)
table.insert(new_metadata,1,token)
result[token]=(type(processor)=="function"and processor or require(module_name).meta_Hash)(new_metadata)
end
end
else
warn("Invalid Object: ",tostring(self),"!")
goto invalid
end
result[debug.getmetatable(self)]=result[debug.getmetatable(self)]or self[debug.getmetatable(self)]
if not rawequal(result,self)then
if not rawequal(debug.getmetatable(result),debug.getmetatable(self))then
debug.setmetatable(result,debug.getmetatable(self))
end
if dispose then
debug.setmetatable(self,debug.getmetatable(self).recycle_redundant)
end
end
return result
end
::invalid::
end

function consolidate_File:sort(compare_directive,dispose,result)
do
dispose,result=result and dispose or nil,result or dispose or self
if self[debug.getmetatable(self)]=="excel"then
if not rawequal(result,self)then
result=table.move(self,1,#self,1,result)
end
if type(compare_directive)~="function"then
if type(compare_directive)~="table"then
compare_directive={}
for idx=1,#self do
compare_directive[idx]={idx}
end
end
local function comp_func(l,r,layer)
layer=layer or 1
local left,right,direction=tostring(l[compare_directive[layer][1]]),tostring(r[compare_directive[layer][1]]),compare_directive[layer][2]
if type(left)~=type(right)then
if direction then
return type(left)>type(right)
else
return type(left)<type(right)
end
elseif tonumber(left)and tonumber(right)and tonumber(left)~=tonumber(right)then
if direction then
return tonumber(left)>tonumber(right)
else
return tonumber(left)<tonumber(right)
end
elseif type(left)=="string"then
if utf8.len(left)==#left and utf8.len(right)==#right and left~=right then
if direction then
return left>right
else
return left<right
end
elseif utf8.len(left)<utf8.len(right)then
for position,codepoint in utf8.codes(left)do
if codepoint~=utf8.codepoint(right,position,#right)then
if direction then
return codepoint>utf8.codepoint(right,position,#right)
else
return codepoint<utf8.codepoint(right,position,#right)
end
end
end
if direction then
return false
else
return true
end
else
for position,codepoint in utf8.codes(right)do
if codepoint~=utf8.codepoint(left,position,#left)then
if direction then
return codepoint<utf8.codepoint(left,position,#left)
else
return codepoint>utf8.codepoint(left,position,#left)
end
end
end
if utf8.len(left)~=utf8.len(right)then
if direction then
return true
else
return false
end
end
end
end
return layer<#compare_directive and comp_func(l,r,1+layer)or false
end
table.sort(result,comp_func)
else
table.sort(result,compare_directive)
end
elseif self[debug.getmetatable(self)]=="text"then
if rawequal(result,self)then
result=true_Iterator{1,#self,function(states)return false end}
end
local function closure(direction,ref_collection)
direction,ref_collection=type(direction)=="boolean"and direction or false,type(ref_collection)=="table"and ref_collection or(type(direction)=="table"and direction or nil)
local function comp_func(l,r,layer)
layer=layer or 1
local left,right
local types,table_found={}
types[1],types[2]=type(ref_collection[l]),type(ref_collection[r])
for idx=1,#types do
if types[idx]=="table"then
table_found=idx
end
end
if table_found then
if types[1]~=types[2]then
error("If in "..tostring(ref_collection).." value associated with "..({l,r})[table_found].." is a "..types[table_found]..", then that associated with the other (namely "..({l,r})[3-table_found].."), which is a "..types[3-table_found]..", shouldn't have been different!")
elseif #ref_collection[l]~=#ref_collection[r]then
error("Length of table (which is "..#ref_collection[l]..") associated with "..l.." doesn't equal that (which is "..#ref_collection[r]..") associated with the other "..r.."!")
end
end
if table_found then
left=ref_collection[l][layer]
right=ref_collection[r][layer]
else
left=ref_collection[l]
right=ref_collection[r]
end
if type(left)~=type(right)then
if direction then
return type(left)>type(right)
else
return type(left)<type(right)
end
elseif tonumber(left)and tonumber(right)and tonumber(left)~=tonumber(right)then
if direction then
return tonumber(left)>tonumber(right)
else
return tonumber(left)<tonumber(right)
end
elseif type(left)=="string"then
if utf8.len(left)==#left and utf8.len(right)==#right and left~=right then
if direction then
return left>right
else
return left<right
end
elseif utf8.len(left)<utf8.len(right)then
for position,codepoint in utf8.codes(left)do
if codepoint~=utf8.codepoint(right,position,#right)then
if direction then
return codepoint>utf8.codepoint(right,position,#right)
else
return codepoint<utf8.codepoint(right,position,#right)
end
end
end
if direction then
return false
else
return true
end
else
for position,codepoint in utf8.codes(right)do
if codepoint~=utf8.codepoint(left,position,#left)then
if direction then
return codepoint<utf8.codepoint(left,position,#left)
else
return codepoint>utf8.codepoint(left,position,#left)
end
end
end
if utf8.len(left)~=utf8.len(right)then
if direction then
return true
else
return false
end
end
end
elseif table_found and layer<#ref_collection[l]then
return comp_func(l,r,1+layer)
elseif tonumber(l)and tonumber(r)and tonumber(l)~=tonumber(r)then
if direction then
return tonumber(l)>tonumber(r)
else
return tonumber(l)<tonumber(r)
end
elseif utf8.len(l)==#l and utf8.len(r)==#r and l~=r then
if direction then
return l>r
else
return l<r
end
elseif utf8.len(l)<utf8.len(r)then
for position,codepoint in utf8.codes(l)do
if codepoint~=utf8.codepoint(r,position,#r)then
if direction then
return codepoint>utf8.codepoint(r,position,#r)
else
return codepoint<utf8.codepoint(r,position,#r)
end
end
end
if direction then
return false
else
return true
end
else
for position,codepoint in utf8.codes(r)do
if codepoint~=utf8.codepoint(l,position,#l)then
if direction then
return codepoint<utf8.codepoint(l,position,#l)
else
return codepoint>utf8.codepoint(l,position,#l)
end
end
end
if utf8.len(l)~=utf8.len(r)then
if direction then
return true
else
return false
end
end
end
return false
end
return comp_func
end
for token,metadata in next,self do
if math.tointeger(tonumber(token))and token>0 and token<=#self then
result[token]=result[token]or{}
for section_token,section_token_metadata in next,metadata do
if section_token~="header"then
table.insert(result[token],section_token)
else
result[token][section_token]=section_token_metadata
end
end
table.sort(result[token],(type(compare_directive)=="function"and compare_directive or closure)(type(compare_directive)=="function"and self[token]or compare_directive,type(compare_directive)~="function"and self[token]or nil))
elseif not rawequal(token,debug.getmetatable(self))then
result[1+#result]=token
end
end
local cache_sections=table.move(result,1,#self,1,{})
table.move(result,1+#self,#result,1)
table.move({},1,#self,1+#result-#self,result)
table.sort(result,(type(compare_directive)=="function"and compare_directive or closure)(type(compare_directive)=="function"and self or compare_directive,type(compare_directive)~="function"and self or nil))
table.move(result,1,#result,1+#self)
table.move(cache_sections,1,#self,1,result)
result.stats=self
dispose=false
else
warn("Invalid Object: ",tostring(self),"!")
goto invalid
end
result[debug.getmetatable(self)]=result[debug.getmetatable(self)]or self[debug.getmetatable(self)]
if not rawequal(result,self)then
if not rawequal(debug.getmetatable(result),debug.getmetatable(self))then
debug.setmetatable(result,debug.getmetatable(self))
end
if dispose then
debug.setmetatable(self,debug.getmetatable(self).recycle_redundant)
elseif dispose==false then
debug.setmetatable(self,nil)
end
end
return result
end
::invalid::
end

function consolidate_File:auxiliary_Import_Facility(directory,parse)
do
local skip
if os.getenv("ANDROID_ROOT")=="/system"then
skip=io.popen('find "'..directory..'" -type d 2>/dev/null'):read()
elseif os.getenv("OS")=="Windows_NT"then
skip=os.execute('dir "'..directory..'" /A:D /S /B')
end
if skip then
goto nothing_done
end
local data,handle={},io.open(directory,"r")
if parse then
parse=type(parse)=="table"and parse or{}
parse[1]=#parse>0 and parse[1]or"%s"
local sections={}
for idx=1,#parse do
if type(parse[idx])=="table"then
sections[1+#sections]=idx
local header
if #sections>1 then
header=parse[sections[#sections-1]].header
else
header=parse.header
end
if not header then
warn("Onset Undefined of Section #",(1+#sections),"!")
goto nothing_done
end
end
end
local line_number,cache_parse,current_section,split_buffer=0,parse,-1
while current_section<#sections do
current_section=1+current_section
if current_section>0 then
parse=cache_parse[sections[current_section]]
end
local threshold
for idx=1,#parse do
if current_section>0 or not binary_Search(sections,idx)then
if type(parse[idx])~="string"then
warn(tostring(parse[idx])," at index #",idx," in parse table is no string!")
goto nothing_done
end
local _,count_linebreak=parse[idx]:gsub("\n","")
if count_linebreak>(threshold or 0)then
threshold=count_linebreak
end
end
end
local _,count_linebreak_within_header
if type(parse.header)=="string"then
_,count_linebreak_within_header=parse.header:gsub("\n","")
if count_linebreak_within_header>(threshold or 0)then
threshold=count_linebreak_within_header
end
end
local buffer,accumulate,streamline
repeat
local file_line=handle:read()
if not buffer then
buffer=split_buffer or""
end
if file_line then
line_number=1+line_number
buffer=buffer..(line_number>1 and"\n"or"")..file_line
if threshold then
accumulate=accumulate and 1+accumulate or select(2,buffer:gsub("\n",""))
if accumulate<threshold then
goto not_yet
end
end
streamline=nil
end
do
local next_section
if current_section<#sections then
if type(parse.header)=="number"and line_number>=parse.header then
split_buffer=nil
next_section=true
elseif type(parse.header)=="string"and buffer:match(parse.header)then
local header
buffer,header,split_buffer=buffer:match("^(.-)("..parse.header..")(.-)$")
data[1+current_section]={header=header}
next_section=true
end
end
repeat
streamline=1+(streamline or 0)
local token,length,separator,separator_length,progress
for idx=1,#parse do
if type(parse[idx])=="string"then
local found,candidate_progress,candidate,candidate_separator=buffer:find("^(.-)("..parse[idx]..")")
if found then
if not length or #candidate<length then
token,length=candidate,#candidate
separator,separator_length=candidate_separator,#candidate_separator
progress=candidate_progress
elseif #candidate==length and #candidate_separator>separator_length then
separator,separator_length=candidate_separator,#candidate_separator
progress=candidate_progress
end
end
end
end
if progress then
if token~=""then
local affix
if not parse.include or separator=="“"or separator=="”"or separator=="‘"or separator=="’"then
affix=""
else
affix=separator
end
if current_section>0 then
data[current_section][token..affix]=data[current_section][token..affix]or{}
data[current_section][token..affix][1]=1+(data[current_section][token..affix][1]or 0)
data[current_section][token..affix][2]=parse.last and line_number or data[current_section][token..affix][2]or line_number
data[current_section][token..affix][3]=streamline
else
data[token..affix]=data[token..affix]or{}
data[token..affix][1]=1+(data[token..affix][1]or 0)
data[token..affix][2]=parse.last and line_number or data[token..affix][2]or line_number
data[token..affix][3]=streamline
end
end
buffer=buffer:sub(1+progress)
end
if file_line and not next_section and threshold and separator and separator:match("\n")then
accumulate=nil
break
end
until not token and not length and not separator and not separator_length and not progress
if not file_line or next_section then
if buffer~=""then
streamline=1+(streamline or 0)
if current_section>0 then
data[current_section][buffer]=data[current_section][buffer]or{}
data[current_section][buffer][1]=1+(data[current_section][buffer][1]or 0)
data[current_section][buffer][2]=parse.last and line_number or data[current_section][buffer][2]or line_number
data[current_section][buffer][3]=streamline
else
data[buffer]=data[buffer]or{}
data[buffer][1]=1+(data[buffer][1]or 0)
data[buffer][2]=parse.last and line_number or data[buffer][2]or line_number
data[buffer][3]=streamline
end
end
if next_section then
break
end
end
end
::not_yet::
until not file_line
end
data[debug.getmetatable(self)or self]="text"
elseif directory:match("%.([^%.]+)$")=="ar"then
local max_width=-1
for file_line in handle:lines()do
local width=1
for _ in file_line:gmatch("\t")do
width=1+width
end
max_width=width>max_width and width or max_width
end
handle:seek("set")
local counter,buffer=0
for file_line in handle:lines()do
if not buffer and counter==0 then
data[1+#data]={}
end
for grid in file_line:gmatch("([^\t]-)\t")do
if counter<max_width then
if buffer then
if 1+counter<max_width then
counter=1+counter
buffer=buffer.."\n"..grid
end
table.insert(data[#data],(buffer:match("\n")and'"'or"")..buffer..(buffer:match("\n")and'"'or""))
buffer=nil
if 1+counter==max_width then
counter=1
data[1+#data]={}
table.insert(data[#data],grid)
end
else
counter=1+counter
table.insert(data[#data],grid)
end
else
warn("Conversion Aborted: File - ",directory," - Is a Mess!")
debug.setmetatable(data,debug.getmetatable(self).recycle_redundant)
goto nothing_done
end
end
local tail=file_line:match("\t?([^\t]-)$")
if counter<max_width then
if buffer then
buffer=buffer.."\n"..tail
else
buffer=tail
end
else
warn("Conversion Aborted: File - ",directory," - Is a Mess!")
debug.setmetatable(data,debug.getmetatable(self).recycle_redundant)
goto nothing_done
end
end
table.insert(data[#data],(buffer:match("\n")and'"'or"")..buffer..(buffer:match("\n")and'"'or ""))
data[debug.getmetatable(self)or self]="excel"
else
local buffer
for file_line in handle:lines()do
if not buffer then
data[1+#data]={}
end
for grid in file_line:gmatch(directory:match("%.([^%.]+)$")=="csv"and"([^,]-),"or"([^\t]-)\t")do
local forward_found,backward_found
for idx=0,9 do
if not forward_found then
forward_found=grid:match('^"'..('""'):rep(idx)..'[^"]+')
end
if not backward_found then
backward_found=grid:match('[^"]+'..('""'):rep(idx)..'"$')
end
if forward_found and backward_found then
break
end
end
if buffer then
buffer=buffer..grid
if backward_found then
table.insert(data[#data],buffer)
buffer=nil
elseif directory:match("%.([^%.]+)$")=="csv"then
buffer=buffer..","
end
else
if forward_found then
if backward_found then
table.insert(data[#data],grid)
else
buffer=grid..","
end
else
table.insert(data[#data],grid)
end
end
end
local tail=file_line:match(directory:match("%.([^%.]+)$")=="csv"and",?([^,]-)$"or"\t?([^\t]-)$")
local forward_found,backward_found
for idx=0,9 do
if not forward_found then
forward_found=tail:match('^"'..('""'):rep(idx)..'[^"]+')
end
if not backward_found then
backward_found=tail:match('[^"]+'..('""'):rep(idx)..'"$')
end
if forward_found and backward_found then
break
end
end
if buffer then
buffer=buffer..tail
if backward_found then
table.insert(data[#data],buffer)
buffer=nil
else
buffer=buffer.."\n"
end
else
if forward_found then
if backward_found then
table.insert(data[#data],tail)
else
buffer=tail.."\n"
end
else
table.insert(data[#data],tail)
end
end
end
data[debug.getmetatable(self)or self]="excel"
end
handle:close()
debug.setmetatable(data,consolidate_File)
return data
end
::nothing_done::
end

local function call_Precursor(self,...)
if rawequal(debug.getmetatable(self),self)then
debug.setmetatable(self,nil)
end
local batch=table.pack(...)
local as_text=type(batch[1])=="table"and true or false
for idx1=as_text and 2 or 1,(batch.n==0 or(batch.n==1 and as_text))and 1+batch.n or batch.n do
if idx1>1 and type(batch[idx1])=="table"then
batch[idx1]={call_Precursor(self,table.unpack(batch[idx1]))}
else
local directory_handle,directory_path,directory_location=require(module_name).directory_Match((batch.n>1 or(batch.n==1 and not as_text))and batch[idx1]or nil)
if directory_path then
if directory_location then
batch[idx1]=self:auxiliary_Import_Facility(directory_path,as_text and batch[1])
else
local folder={}
for subdir in directory_handle:lines()do
folder[1+#folder]=self:auxiliary_Import_Facility(subdir,as_text and batch[1])
end
batch[idx1]=folder
end
else
local collection,file={}
for idx2=1,#directory_handle do
if idx2%3==1 then
if directory_handle[2+idx2]then
file=true
else
collection[1+#collection]={}
for subdir in directory_handle[idx2]:lines()do
table.insert(collection[#collection],self:auxiliary_Import_Facility(subdir,as_text and batch[1]))
end
end
elseif idx2%3==2 and file then
collection[1+#collection]=self:auxiliary_Import_Facility(directory_handle[idx2],as_text and batch[1])
file=false
end
end
batch[idx1]=collection
end
end
end
if as_text then
batch.n=batch.n-1
table.remove(batch,1)
end
return table.unpack(batch,1,batch.n)
end

consolidate_File.__call=call_Precursor

function consolidate_File:export(output)
local handle
if self[debug.getmetatable(self)]=="excel"then
if type(output)~="string"then
warn(tostring(output)," is a ",type(output),"!")
output=false
goto skipped_error
else
local open_error_message
handle,open_error_message=io.open(output,"w")
if not handle then
warn("Error Opening Directory to Write: ",tostring(open_error_message),"!")
output=handle
goto skipped_error
end
end
for idx1=1,#self do
for idx2=1,#self[idx1]do
if not self[idx1][idx2]then
self[idx1][idx2]=""
elseif type(self[idx1][idx2])~="string"then
self[idx1][idx2]=tostring(self[idx1][idx2])
end
end
handle:write(table.concat(self[idx1],output:match("%.([^%.]+)$")=="csv"and","or"\t"),"\n")
end
elseif self[debug.getmetatable(self)]=="text"then
local derived
if type(output)=="table"then
derived=output[1]
else
derived=output
end
if type(derived)~="string"then
warn(tostring(derived)," is a ",type(derived)," instead of a string!")
output=false
goto skipped_error
else
handle,derived=io.open(derived,"w")
if not handle then
warn("Error Opening Directory to Write: ",tostring(derived),"!")
output=handle
goto skipped_error
end
end
derived={}
local merge,merge_similar,conjunction,delimiter=(type(output)=="table"and output or derived)[2],tonumber((type(output)=="table"and output or derived)[3]),(type(output)=="table"and output or derived).conj or"\t",(type(output)=="table"and output or derived).delim or"\n"
for idx1=0,#self.stats do
local section,stats=idx1>0 and self[idx1]or self,idx1>0 and self.stats[idx1]or self.stats
if idx1>0 and section.header then
handle:write((section.header:gsub("^%s*",""):gsub("%s-$",conjunction)))
end
for idx2=idx1>0 and 1 or 1+#self.stats,#section do
local prepend,split,prefix
if merge then
if idx2<=(idx1>0 and 1 or 1+#self.stats)then
prepend=true
end
for idx3=1,#stats[section[idx2]]do
if not prepend and(stats[section[idx2]][idx3]~=stats[section[idx2-1]][idx3])then
prepend=true
end
if not split and(stats[section[idx2]][idx3]~=(stats[section[1+idx2]]or derived)[idx3])then
split=true
end
if math.tointeger(tonumber(merge))and idx3>=merge or(prepend and split)then
break
end
end
if merge_similar then
if not prepend and(table.concat((true_Iterator{1,math.min(merge_similar,utf8.len(section[idx2])),function(states)return section[idx2][table.unpack(states.ctrls)]end}))~=table.concat((true_Iterator{1,math.min(merge_similar,utf8.len(section[idx2-1])),function(states)return section[idx2-1][table.unpack(states.ctrls)]end})))then
prepend=true
end
end
if prepend then
prefix=prefix or{}
for idx3=1,math.tointeger(tonumber(merge))and merge or #stats[section[idx2]]do
prefix[idx3]=tostring(stats[section[idx2]][idx3])
end
end
end
if merge_similar then
if not split and(table.concat((true_Iterator{1,math.min(merge_similar,utf8.len(section[idx2])),function(states)return section[idx2][table.unpack(states.ctrls)]end}))~=table.concat((true_Iterator{1,math.min(merge_similar,utf8.len(section[1+idx2]or"")),function(states)return(section[1+idx2]or derived)[table.unpack(states.ctrls)]or""end})))then
split=true
end
end
handle:write(not prepend and""or(table.concat(prefix,conjunction)..":"..conjunction),section[idx2],idx2>=#section and(idx1>=#self.stats and"\n"or delimiter)or(split and delimiter or conjunction))
end
end
else
warn("Invalid Object: ",tostring(self),"!")
goto invalid
end
handle:close()
::skipped_error::
if not output then
return self
end
::invalid::
end

consolidate_File.__index=consolidate_File

debug.setmetatable(consolidate_File,consolidate_File)


local interface={
version=1.6015625,
renewed=1794196800,
["Pointers in Practice"]="Deeming certain parameters tables or refering to pre-specific upvalues are the only 2 approaches to dynamic, alterable values determined at each function-invoke time.",
replicate=replicate,
zip=zip,
comp_Factory=comp_Factory,
binary_Search=binary_Search,
table_Player=table_Player,
true_Iterator=true_Iterator,
arithmetiCalc=arithmetiCalc,
group_Generator=group_Generator,
permutation_Generator=permutation_Generator,
grouped_Combination_Generator=grouped_Combination_Generator,
partially_Determined_Permutation_Generator=partially_Determined_Permutation_Generator,
uni_Inc_Rand=uni_Inc_Rand,
kahan_Product=kahan_Product,
kahan_Sum=kahan_Sum,
algorithms=algorithms,
vector_Addition=vector_Addition,
vector_Length=vector_Length,
dimensional_Animator=dimensional_Animator,
plot_Pixels=plot_Pixels,
directory_Contrast=directory_Contrast,
consolidate_File=consolidate_File
}


--a few declarations:
do
local status="ready for run";
local digestH=1664157088847350608;
local digestM=-428270633;
local required_name,find_self,where=...
if os.getenv("ANDROID_ROOT")=="/system"then
where=find_self:match("^(.-/)[^/]+$")
elseif os.getenv("OS")=="Windows_NT"then
where=io.popen('cd /D "'..find_self..'\\.." && cd'):read()
if where:match(".$")~="\\"then
where=where.."\\"
end
end
local function keystone(x,y)
if type(x)=="number"then
if math.tointeger(x)and math.tointeger(y)then
return y%6*(interface.renewed-x)
elseif not math.tointeger(x)and math.tointeger(y)then
return math.floor((x*y/13)*1e3)/1e3
elseif math.tointeger(x)and not math.tointeger(y)then
return math.floor((x*y)^(-4/7)*1e6)/1e6
end
elseif type(x)=="string"then
if math.tointeger(y)then
return table.concat(table.pack((("b"):rep(#x)):unpack(x)))//y
elseif not math.tointeger(y)then
return table.concat(table.pack((("b"):rep(#x)):unpack(x)))..y
end
end
end
local dir_mat=[===[local handle,absolute_path,where_in
if os.getenv("ANDROID_ROOT")=="/system"then
local bootstrap
::rematch::
if directory then
if not io.popen("find "..directory.." 2>/dev/null"):read()then
error(tostring(directory)..": No Such File or Directory!",2)
end
elseif directory==nil then
local boot_sector=io.popen("echo ~"):read().."/downloads"
if not io.popen('find "'..boot_sector..'" -type f 2>/dev/null'):read()then
warn("No File Existent as BootStrap! Turning to Search within Current Working Directory: ",io.popen("pwd"):read(),"!")
goto work
end
bootstrap={}
for item in io.popen('find "'..boot_sector..'" -type f 2>/dev/null'):lines()do
bootstrap[item:match("^.-/([^/]+)$")]=true
end
if io.popen("pwd"):read()==boot_sector then
os.execute("rm ./* -rvf")
end
else
goto work
end
for item in(directory and io.popen("find "..directory.." 2>/dev/null|sort")or io.popen("find /sdcard/ -type f 2>/dev/null|sort")):lines()do
local temp,relative_path
if directory then
absolute_path=item
if not io.popen('find "'..item..'" -type d 2>/dev/null'):read()then
temp=item:match("^(.-/)[^/]+$")
elseif item:match(".$")~="/"then
absolute_path=item.."/"
end
else
absolute_path,relative_path=item:match("^(.-/)([^/]+)$")
end
if directory or bootstrap[relative_path]then
if handle then
if type(handle)~="table"then
if directory or item~=handle then
handle={where_in and io.popen('find "'..where_in..'" 2>/dev/null|sort')or io.popen('find "'..handle..'" 2>/dev/null|sort'),handle,where_in,[handle]=not directory and true or nil}
handle[where_in or handle[2]]=handle[1]
if where_in then
where_in=nil
end
end
end
if directory or not handle[item]then
handle[1+#handle]=(temp and handle[temp]or handle[absolute_path])or(temp and io.popen('find "'..temp..'" 2>/dev/null|sort')or io.popen('find "'..absolute_path..'" 2>/dev/null|sort'))
handle[1+#handle]=directory and absolute_path or item
handle[1+#handle]=not directory and absolute_path or temp or false
if not directory then
handle[item]=true
end
handle[temp or absolute_path]=handle[#handle-2]
end
else
handle=directory and absolute_path or item
where_in=not directory and absolute_path or temp or false
end
end
end
::work::
if not handle and not where_in and directory~=io.popen("pwd"):read()then
directory=io.popen("pwd"):read()
goto rematch
elseif type(handle)~="table"then
if not directory then
absolute_path=handle
end
handle=where_in and io.popen('find "'..where_in..'" 2>/dev/null|sort')or io.popen('find "'..handle..'" 2>/dev/null|sort')
elseif not directory then
for idx=2,#handle,3 do
handle[handle[idx]]=nil
end
end
elseif os.getenv("OS")=="Windows_NT"then
local function necessary_func()
local temp
if not os.execute('dir "'..absolute_path..'" /A:D /S /B')then
temp=io.popen('cd /D "'..absolute_path..'\\.." && cd'):read().."\\"
elseif absolute_path:match(".$")~="\\"then
absolute_path=absolute_path.."\\"
end
if handle then
if type(handle)~="table"then
handle={where_in and io.popen('dir "'..where_in..'" /S /B')or io.popen('dir "'..handle..'" /S /B'),handle,where_in}
handle[where_in or handle[2]]=handle[1]
if where_in then
where_in=nil
end
end
handle[1+#handle]=(temp and handle[temp]or handle[absolute_path])or(temp and io.popen('dir "'..temp..'" /S /B')or io.popen('dir "'..absolute_path..'" /S /B'))
handle[1+#handle]=absolute_path
handle[1+#handle]=temp or false
handle[temp or absolute_path]=handle[#handle-2]
else
handle=absolute_path
where_in=temp or false
end
end
::rematch::
if directory then
if not os.execute("dir "..directory.." /S /B")then
error(tostring(directory)..": No Such File or Directory!",2)
end
if os.execute("dir "..directory.." /A:D /S /B")then
local cache_directory=directory
if directory:find('".-"$')==1 then
cache_directory=directory:sub(2,-2)
end
absolute_path=io.popen("dir "..directory.." /A:D /S /B"):read()or cache_directory
if absolute_path:find(cache_directory)==1 then
absolute_path=cache_directory
necessary_func()
end
end
for item in io.popen("dir "..directory.." /S /B"):lines()do
absolute_path=item
necessary_func()
end
elseif directory==nil then
for idx=1,math.huge do
absolute_path=os.getenv("directory"..idx)
if not absolute_path or absolute_path==""then
break
end
if absolute_path:find('".-"$')==1 then
absolute_path=absolute_path:sub(2,-2)
end
necessary_func()
end
end
if not handle and not where_in and directory~=io.popen("cd"):read()then
directory=io.popen("cd"):read()
goto rematch
elseif type(handle)~="table"then
absolute_path=absolute_path or handle
handle=where_in and io.popen('dir "'..where_in..'" /S /B')or io.popen('dir "'..handle..'" /S /B')
end
end
if type(handle)~="table"then
return handle,absolute_path,where_in
end
return handle]===]
local function identifier_Generator()
local serial,prefix=94
return function()
serial=1+serial
if serial==96 and not prefix then
serial=1+serial
end
serial=86+(serial-86)%37
if serial==86 then
local roll=math.random(86,122)
if not prefix and roll<97 then
roll=95
end
prefix=(prefix or"")..(roll<97 and roll~=95 and(roll-85)%10-(roll-85)//10 or string.char(roll))
end
return(prefix or"")..(serial<97 and serial~=95 and(serial-85)%10-(serial-85)//10 or string.char(serial))
end
end
local id_gen=identifier_Generator()
local function serialise(object,option,indent_char,delve_guard,serialised,assembler)
indent_char,delve_guard,serialised,assembler=type(indent_char)=="string"and indent_char or(type(option)=="string"and option or""),math.tointeger(tonumber(delve_guard))or math.tointeger(tonumber(indent_char))or math.tointeger(tonumber(option))or 1,serialised or{},assembler or{}
if type(option)~="boolean"then
option=nil
end
if type(object)=="number"or type(object)=="boolean"or object==nil then
return tostring(object)
elseif type(object)=="table"or(type(object)=="userdata"and tostring(object):find("dual_Capable_Map")==1)then
local depth,traversal,how,who,whence,which,gen_func,k,v=1,{},{}
if option then
who,whence,which={},object,true
else
whence,which={},{}
end
::next_node::
if not option and serialised[object]and delve_guard+serialised[object]<depth then
assembler[1+#assembler]=("%q"):format(tostring(object).." - loophole patch")
depth=depth-1
object=table.remove(traversal)
gen_func=table.remove(how)
k=table.remove(whence)
if which[1+depth]~=nil then
v=which[1+depth]
which[1+depth]=nil
goto key_processed
end
goto value_processed
elseif not serialised[object]then
serialised[object]=option and id_gen()or depth
end
if option and not which then
assembler[1+#assembler]=serialised[object]
object=table.remove(traversal)
if which==false then
which=true
goto key_processed
end
which=true
goto value_processed
end
assembler[1+#assembler]=option and"local "..serialised[object].."=require(module_name).c_UpBinds.dual_Capable_Map{\n"or"{\n"
gen_func=pairs(object)
::next_pair::
k,v=gen_func(object,k)
if k==nil then
if #assembler>1 and assembler[#assembler-1]==","then
table.remove(assembler,#assembler-1)
end
goto end_of_object
end
assembler[1+#assembler]=indent_char:rep(depth)
assembler[1+#assembler]="["
if type(k)=="table"or(type(k)=="userdata"and tostring(k):find("dual_Capable_Map")==1)then
if option then
if not serialised[k]then
traversal[1+#traversal]=k
end
which=false
end
traversal[1+#traversal]=object
object=k
if not option then
depth=1+depth
how[1+#how]=gen_func
whence[1+#whence]=k
k=nil
which[depth]=v
end
goto next_node
else
assembler[1+#assembler]=serialise(k,option,indent_char,delve_guard,serialised,assembler)
end
::key_processed::
assembler[1+#assembler]="]="
if type(v)=="table"or(type(v)=="userdata"and tostring(v):find("dual_Capable_Map")==1)then
if option then
if not serialised[v]then
traversal[1+#traversal]=v
end
which=nil
end
traversal[1+#traversal]=object
object=v
if not option then
depth=1+depth
how[1+#how]=gen_func
whence[1+#whence]=k
k=nil
end
goto next_node
else
assembler[1+#assembler]=serialise(v,option,indent_char,delve_guard,serialised,assembler)
end
::value_processed::
assembler[1+#assembler]=","
assembler[1+#assembler]="\n"
if option and(how[k]or how[v]or rawequal(k,object)or rawequal(v,object))then
local assignment={serialised[object]}
assignment=table.move(assembler,#assembler-5,#assembler-2,2,assignment)
assembler=table.move({},1,7,#assembler-6,assembler)
who[1+#who]=table.concat(assignment)
end
goto next_pair
::end_of_object::
assembler[1+#assembler]=indent_char:rep(depth-1).."}"
if option then
table.insert(who,1,table.concat(assembler))
how[object]=serialised[object]
object=table.remove(traversal,1)
if object then
assembler={}
goto next_node
end
assembler=who
assembler[1+#assembler]="return "..how[whence]
else
depth=depth-1
object=table.remove(traversal)
gen_func=table.remove(how)
k=table.remove(whence)
if depth>0 and object and gen_func then
if which[1+depth]~=nil then
v=which[1+depth]
which[1+depth]=nil
goto key_processed
end
goto value_processed
end
end
else
return("%q"):format(tostring(object))
end
if option then
return table.unpack(assembler)
elseif option==false and indent_char==""then
return(table.concat(assembler):gsub("%s+",""))
end
return table.concat(assembler)
end
local function meta_Hash(object,delve_guard,hashed,depth,sum,nb,xy,imba)
delve_guard,hashed,depth,sum=math.tointeger(tonumber(delve_guard))or 1,type(hashed)=="table"and hashed or(type(delve_guard)=="table"and delve_guard or{}),depth or 1,math.tointeger(tonumber(sum))or 0
nb=nb or function(n,byte)return byte+n*(n+byte-1)end --before Hornor optimisation: n^2-n+n*byte+byte
xy=xy or function(x,y)return x^2+y*(x+y*(x+y-1))end --before Hornor optimisation: y^3-y^2+x*y^2+x*y+x^2
imba=imba or function(ref,content)
local sign,smaller,larger=ref*content==0 and 0 or ref*content//math.abs(ref*content)
if math.abs(ref)<math.abs(content)then
smaller,larger=math.abs(ref),math.abs(content)
else
smaller,larger=math.abs(content),math.abs(ref)
end
if smaller<=1 then
return sign*larger
end
local power=0
while larger>=1e3*smaller^(1+power)do
power=1+power
end
return sign*math.ceil(larger/smaller^power)*(1+(larger-1)%smaller)
end
if object==nil then
return 0+sum
elseif type(object)=="boolean"then
if object==true then
return 691+sum
elseif object==false then
return 593+sum
end
elseif math.type(object)=="integer"then
return object+sum
elseif type(object)=="string"then
local x,y,n=0,1,0
while n<#object do
x,n=1+x,1+n
sum=math.tointeger(nb(math.tointeger(xy(x,y)),object:byte(n)))+sum
if object:byte(n)==10 then
x,y=0,1+y
end
end
return sum
elseif type(object)=="function"and debug.getinfo(object,"S").what~="C"then
return meta_Hash(object:dump(),delve_guard,hashed,1+depth,sum,nb,xy,imba)
elseif io.type(object)=="file"then
local y=0
for file_line in object:lines()do
y=1+y
local x,linesum=0,0
while x<#file_line do
x=1+x
if type(depth)=="string"then
linesum=math.tointeger(nb(x,file_line:byte(x)))+linesum
end
sum=math.tointeger(nb(math.tointeger(xy(x,y)),file_line:byte(x)))+sum
end
if type(depth)=="string"then
hashed[depth][y]=linesum
end
end
object:seek("set")
if type(depth)=="string"then
return y,sum
end
return sum
elseif type(object)=="table"or(type(object)=="userdata"and tostring(object):find("dual_Capable_Map")==1)then
if hashed[object]and delve_guard+hashed[object]<depth then
return meta_Hash(type(object).." - loophole patch",delve_guard,hashed,1+depth,sum,nb,xy,imba)
elseif not hashed[object]then
hashed[object]=depth
end
for k,v in pairs(object)do
sum=math.tointeger(imba(meta_Hash(k,delve_guard,hashed,1+depth,nil,nb,xy,imba),meta_Hash(v,delve_guard,hashed,1+depth,nil,nb,xy,imba)))+sum
end
return math.tointeger(imba(2969,sum==0 and 2971 or sum))
end
return meta_Hash(tostring(object),delve_guard,hashed,1+depth,sum,nb,xy,imba)
end
local function directory_CheckSum(directory,location,namecontent)
namecontent=namecontent or function(namesum,contentsum)
local sign,smaller,larger=namesum*contentsum==0 and 0 or namesum*contentsum//math.abs(namesum*contentsum)
if math.abs(namesum)<math.abs(contentsum)then
smaller,larger=math.abs(namesum),math.abs(contentsum)
else
smaller,larger=math.abs(contentsum),math.abs(namesum)
end
if smaller<=1 then
return sign*larger
end
local power=0
while larger>=1e3*smaller^(1+power)do
power=1+power
end
return sign*math.ceil(larger/smaller^power)*(1+(larger-1)%smaller)
end
local sum,compare=0,{root_path=tostring(location)}
if io.type(directory)=="file"then
if os.getenv("ANDROID_ROOT")=="/system"then
local first_readout=directory:read()
if first_readout~=compare.root_path then
error("Incorrect Usage: First Readout - "..first_readout.." - Must Match Second Argument - "..compare.root_path.."!")
end
end
for subdir in directory:lines()do
local relative_path=subdir:match("^"..compare.root_path.."(.+)$")
if not relative_path then
warn("Current item - ",subdir," - does not belong to the directory undergoing checksum - ",compare.root_path,"!")
goto next_item
end
local namesum,skip=meta_Hash(relative_path)
if os.getenv("ANDROID_ROOT")=="/system"then
skip=io.popen('find "'..subdir..'" -type d 2>/dev/null'):read()
elseif os.getenv("OS")=="Windows_NT"then
skip=os.execute('dir "'..subdir..'" /A:D /S /B')
end
if not skip then
print("Accessing File: "..subdir)
compare[relative_path]={}
local lines,contentsum=meta_Hash(io.input(subdir),nil,compare,relative_path)
sum=math.tointeger(namecontent(namesum,contentsum))+sum
compare[relative_path].contentsum=contentsum
io.input():close()
print(lines.." Line"..(lines>1 and"s"or"").." Summed Up")
else
sum=sum-namesum
compare[relative_path]=-namesum
end
::next_item::
end
directory:close()
elseif type(directory)=="string"then
if directory:find(compare.root_path)~=1 then
error("Incorrect Usage: Second Argument - "..compare.root_path.." - Must Be a PreFix of First Argument - "..directory.."!")
end
local relative_path=directory:match("^"..compare.root_path.."(.+)$")
local namesum,skip=meta_Hash(relative_path)
if os.getenv("ANDROID_ROOT")=="/system"then
skip=io.popen('find "'..directory..'" -type d 2>/dev/null'):read()
elseif os.getenv("OS")=="Windows_NT"then
skip=os.execute('dir "'..directory..'" /A:D /S /B')
end
if not skip then
print("Accessing File: "..directory)
compare[relative_path]={}
local lines,contentsum=meta_Hash(io.input(directory),nil,compare,relative_path)
sum=math.tointeger(namecontent(namesum,contentsum))+sum
compare[relative_path].contentsum=contentsum
io.input():close()
print(lines.." Line"..(lines>1 and"s"or"").." Summed Up")
else
sum=sum-namesum
compare[relative_path]=-namesum
end
end
print([===[Process Finished - Here You Are:
]===]..sum)
return sum,compare
end
local function init_Dbg(object,traversed,path_track,across_recursion)
traversed,path_track,across_recursion=traversed or{[debug]=true,[io]=true,[package]=true,[table]=true},path_track or{},across_recursion or{}
if type(object)=="function"and not rawequal(object,next)and not rawequal(object,print)and not rawequal(object,xpcall)and not rawequal(object,init_Dbg)then
local isclass,snapshot,__call_precursor=path_track[#path_track]=='["__index"]'or path_track[#path_track]=='["__newindex"]',table.concat(path_track)
if isclass or not across_recursion.cache__call then
__call_precursor=function(self,...)
local call_stacks
if not across_recursion.stack_delve_depth then
call_stacks={}
debug.sethook(function(event,line_number)
if event~="tail call"then
local stack=debug.getinfo(2,"S")
if stack.short_src==find_self then
call_stacks[stack.linedefined..":"..stack.lastlinedefined]=stack
end
end
end,"c")
end
across_recursion.stack_delve_depth=1+(across_recursion.stack_delve_depth or 0)
print("About to Call Function: ",isclass and snapshot or tostring(self))
local packed_args=isclass and table.pack(self,...)or table.pack(...)
local call_results=table.pack(xpcall(isclass and object or rawget(debug.getmetatable(self),"__func"),function(errobj)
return serialise(errobj,"\t").."\n"..debug.traceback(across_recursion.stack_delve_depth.."\t"..(isclass and snapshot or tostring(self)),3)
end,table.unpack(packed_args,1,packed_args.n)))
print("Exited from Function: ",isclass and snapshot or tostring(self))
across_recursion.stack_delve_depth=across_recursion.stack_delve_depth-1
if call_results[1]then
if call_stacks and across_recursion.stack_delve_depth<=0 then
debug.sethook()
across_recursion.stack_delve_depth=nil
end
return table.unpack(call_results,2,call_results.n)
else
if call_stacks and across_recursion.stack_delve_depth<=0 then
debug.sethook()
local new_stacks={}
for _,v in next,call_stacks do
new_stacks[1+#new_stacks]=v
end
call_stacks,new_stacks=new_stacks,nil
call_stacks[1+#call_stacks]=debug.getinfo(isclass and object or rawget(debug.getmetatable(self),"__func"),"S")
local line_number=0
io.output(where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version))
for code_line in io.input(find_self):lines()do
line_number=1+line_number
for idx=1,#call_stacks do
if line_number>=call_stacks[idx].linedefined and line_number<=call_stacks[idx].lastlinedefined then
io.write(code_line,"\n")
break
end
end
end
io.input():close()
io.output():close()
across_recursion.stack_delve_depth=nil
end
error(call_results[2],0)
end
end
if not isclass then
across_recursion.cache__call=__call_precursor
end
else
__call_precursor=across_recursion.cache__call
end
if isclass then
return __call_precursor
end
local decorated={__name=snapshot,__func=object,__call=__call_precursor}
return debug.setmetatable(decorated,decorated)
elseif type(object)=="table"or(type(object)=="userdata"and tostring(object):find("dual_Capable_Map")==1)then
if traversed[object]then
return nil
else
traversed[object]=true
end
for k,v in pairs(object)do
if type(k)=="table"or(type(k)=="userdata"and tostring(k):find("dual_Capable_Map")==1)then
local key
if type(object)=="userdata"and tostring(object):find("dual_Capable_Map")==1 then
merged_keys=object:lookUp(v)
end
path_track[1+#path_track]=type(object)=="table"and"["..tostring(k).." key]"or"["..(type(v)=="string"and("%q"):format(v)or tostring(v)).."]"..(type(merged_keys)=="table"and merged_keys[select(2,object())]=="merged_keys"and"["..merged_keys["inverse_"..merged_keys[select(2,object())]][k].."]"or"")
init_Dbg(k,traversed,path_track,across_recursion)
path_track[#path_track]=nil
end
if type(v)=="function"or type(v)=="table"or(type(v)=="userdata"and tostring(v):find("dual_Capable_Map")==1)then
path_track[1+#path_track]="["..(type(k)=="string"and("%q"):format(k)or tostring(k)).."]"
local decorated=init_Dbg(v,traversed,path_track,across_recursion)
if decorated then
object[k]=decorated
end
path_track[#path_track]=nil
end
end
end
end
local directory_Match=load("local directory=...\n"..dir_mat,"Directory Match")
interface.directory_Match=directory_Match
interface.serialise=serialise
interface.meta_Hash=meta_Hash
interface.directory_CheckSum=directory_CheckSum
interface.init_Dbg=init_Dbg
if c_thread==false then
goto lower_overhead
end
local cversion,crenewed,cstatus=interface.version,interface.renewed,status

--range[6][6]
--[=[
query collision\deletion
add return false if kv both map
edit return error string or false if kv both map
lay return true if cache becomes empty or false if trying to paste a pair to a find list
import return true if nothing collected or false if trying to paste a pair to a find list
params
lower half

sort navigate (including from find) before cache_idx1
{display add create	make sure to create ud instead of table
edit through termux-open file at non-private directory
copy paste delete
find replace} find keyword or find exact from cache - just like add exact from cache - exact then match
import export make sure to convert to ud before import
dump save disambiguity explicitly before dump, then clear it when loaded back and catalogue empty - do catalog this wipe - add unique_key="collected_nodes"afterward
yield return wipe indexes of recycle on resume if dispose true
once any modification involving ambiguity occurs, return cannot happen before another dump - add a warning after scanning catalogue for disamb
]=]
function interface.portable_Hole(database_index,dispose_on_leave)
local catalogue,env={}
if database_snapshot and not _ENV.database_snapshot then
env={root1=load(database_snapshot,"Retrieve the DataBase")(),require=require,module_name=module_name,table=table,select=select,reset={}}
elseif database_snapshots and not _ENV.database_snapshots then
env={require=require,module_name=module_name,table=table,select=select,reset={}}
for idx=1,#database_snapshots do
env["root"..idx]=load(database_snapshots[idx],"Retrieve DataBase"..idx)()
end
else
env={require=require,module_name=module_name,select=select,reset={}}
catalogue[1+#catalogue]='root1=require(module_name).c_UpBinds.dual_Capable_Map{disambiguity=require(module_name).c_UpBinds.dual_Capable_Map{[select(2,require(module_name).c_UpBinds.dual_Capable_Map())]="collected_nodes"}}'
catalogue[1+#catalogue]="n=1"
end
if next(catalogue)==nil then
local success,database_finder,database_path,database_location=pcall(directory_Match,"/sdcard/Download/Cave -type f")
if success and database_finder then
local directory
if database_location and database_path:find(database_location)==1 and database_path:match("%d%d%d%d%-[0-1]%d%-[0-3]%d [0-2]%d：[0-5]%d：[0-6]%d")then
directory=database_path
elseif type(database_finder)=="table"then
for idx=#database_finder//3,1,-1 do
if database_finder[3*idx]and database_finder[3*idx-1]:find(database_finder[3*idx])==1 and database_finder[3*idx-1]:match("%d%d%d%d%-[0-1]%d%-[0-3]%d [0-2]%d：[0-5]%d：[0-6]%d")then
directory=database_finder[3*idx-1]
break
end
end
end
if directory then
for database_line in io.input(directory):lines()do
catalogue[1+#catalogue]=database_line
end
io.input():close()
end
end
end
load(table.concat(catalogue,"\n"),"Execute Catalogue",nil,env)()
env.require=nil
env.module_name=nil
env.table=nil
env.select=nil
env[1]=env.root1
if type(env[1].disambiguity)=="userdata"and tostring(env[1].disambiguity):find("dual_Capable_Map")==1 then
if next(catalogue)==nil then
env[1][select(3,require(module_name).c_UpBinds.dual_Capable_Map())]=table.move(catalogue,1,#env[1].disambiguity,1,env[1].disambiguity)
else
env[1][select(3,require(module_name).c_UpBinds.dual_Capable_Map())]=env[1].disambiguity
end
env[1].disambiguity=next(catalogue)==nil and"table.move(reset,1,#root1.disambiguity,1,root1.disambiguity)"or nil
else
env[1][select(3,require(module_name).c_UpBinds.dual_Capable_Map())]=require(module_name).c_UpBinds.dual_Capable_Map{[select(2,require(module_name).c_UpBinds.dual_Capable_Map())]="collected_nodes"}
end
if env[1][select(3,require(module_name).c_UpBinds.dual_Capable_Map())][select(2,require(module_name).c_UpBinds.dual_Capable_Map())]~="collected_nodes"then
env[1][select(3,require(module_name).c_UpBinds.dual_Capable_Map())][select(2,require(module_name).c_UpBinds.dual_Capable_Map())]="collected_nodes"
end
if(env.n or #database_snapshots)>1 then
for idx=2,env.n or #database_snapshots do
env[idx]=env["root"..idx]
if type(env[idx].disambiguity)=="userdata"and tostring(env[idx].disambiguity):find("dual_Capable_Map")==1 then
if next(catalogue)==nil then
env[idx][select(3,require(module_name).c_UpBinds.dual_Capable_Map())]=table.move(catalogue,1,#env[idx].disambiguity,1,env[idx].disambiguity)
else
env[idx][select(3,require(module_name).c_UpBinds.dual_Capable_Map())]=env[idx].disambiguity
end
env[idx].disambiguity=next(catalogue)==nil and"table.move(reset,1,#root"..idx..".disambiguity,1,root"..idx..".disambiguity)"or nil
else
env[idx][select(3,require(module_name).c_UpBinds.dual_Capable_Map())]=require(module_name).c_UpBinds.dual_Capable_Map{[select(2,require(module_name).c_UpBinds.dual_Capable_Map())]="collected_nodes"}
end
if env[idx][select(3,require(module_name).c_UpBinds.dual_Capable_Map())][select(2,require(module_name).c_UpBinds.dual_Capable_Map())]~="collected_nodes"then
env[idx][select(3,require(module_name).c_UpBinds.dual_Capable_Map())][select(2,require(module_name).c_UpBinds.dual_Capable_Map())]="collected_nodes"
end
end
database_index=math.tointeger(tonumber(database_index))and 1+(math.tointeger(tonumber(database_index))-1)%#env or 1
else
database_index=1
end
for idx=1,#env do
if env[idx].disambiguity~=nil then
catalogue[1+#catalogue]=env[idx].disambiguity
env[idx].disambiguity=nil
end
end
local reset,navigate,names,flush,on_display,recycled,cache,routes,names_en_route,pointer,unique_key_meta,unique_key_parents,unique_key_extra=env.reset,{},{},nil,{},debug.setmetatable({},{mode="k"}),require(module_name).c_UpBinds.dual_Capable_Map{[select(4,require(module_name).c_UpBinds.dual_Capable_Map())]="fresh_cache"},{[database_index]={env[database_index]}},{[database_index]={[env[database_index]]="root"..database_index}},env[database_index],select(2,require(module_name).c_UpBinds.dual_Capable_Map())
env.reset=nil
local priority,jump,cache_catalogue_size,ambiguity_occurred={boolean=1,number=2,string=3,integer=1,float=2},1,#catalogue

local function display_by_Index(directive)
for capt1,capt2,capt3 in directive:gmatch("[^:%d]*(%d*)%s-(:?)%s-(%d*)")do
local start,stop=tonumber(capt1),tonumber(capt3)
if not stop and capt2~=":"then
if start then
stop=false
else
goto continue
end
end
if start then
start=1+(start-1)%#navigate
else
start=1
end
if stop then
stop=1+(stop-1)%#navigate
elseif stop==nil then
stop=#navigate
end
for idx=start,stop==false and start or(start>stop and #navigate or stop)do
if directive:find("display%s-[kv]")==1 then
on_display[1+#on_display]=directive:find("display%s-k")==1 and names[navigate[idx]]or(type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and serialise(navigate[idx],"\t")or navigate[idx])
else
on_display[1+#on_display]=names[navigate[idx]].."\t"..(type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and serialise(navigate[idx],"\t")or navigate[idx])
end
end
if stop and start>stop then
for idx=1,stop do





end
end
::continue::
end
end

local function export_by_Index(directive)
for capt1,capt2,capt3,capt4 in directive:gmatch("[^:%->_%d]*(%d*)%s-(:?)%s-(%d*)%s-%->%s-([_%a][_%w]*)")do
local start,stop,batch=tonumber(capt1),tonumber(capt3)
if not stop and capt2~=":"then
if start then
stop=false
else
goto continue
end
end
if start then
start=1+(start-1)%#navigate
else
start=1
end
if stop then
stop=1+(stop-1)%#navigate
elseif stop==nil then
stop=#navigate
end
for idx=start,stop==false and start or(start>stop and #navigate or stop)do
if directive:find("export%s-[kv]")==1 then
if type(batch)=="table"then
batch[1+#batch]=directive:find("export%s-k")==1 and names[navigate[idx]]or(type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and replicate(navigate[idx])or navigate[idx])
else
batch=batch==nil and(directive:find("export%s-k")==1 and names[navigate[idx]]or(type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and replicate(navigate[idx])or navigate[idx]))or{batch,directive:find("export%s-k")==1 and names[navigate[idx]]or(type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and replicate(navigate[idx])or navigate[idx])}
end
else
if not batch then
batch={}
end
batch[names[navigate[idx]]]=type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and replicate(navigate[idx])or navigate[idx]
end
end
if stop and start>stop then
for idx=1,stop do





end
end
_ENV[capt4]=batch
::continue::
end
end

local function assemble_Route(collected_routes_index,collected_routes,collected_names_en_route,full)
local assembler={(collected_names_en_route or names_en_route)[collected_routes_index or database_index][(collected_routes or routes)[collected_routes_index or database_index][1]]}
for idx=2,#(collected_routes or routes)[collected_routes_index or database_index]do
if type((collected_names_en_route or names_en_route)[collected_routes_index or database_index][(collected_routes or routes)[collected_routes_index or database_index][idx]])=="string"and(collected_names_en_route or names_en_route)[collected_routes_index or database_index][(collected_routes or routes)[collected_routes_index or database_index][idx]]:find("root%d+%.disambiguity%[%d+%]$")==1 then
if not full then
assembler=table.move(reset,1,#assembler,1,assembler)
end
assembler[1+#assembler]=(full and"["or"")..tostring((collected_names_en_route or names_en_route)[collected_routes_index or database_index][(collected_routes or routes)[collected_routes_index or database_index][idx]])..(full and"]"or"")
else
assembler[1+#assembler]="["..("%q"):format((collected_names_en_route or names_en_route)[collected_routes_index or database_index][(collected_routes or routes)[collected_routes_index or database_index][idx]]).."]"
end
end
return table.concat(assembler)
end

local function cache_by_Index(directive,cue,upper_bound,collected_routes,collected_names_en_route)
local batch_from,single_source,collected_individuals,collected_couples
if not collected_routes or not collected_names_en_route then
batch_from=assemble_Route()
single_source=true
else
collected_individuals,collected_couples={},{}
end
for capt1,capt2,capt3 in directive:gmatch("[^:%d]*(%d*)%s-(:?)%s-(%d*)")do
local start,stop=tonumber(capt1),tonumber(capt3)
if not stop and capt2~=":"then
if start then
stop=false
else
goto continue
end
end
if start then
start=1+(start-1)%(upper_bound or #navigate)
else
start=1
end
if stop then
stop=1+(stop-1)%(upper_bound or #navigate)
elseif stop==nil then
stop=upper_bound or #navigate
end
for idx=start,stop==false and start or(start>stop and(upper_bound or #navigate)or stop)do
local collected_database_index
if not single_source then
batch_from=assemble_Route(idx,collected_routes,collected_names_en_route)
collected_database_index=tonumber(collected_names_en_route[idx][collected_routes[idx][1]]:match("^root(%d+)$"))
end
local ambiguous
if single_source then
ambiguous=names[navigate[idx-1]]==names[navigate[idx]]or names[navigate[1+idx]]==names[navigate[idx]]
else
local merged_keys=collected_routes[idx][#collected_routes[idx]]:lookUp(navigate[idx])
if type(merged_keys)=="table"and merged_keys[unique_key_meta]=="merged_keys"then
ambiguous=true
end
end
if directive:find(cue.."%s-k")==1 then
cache[1+#cache]=names[navigate[idx]]
elseif directive:find(cue.."%s-v")==1 then
if((type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1)or(type(navigate[idx])=="string"and #navigate[idx]>1024))and not ambiguous then
if(single_source and type(collected_individuals)or type(collected_individuals[batch_from]))=="userdata"and(single_source and tostring(collected_individuals)or tostring(collected_individuals[batch_from])):find("dual_Capable_Map")==1 and(single_source and collected_individuals or collected_individuals[batch_from])[unique_key_meta]=="collected_nodes"then
table.insert(single_source and collected_individuals or collected_individuals[batch_from],names[navigate[idx]])
elseif not rawequal(collected_individuals,nil)and(single_source or not rawequal(collected_individuals[batch_from],nil))then
if single_source then
collected_individuals=require(module_name).c_UpBinds.dual_Capable_Map{collected_individuals,names[navigate[idx]],[unique_key_meta]="collected_nodes"}
else
collected_individuals[batch_from]=require(module_name).c_UpBinds.dual_Capable_Map{collected_individuals[batch_from],names[navigate[idx]],[unique_key_meta]="collected_nodes"}
end
elseif single_source then
collected_individuals=names[navigate[idx]]
else
collected_individuals[batch_from]=names[navigate[idx]]
end
if stop==false and type(navigate[idx])~="string"then
jump=(jump-1)%-6
cache[jump]=navigate[idx]
end
elseif type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and ambiguous then
if not env[collected_database_index or database_index][unique_key_parents]:lookUp(navigate[idx])then
table.insert(env[collected_database_index or database_index][unique_key_parents],navigate[idx])
end
cache[navigate[idx]]=collected_database_index or database_index
else
cache[1+#cache]=navigate[idx]
end
else
if not collected_couples then
collected_couples={}
if not single_source and not collected_couples[batch_from]then
collected_couples[batch_from]={}
end
end
if type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and ambiguous and not env[collected_database_index or database_index][unique_key_parents]:lookUp(navigate[idx])then
table.insert(env[collected_database_index or database_index][unique_key_parents],navigate[idx])
end
local collection=single_source and collected_couples or collected_couples[batch_from]
collection[names[navigate[idx]]]=navigate[idx]
end
end
if stop and start>stop then
for idx=1,stop do





end
end
::continue::
end
if single_source then
if collected_individuals then
cache[collected_individuals]=batch_from
end
if collected_couples then
cache[collected_couples]=batch_from
end
else
for k,v in next,collected_individuals do
cache[v]=k
end
for k,v in next,collected_couples do
cache[v]=k
end
end
end

local function add_Occasionally_by_Index(directive)
local idx1,indexed_cache,associated_data,couple,to_uncache,replica,entry=0,{},{},{}
if directive:find("add%s-[kv]$")==1 then
for k,v in pairs(cache)do
if math.type(k)=="integer"and k>0 and k<=#cache then
idx1=1+idx1
local truncated
if type(v)=="string"and utf8.len(v)>127 then
truncated=v(":127")
end
print(idx1,truncated or v)
indexed_cache[idx1]=v
elseif type(k)=="userdata"and tostring(k):find("dual_Capable_Map")==1 then
if k[unique_key_meta]=="collected_nodes"then
for idx2=1,#k do
local object,content1,content2=load("return "..v.."["..("%q"):format(k[idx2]).."]","Fetch from Cache Entry "..v.." #"..idx2,nil,env)()
if type(k[idx2])=="string"and utf8.len(k[idx2])>127 then
content1=k[idx2](":127")
end
if type(object)=="string"and utf8.len(object)>127 then
content2=object(":127")
end
idx1=1+idx1
print(idx1,v,content1 or k[idx2],content2 or object)
indexed_cache[idx1]=object
associated_data[object]=v.."["..("%q"):format(k[idx2]).."]"
to_uncache={k,k[idx2]}
end
else
idx1=1+idx1
local contents=serialise(k,false)
if utf8.len(contents)>127 then
contents=contents(":127")
end
print(idx1,"root"..v,k,contents)
indexed_cache[idx1]=k
associated_data[k]=v
end
elseif type(k)~="table"and(type(v)~="userdata"or tostring(v):find("dual_Capable_Map")~=1)then
local object,content1,content2=load("return "..v.."["..("%q"):format(k).."]","Fetch from Cache Entry "..v,nil,env)()
if type(k)=="string"and utf8.len(k)>127 then
content1=k(":127")
end
if type(object)=="string"and utf8.len(object)>127 then
content2=object(":127")
end
idx1=1+idx1
print(idx1,v,content1 or k,content2 or object)
indexed_cache[idx1]=object
associated_data[object]=v.."["..("%q"):format(k).."]"
to_uncache=k
end
end
::cut_short::
print("Which to Assign "..(directive:find("add%s-k$")==1 and"to"or"as").." Key?")
local success,sub_directive=pcall(io.input().read,io.input())
if not success or not sub_directive then
if success then
io.input():close()
end
sub_directive=io.input(io.stdin):read()
end
idx1=tonumber(sub_directive:match("^%s-r?%s-(%d+)$"))
if idx1 then
idx1=1+(idx1-1)%#indexed_cache
else
warn("Invalid Input with No Integer Index Extracted - Please Try Again!")
goto cut_short
end
if type(indexed_cache[idx1])=="userdata"and tostring(indexed_cache[idx1]):find("dual_Capable_Map")==1 and(sub_directive:find("%s-r")==1 or(tonumber(associated_data[indexed_cache[idx1]])or tonumber(associated_data[indexed_cache[idx1]]:match("^root(%d+)")))~=database_index)then
replica=replicate(indexed_cache[idx1])
end
couple[directive:find("add%s-k$")==1 and 2 or 1]=replica or indexed_cache[idx1]
local entry=replica and"load("..table.concat(table.pack(serialise(replica,true,"\t")),"\n")..',"ReConstruct across DataBases")()'or(math.type(associated_data[indexed_cache[idx1]])=="integer"and"root"..associated_data[indexed_cache[idx1]]..".disambiguity["..env[associated_data[indexed_cache[idx1]]][unique_key_parents]:lookUp(indexed_cache[idx1]).."]"or(associated_data[indexed_cache[idx1]]==nil and("%q"):format(indexed_cache[idx1])or associated_data[indexed_cache[idx1]]))
if type(associated_data[indexed_cache[idx1]])=="string"then
if type(to_uncache)=="table"then
table.remove(to_uncache[1],to_uncache[1]:lookUp(to_uncache[2]))
if #to_uncache[1]<=1 then
cache[to_uncache[1]:nLookUp(1)]=cache:nLookUp(to_uncache[1])
cache[to_uncache[1]]=nil
end
else
cache[to_uncache]=nil
end
elseif math.type(associated_data[indexed_cache[idx1]])=="integer"then
cache[indexed_cache[idx1]]=nil
else
table.remove(cache,cache:lookUp(indexed_cache[idx1]))
end
end
for idx2=1,2 do
if couple[idx2]==nil then
print("Please Enter Literal to Assign "..(idx2==1 and"as"or"to").." Key:")
local literal
idx1,literal=pcall(io.input().read,io.input(),"a")
if not idx1 or not literal then
if idx1 then
io.input():close()
end
literal=io.input(io.stdin):read("a")
end
if literal=="new"then
literal=require(module_name).c_UpBinds.dual_Capable_Map(reset)
elseif literal=="true"then
literal=true
elseif literal=="false"then
literal=false
elseif tonumber(literal)then
literal=math.tointeger(tonumber(literal))or tonumber(literal)
elseif literal(1)=='"'and literal(utf8.len(literal))=='"'then
literal=literal:sub(2,-2)
end
couple[idx2]=literal
end
end
local logue1,logue2
if type(couple[1])=="userdata"and tostring(couple[1]):find("dual_Capable_Map")==1 then
logue1="require(module_name).c_UpBinds.dual_Capable_Map(reset)"
end
if type(couple[2])=="userdata"and tostring(couple[2]):find("dual_Capable_Map")==1 then
if logue1 then
return false
else
logue2="require(module_name).c_UpBinds.dual_Capable_Map(reset)"
end
end
local cache_old
if(directive:find("add%s-k$")==1 and not logue1)or(directive:find("add%s-v$")==1 and not replica)then
cache_old=pointer[couple[1]]
end
pointer[couple[1]]=couple[2]
catalogue[1+#catalogue]=assemble_Route().."["..(directive:find("add%s-v$")==1 and entry or logue1 or("%q"):format(couple[1])).."]="..(directive:find("add%s-k$")==1 and entry or logue2 or("%q"):format(couple[2]))
if type(cache_old)=="userdata"and tostring(cache_old):find("dual_Capable_Map")==1 and pointer[cache_old]==nil then
recycled[cache_old]=1+(recycled[cache_old]or 0)
end
end

local function predicate_Orientation(dual_map,presumed_key,presumed_value)
if rawequal(dual_map:nLookUp(presumed_key),presumed_value)then
return true
elseif rawequal(dual_map:lookUp(presumed_key),presumed_value)then
return false
else
local merged_keys=dual_map:lookUp(presumed_key)
if type(merged_keys)=="table"and merged_keys[unique_key_meta]=="merged_keys"and rawequal(merged_keys[merged_keys["inverse_"..merged_keys[unique_key_meta]][presumed_value]],presumed_value)then
return false
end
end
end

local function delete_by_Index(directive,collected_routes,collected_names_en_route)
local site,pointer,single_site
if not collected_routes or not collected_names_en_route then
site=assemble_Route()
pointer=routes[database_index][#routes[database_index]]
single_site=true
end
for capt1,capt2,capt3 in directive:gmatch("[^:%d]*(%d*)%s-(:?)%s-(%d*)")do
local start,stop=tonumber(capt1),tonumber(capt3)
if not stop and capt2~=":"then
if start then
stop=false
else
goto continue
end
end
if start then
start=1+(start-1)%#navigate
else
start=1
end
if stop then
stop=1+(stop-1)%#navigate
elseif stop==nil then
stop=#navigate
end
for idx=start,stop==false and start or(start>stop and #navigate or stop)do
local collected_database_index
if not single_site then
site=assemble_Route(idx,collected_routes,collected_names_en_route)
pointer=collected_routes[idx][#collected_routes[idx]]
collected_database_index=tonumber(collected_names_en_route[idx][collected_routes[idx][1]]:match("^root(%d+)$"))
end
local ambiguous,disambiguous
if single_site then
ambiguous=names[navigate[idx-1]]==names[navigate[idx]]or names[navigate[1+idx]]==names[navigate[idx]]
else
local merged_keys=collected_routes[idx][#collected_routes[idx]]:lookUp(navigate[idx])
if type(merged_keys)=="table"and merged_keys[unique_key_meta]=="merged_keys"then
ambiguous=true
end
end
if ambiguous and type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 then
if not env[collected_database_index or database_index][unique_key_parents]:lookUp(navigate[idx])then
table.insert(env[collected_database_index or database_index][unique_key_parents],navigate[idx])
end
disambiguous="root"..(collected_database_index or database_index)..".disambiguity["..env[collected_database_index or database_index][unique_key_parents]:lookUp(navigate[idx]).."]"
end
local orientation,key,value=predicate_Orientation(pointer,names[navigate[idx]],navigate[idx])
if orientation then
key,value=names[navigate[idx]],navigate[idx]
elseif orientation==false then
key,value=navigate[idx],names[navigate[idx]]
else
local truncated=serialise(navigate[idx],false)
if utf8.len(truncated)>127 then
truncated=truncated(":127")
end
warn("Internal DataBase Error: Pair - ",names[navigate[idx]]," and ",truncated," - Do Not Belong to ",single_site and names_en_route[database_index][routes[database_index][#routes[database_index]]]or collected_names_en_route[idx][collected_routes[idx][#collected_routes[idx]]],"!")
goto continue
end
if(directive:find("delete%s-k")==1 and orientation)or(directive:find("delete%s-v")==1 and not orientation)then
pointer[1+#pointer]=value
pointer[key]=nil
catalogue[1+#catalogue]=site.."[1+#"..site.."]="..(orientation and site.."["..("%q"):format(key).."]"or("%q"):format(value))
catalogue[1+#catalogue]=site.."["..(orientation and("%q"):format(key)or disambiguous or(ambiguous and("%q"):format(key)or site.."["..("%q"):format(value).."]")).."]=nil"
if not orientation and type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and pointer[navigate[idx]]==nil then
recycled[navigate[idx]]=1+(recycled[navigate[idx]]or 0)
end
elseif(directive:find("delete%s-k")==1 and not orientation)or(directive:find("delete%s-v")==1 and orientation)then
pointer[key]=false
catalogue[1+#catalogue]=site.."["..(orientation and("%q"):format(key)or disambiguous or(ambiguous and("%q"):format(key)or site.."["..("%q"):format(value).."]")).."]=false"
if orientation and type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and pointer[navigate[idx]]==nil then
recycled[navigate[idx]]=1+(recycled[navigate[idx]]or 0)
end
else
pointer[key]=nil
catalogue[1+#catalogue]=site.."["..(orientation and("%q"):format(key)or disambiguous or(ambiguous and("%q"):format(key)or site.."["..("%q"):format(value).."]")).."]=nil"
if type(navigate[idx])=="userdata"and tostring(navigate[idx]):find("dual_Capable_Map")==1 and pointer[navigate[idx]]==nil then
recycled[navigate[idx]]=1+(recycled[navigate[idx]]or 0)
end
end
end
if stop and start>stop then
for idx=1,stop do





end
end
::continue::
end
end

local function lay_by_Index(cue,collected_routes,collected_names_en_route)
local idx1,indexed_cache,associated_data,pool=0,{},{},{}
for k,v in pairs(cache)do
if math.type(k)=="integer"and k>0 and k<=#cache then
idx1=1+idx1
local content
if type(v)=="string"and utf8.len(v)>127 then
content=v(":127")
end
print(idx1,content or v)
indexed_cache[idx1]=v
elseif type(k)=="userdata"and tostring(k):find("dual_Capable_Map")==1 then
if k[unique_key_meta]=="collected_nodes"then
for idx2=1,#k do
local object,content1,content2=load("return "..v.."["..("%q"):format(k[idx2]).."]","Fetch from Cache Entry "..v.." #"..idx2,nil,env)()
if type(k[idx2])=="string"and utf8.len(k[idx2])>127 then
content1=k[idx2](":127")
end
if object==nil or(type(object)=="table"and object[unique_key_meta]=="merged_keys")then
pool[1+#pool]={k,k[idx2]}
goto continue1
elseif type(object)=="string"and utf8.len(object)>127 then
content2=object(":127")
end
idx1=1+idx1
print(idx1,v,content1 or k[idx2],content2 or object)
indexed_cache[idx1]=object
associated_data[object]=v.."["..("%q"):format(k[idx2]).."]"
pool[object]={k,k[idx2]}
::continue1::
end
else
if recycled[k]then
cache[k]=nil
goto continue2
end
idx1=1+idx1
local contents=serialise(k,false)
if utf8.len(contents)>127 then
contents=contents(":127")
end
print(idx1,"root"..v,k,contents)
indexed_cache[idx1]=k
associated_data[k]=v
end
elseif type(k)~="table"and(type(v)~="userdata"or tostring(v):find("dual_Capable_Map")~=1)then
local object,content1,content2=load("return "..v.."["..("%q"):format(k).."]","Fetch from Cache Entry "..v,nil,env)()
if type(k)=="string"and utf8.len(k)>127 then
content1=k(":127")
end
if object==nil or(type(object)=="table"and object[unique_key_meta]=="merged_keys")then
pool[1+#pool]=k
goto continue2
elseif type(object)=="string"and utf8.len(object)>127 then
content2=object(":127")
end
idx1=1+idx1
print(idx1,v,content1 or k,content2 or object)
indexed_cache[idx1]=object
associated_data[object]=v.."["..("%q"):format(k).."]"
pool[object]=k
end
::continue2::
end
local cache_idx1=idx1
for k,v in cache:__pairs(#cache)do
if type(k)=="table"then
idx1=1+idx1
local contents=serialise(k,false)
if utf8.len(contents)>127 then
contents=contents(":127")
end
print(idx1,v,k,contents)
indexed_cache[idx1]=k
associated_data[k]=v
end
end
for idx2=1,#pool do
if type(pool[idx2])=="table"then
table.remove(pool[idx2][1],pool[idx2][1]:lookUp(pool[idx2][2]))
if #pool[idx2][1]<=0 then
cache[pool[idx2][1]]=nil
end
else
cache[pool[idx2]]=nil
end
end
local empty,next_key=true,pairs(cache)()
if next_key~=nil and(math.type(next_key)~="integer"or next_key<-5 or next_key>0)then
empty=false
end
for idx2=0,-5,-1 do
if cache:nLookUp(idx2)then
next_key=cache:__pairs()(false,idx2)
if empty and(next_key~=nil and(math.type(next_key)~="integer"or next_key<-5 or next_key>0))then
empty=false
end
end
if recycled[cache:nLookUp(idx2)]then
cache[idx2]=nil
end
end
if empty then
return empty
end
print("Which to "..cue.."?")
local site,directive,pointer=pcall(io.input().read,io.input())
if not site or not directive then
if site then
io.input():close()
end
directive=io.input(io.stdin):read()
end
local single_destination
if not collected_routes or not collected_names_en_route then
site=assemble_Route()
pointer=routes[database_index][#routes[database_index]]
single_destination=true
end
if directive:find("%s-[kv]")==1 then
for capt1,capt2,capt3,capt4,capt5 in directive:gmatch("[^:%->%d]*(%d*)%s-(:?)%s-(%d*)%s-%->%s-(%-?)(%d*)")do
local stop,anchor
idx1,stop,anchor=tonumber(capt1),tonumber(capt3),tonumber(capt5)
if not stop and capt2~=":"then
if idx1 then
stop=false
else
goto continue
end
end
if idx1 then
idx1=1+(idx1-1)%cache_idx1
else
idx1=1
end
if stop then
stop=1+(stop-1)%cache_idx1
elseif stop==nil then
stop=cache_idx1
end
if anchor then
anchor=1+(anchor-1)%#navigate
end
for idx2=idx1,stop==false and idx1 or(idx1>stop and cache_idx1 or stop)do
local collected_database_index
if not single_destination and anchor then
site=assemble_Route(anchor,collected_routes,collected_names_en_route)
pointer=collected_routes[anchor][#collected_routes[anchor]]
collected_database_index=tonumber(collected_names_en_route[anchor][collected_routes[anchor][1]]:match("^root(%d+)$"))
end
local replica
if type(indexed_cache[idx2])=="userdata"and tostring(indexed_cache[idx2]):find("dual_Capable_Map")==1 and(directive:find("%s-[kv]%s-r")==1 or(tonumber(associated_data[indexed_cache[idx2]])or tonumber(associated_data[indexed_cache[idx2]]:match("^root(%d+)")))~=(collected_database_index or database_index))then
replica=replicate(indexed_cache[idx2])
end
local entry=replica and"load("..table.concat(table.pack(serialise(replica,true,"\t")),"\n")..',"ReConstruct across DataBases")()'or(math.type(associated_data[indexed_cache[idx2]])=="integer"and"root"..associated_data[indexed_cache[idx2]]..".disambiguity["..env[associated_data[indexed_cache[idx2]]][unique_key_parents]:lookUp(indexed_cache[idx2]).."]"or(associated_data[indexed_cache[idx2]]==nil and("%q"):format(indexed_cache[idx2])or associated_data[indexed_cache[idx2]]))
local ambiguous,disambiguous
if anchor then
if single_destination then
ambiguous=names[navigate[anchor-1]]==names[navigate[anchor]]or names[navigate[1+anchor]]==names[navigate[anchor]]
else
local merged_keys=collected_routes[anchor][#collected_routes[anchor]]:lookUp(navigate[anchor])
if type(merged_keys)=="table"and merged_keys[unique_key_meta]=="merged_keys"then
ambiguous=true
end
end
if ambiguous and type(navigate[anchor])=="userdata"and tostring(navigate[anchor]):find("dual_Capable_Map")==1 then
if not env[collected_database_index or database_index][unique_key_parents]:lookUp(navigate[anchor])then
table.insert(env[collected_database_index or database_index][unique_key_parents],navigate[anchor])
end
disambiguous="root"..(collected_database_index or database_index)..".disambiguity["..env[collected_database_index or database_index][unique_key_parents]:lookUp(navigate[anchor]).."]"
end
end
local orientation,key,value
if anchor then
orientation=predicate_Orientation(pointer,names[navigate[anchor]],navigate[anchor])
if orientation then
key,value=names[navigate[anchor]],navigate[anchor]
elseif orientation==false then
key,value=navigate[anchor],names[navigate[anchor]]
else
local truncated=serialise(navigate[anchor],false)
if utf8.len(truncated)>127 then
truncated=truncated(":127")
end
warn("Internal DataBase Error: Pair - ",names[navigate[anchor]]," and ",truncated," - Do Not Belong to ",single_destination and names_en_route[database_index][routes[database_index][#routes[database_index]]]or collected_names_en_route[anchor][collected_routes[anchor][#collected_routes[anchor]]],"!")
goto continue
end
elseif directive:find("%s-k")==1 then
orientation=false
elseif directive:find("%s-v")==1 then
orientation=true
end
if(((type(indexed_cache[idx2])=="userdata"and tostring(indexed_cache[idx2]):find("dual_Capable_Map")==1)or directive:find("%s-v")==1)and not orientation)or(((type(indexed_cache[idx2])~="userdata"or tostring(indexed_cache[idx2]):find("dual_Capable_Map")~=1)and directive:find("%s-k")==1)and orientation)then
if not anchor then
pointer[replica or indexed_cache[idx2]]=false
catalogue[1+#catalogue]=site.."["..entry.."]=false"
elseif replica or not rawequal(indexed_cache[idx2],key)then
pointer[replica or indexed_cache[idx2]]=value
pointer[key]=nil
catalogue[1+#catalogue]=site.."["..entry.."]="..(orientation and site.."["..("%q"):format(key).."]"or("%q"):format(value))
catalogue[1+#catalogue]=site.."["..(orientation and("%q"):format(key)or disambiguous or(ambiguous and("%q"):format(key)or site.."["..("%q"):format(value).."]")).."]=nil"
if not orientation and type(navigate[anchor])=="userdata"and tostring(navigate[anchor]):find("dual_Capable_Map")==1 and pointer[navigate[anchor]]==nil then
recycled[navigate[anchor]]=1+(recycled[navigate[anchor]]or 0)
end
end
else
if not anchor then
pointer[1+#pointer]=replica or indexed_cache[idx2]
catalogue[1+#catalogue]=site.."[1+#"..site.."]="..entry
elseif replica or not rawequal(indexed_cache[idx2],value)then
pointer[key]=replica or indexed_cache[idx2]
catalogue[1+#catalogue]=site.."["..(orientation and("%q"):format(key)or disambiguous or(ambiguous and("%q"):format(key)or site.."["..("%q"):format(value).."]")).."]="..entry
if orientation and type(navigate[anchor])=="userdata"and tostring(navigate[anchor]):find("dual_Capable_Map")==1 and pointer[navigate[anchor]]==nil then
recycled[navigate[anchor]]=1+(recycled[navigate[anchor]]or 0)
end
end
end
if type(associated_data[indexed_cache[idx2]])=="string"then
if type(pool[indexed_cache[idx2]])=="table"then
table.remove(pool[indexed_cache[idx2]][1],pool[indexed_cache[idx2]][1]:lookUp(pool[indexed_cache[idx2]][2]))
if #pool[indexed_cache[idx2]][1]<=0 then
cache[pool[indexed_cache[idx2]][1]]=nil
end
else
cache[pool[indexed_cache[idx2]]]=nil
end
elseif math.type(associated_data[indexed_cache[idx2]])=="integer"then
cache[indexed_cache[idx2]]=nil
else
table.remove(cache,cache:lookUp(indexed_cache[idx2]))
end
if anchor then
anchor=anchor+(capt4=="-"and -1 or 1)
end
end
if stop and idx1>stop then
for idx2=1,stop do





end
end
::continue::
end
elseif single_destination then
for capt1,capt2,capt3 in directive:gmatch("[^:%d]*(%d*)%s-(:?)%s-(%d*)")do
local stop
idx1,stop=tonumber(capt1),tonumber(capt3)
if not stop and capt2~=":"then
if idx1 then
stop=false
else
goto continue1
end
end
if idx1 then
idx1=1+cache_idx1+(idx1-1-cache_idx1)%(#indexed_cache-cache_idx1)
else
idx1=1+cache_idx1
end
if stop then
stop=1+cache_idx1+(stop-1-cache_idx1)%(#indexed_cache-cache_idx1)
elseif stop==nil then
stop=#indexed_cache
end
for idx2=idx1,stop==false and idx1 or(idx1>stop and #indexed_cache or stop)do
for k1,v1 in next,indexed_cache[idx2]do
local source,replica
if type(v1)=="userdata"and tostring(v1):find("dual_Capable_Map")==1 then
if recycled[v1]then
goto continue2
end
for k2,v2 in v1[unique_key_parents]:__pairs(#v1[unique_key_parents])do
source=tonumber(v2[2][v2[1][1]]:match("^root(%d+)$"))
break
end
if source~=database_index or directive:find("%s-i?%s-r")==1 then
replica=replicate(v1)
end
end
local entry=replica and"load("..table.concat(table.pack(serialise(replica,true,"\t")),"\n")..',"ReConstruct across DataBases")()'or(source and(env[source][unique_key_parents]:lookUp(v1)and"root"..source..".disambiguity["..env[source][unique_key_parents]:lookUp(v1).."]"or associated_data[indexed_cache[idx2]].."["..("%q"):format(k1).."]")or("%q"):format(v1))
if directive:find("%s-i")==1 then
local cache_old=not replica and pointer:nLookUp(v1)
pointer[replica or v1]=k1
catalogue[1+#catalogue]=site.."["..entry.."]="..("%q"):format(k1)
if type(cache_old)=="userdata"and tostring(cache_old):find("dual_Capable_Map")==1 and pointer[cache_old]==nil then
recycled[cache_old]=1+(recycled[cache_old]or 0)
end
else
local cache_old=pointer:nLookUp(k1)
pointer[k1]=replica or v1
catalogue[1+#catalogue]=site.."["..("%q"):format(k1).."]="..entry
if type(cache_old)=="userdata"and tostring(cache_old):find("dual_Capable_Map")==1 and pointer[cache_old]==nil then
recycled[cache_old]=1+(recycled[cache_old]or 0)
end
end
::continue2::
end
cache[indexed_cache[idx2]]=nil
end
if stop and idx1>stop then
for idx2=1+cache_idx1,stop do





end
end
::continue1::
end
else
return false
end
end

local function edit_by_Index(directive,collected_routes,collected_names_en_route)
local index=tonumber(directive:match("^edit%s-[kv]%s-f?%s-(%d+)$"))
if index then
index=1+(index-1)%#navigate
else
return"Invalid Input with No Integer Index Extracted - Please Try Again!"
end
local to_edit
if directive:find("edit%s-k%s-f")==1 or(directive:find("edit%s-k")==1 and type(names[navigate[index]])=="string"and utf8.len(names[navigate[index]])>127)then
to_edit=names[navigate[index]]
elseif directive:find("edit%s-v%s-f")==1 or(directive:find("edit%s-v")==1 and type(navigate[index])=="string"and utf8.len(navigate[index])>127)then
to_edit=navigate[index]
end
local cave_found
if to_edit~=nil then
cave_found=io.popen("find /sdcard/Download/Cave -type d 2>/dev/null"):read()
io.output(cave_found and"/sdcard/Download/Cave/tmpfile.txt"or"./tmpfile.txt"):write(tostring(to_edit))
io.output():close()
os.execute("termux-open "..(cave_found and"/sdcard/Download/Cave/tmpfile.txt"or"./tmpfile.txt"))
print("Edit with External App of Choice, Save, then Return with a Notification: (abort\\n)")
else
print("Please Enter Replacement:")
end
local site,replacement,pointer=pcall(io.input().read,io.input(),to_edit==nil and"a"or"l")
if not site or not replacement then
if site then
io.input():close()
end
replacement=io.input(io.stdin):read(to_edit==nil and "a"or"l")
end
local logue
if to_edit~=nil then
if replacement=="abort"then
os.remove(cave_found and"/sdcard/Download/Cave/tmpfile.txt"or"./tmpfile.txt")
return"Editing through File Aborted According to User Request!"
else
replacement=io.input(cave_found and"/sdcard/Download/Cave/tmpfile.txt"or"./tmpfile.txt"):read("a")
io.input():close()
os.remove(cave_found and"/sdcard/Download/Cave/tmpfile.txt"or"./tmpfile.txt")
print("About to Apply the Following:")
print(utf8.len(replacement)>127 and replacement(":127")or replacement,"->",utf8.len(tostring(to_edit))>127 and tostring(to_edit)(":127")or to_edit)
print("Are You Sure? (apply\\n)")
local sub_directive
site,sub_directive=pcall(io.input().read,io.input())
if not site or not sub_directive then
if site then
io.input():close()
end
sub_directive=io.input(io.stdin):read()
end
if sub_directive~="apply"then
return"Modification Abandoned by User and Therefore Not Applied!"
end
end
else
if replacement=="new"then
replacement=require(module_name).c_UpBinds.dual_Capable_Map(reset)
logue="require(module_name).c_UpBinds.dual_Capable_Map(reset)"
elseif replacement=="true"then
replacement=true
elseif replacement=="false"then
replacement=false
elseif tonumber(replacement)then
replacement=math.tointeger(tonumber(replacement))or tonumber(replacement)
elseif replacement(1)=='"'and replacement(utf8.len(replacement))=='"'then
replacement=replacement:sub(2,-2)
end
end
local single_destination
if not collected_routes or not collected_names_en_route then
site=assemble_Route()
pointer=routes[database_index][#routes[database_index]]
single_destination=true
end
local collected_database_index
if not single_destination then
site=assemble_Route(index,collected_routes,collected_names_en_route)
pointer=collected_routes[index][#collected_routes[index]]
collected_database_index=tonumber(collected_names_en_route[index][collected_routes[index][1]]:match("^root(%d+)$"))
end
local ambiguous,disambiguous
if single_destination then
ambiguous=names[navigate[index-1]]==names[navigate[index]]or names[navigate[1+index]]==names[navigate[index]]
else
local merged_keys=collected_routes[index][#collected_routes[index]]:lookUp(navigate[index])
if type(merged_keys)=="table"and merged_keys[unique_key_meta]=="merged_keys"then
ambiguous=true
end
end
if ambiguous and type(navigate[index])=="userdata"and tostring(navigate[index]):find("dual_Capable_Map")==1 then
if not env[collected_database_index or database_index][unique_key_parents]:lookUp(navigate[index])then
table.insert(env[collected_database_index or database_index][unique_key_parents],navigate[index])
end
disambiguous="root"..(collected_database_index or database_index)..".disambiguity["..env[collected_database_index or database_index][unique_key_parents]:lookUp(navigate[index]).."]"
end
local orientation,key,value=predicate_Orientation(pointer,names[navigate[index]],navigate[index])
if orientation then
key,value=names[navigate[index]],navigate[index]
elseif orientation==false then
key,value=navigate[index],names[navigate[index]]
else
local truncated=serialise(navigate[index],false)
if utf8.len(truncated)>127 then
truncated=truncated(":127")
end
warn("Internal DataBase Error: Pair - ",names[navigate[index]]," and ",truncated," - Do Not Belong to ",single_destination and names_en_route[database_index][routes[database_index][#routes[database_index]]]or collected_names_en_route[index][collected_routes[index][#collected_routes[index]]],"!")
return false
end
if(directive:find("edit%s-k")==1 and orientation)or(directive:find("edit%s-v")==1 and not orientation)then
if logue and type(key)=="userdata"and tostring(key):find("dual_Capable_Map")==1 then
return false
end
if not rawequal(replacement,key)then
pointer[replacement]=value
pointer[key]=nil
catalogue[1+#catalogue]=site.."["..(logue or("%q"):format(replacement)).."]="..(orientation and site.."["..("%q"):format(key).."]"or("%q"):format(value))
catalogue[1+#catalogue]=site.."["..(orientation and("%q"):format(key)or disambiguous or(ambiguous and("%q"):format(key)or site.."["..("%q"):format(value).."]")).."]=nil"
if not orientation and type(navigate[index])=="userdata"and tostring(navigate[index]):find("dual_Capable_Map")==1 and pointer[navigate[index]]==nil then
recycled[navigate[index]]=1+(recycled[navigate[index]]or 0)
end
end
elseif(directive:find("edit%s-k")==1 and not orientation)or(directive:find("edit%s-v")==1 and orientation)then
if logue and type(value)=="userdata"and tostring(value):find("dual_Capable_Map")==1 then
return false
end
if not rawequal(replacement,value)then
pointer[key]=replacement
catalogue[1+#catalogue]=site.."["..(orientation and("%q"):format(key)or disambiguous or(ambiguous and("%q"):format(key)or site.."["..("%q"):format(value).."]")).."]="..(logue or("%q"):format(replacement))
if orientation and type(navigate[index])=="userdata"and tostring(navigate[index]):find("dual_Capable_Map")==1 and pointer[navigate[index]]==nil then
recycled[navigate[index]]=1+(recycled[navigate[index]]or 0)
end
end
end
end

local function import_by_Index(global_key,collected_routes,collected_names_en_route)
local idx1,indexed_keys,collected_individuals,collected_couples=0,{}
if type(_ENV[global_key])=="boolean"or type(_ENV[global_key])=="number"or type(_ENV[global_key])=="string"then
collected_individuals=_ENV[global_key]
elseif type(_ENV[global_key])=="table"or(type(_ENV[global_key])=="userdata"and tostring(_ENV[global_key]):find("dual_Capable_Map")==1)then
::another_thought::
for k,v in pairs(_ENV[global_key])do
local contents1,contents2
if type(k)=="table"or(type(k)=="userdata"and tostring(k):find("dual_Capable_Map")==1)then
contents1=serialise(k,false)
if utf8.len(contents1)>127 then
contents1=contents1(":127")
end
elseif type(k)=="string"and utf8.len(k)>127 then
contents1=k(":127")
end
if type(v)=="table"or(type(v)=="userdata"and tostring(v):find("dual_Capable_Map")==1)then
contents2=serialise(v,false)
if utf8.len(contents2)>127 then
contents2=contents2(":127")
end
elseif type(v)=="string"and utf8.len(v)>127 then
contents2=v(":127")
end
idx1=1+idx1
print(idx1,contents1 or k,contents2 or v)
indexed_keys[k]=v
end
print((collected_individuals or collected_couples)and"More? (-nomore)"or"Which to Cache?")
local directive
idx1,directive=pcall(io.input().read,io.input())
if not idx1 or not directive then
if idx1 then
io.input():close()
end
directive=io.input(io.stdin):read()
end
for capt1,capt2,capt3 in directive:gmatch("[^:%d]*(%d*)%s-(:?)%s-(%d*)")do
local stop
idx1,stop=tonumber(capt1),tonumber(capt3)
if not stop and capt2~=":"then
if idx1 then
stop=false
else
goto continue
end
end
if idx1 then
idx1=1+(idx1-1)%#indexed_keys
else
idx1=1
end
if stop then
stop=1+(stop-1)%#indexed_keys
elseif stop==nil then
stop=#indexed_keys
end
for idx2=idx1,stop==false and idx1 or(idx1>stop and #indexed_keys or stop)do
local key,value
if type(indexed_keys[idx2])=="boolean"or type(indexed_keys[idx2])=="number"or type(indexed_keys[idx2])=="string"or type(indexed_keys[idx2])=="table"or(type(indexed_keys[idx2])=="userdata"and tostring(indexed_keys[idx2]):find("dual_Capable_Map")==1)then
if directive:find("%s-k")==1 then
if type(collected_individuals)=="table"then
collected_individuals[1+#collected_individuals]=indexed_keys[idx2]
elseif collected_individuals==nil then
collected_individuals=indexed_keys[idx2]
else
collected_individuals={collected_individuals,indexed_keys[idx2]}
end
elseif directive:find("%s-[kv]")~=1 then
key=indexed_keys[idx2]
end
end
if type(_ENV[global_key][indexed_keys[idx2]])=="boolean"or type(_ENV[global_key][indexed_keys[idx2]])=="number"or type(_ENV[global_key][indexed_keys[idx2]])=="string"or type(_ENV[global_key][indexed_keys[idx2]])=="table"or(type(_ENV[global_key][indexed_keys[idx2]])=="userdata"and tostring(_ENV[global_key][indexed_keys[idx2]]):find("dual_Capable_Map")==1)then
if directive:find("%s-v")==1 then
if type(collected_individuals)=="table"then
collected_individuals[1+#collected_individuals]=_ENV[global_key][indexed_keys[idx2]]
elseif collected_individuals==nil then
collected_individuals=_ENV[global_key][indexed_keys[idx2]]
else
collected_individuals={collected_individuals,_ENV[global_key][indexed_keys[idx2]]}
end
elseif directive:find("%s-[kv]")~=1 then
value=_ENV[global_key][indexed_keys[idx2]]
end
end
if key and value and type(key)~="table"and(type(key)~="userdata"or tostring(key):find("dual_Capable_Map")~=1)and type(value)~="table"and(type(value)~="userdata"or tostring(value):find("dual_Capable_Map")~=1)then
if not collected_couples then
collected_couples={}
end
collected_couples[key]=value
end
end
if stop and idx1>stop then
for idx2=1,stop do





end
end
::continue::
end
if not directive:match("nomore$")then
goto another_thought
end
end
::another_glimpse::
if collected_individuals==nil and not collected_couples then
return true
elseif type(collected_individuals)~="table"then
collected_individuals={}
end
idx1=0
repeat
idx1=1+idx1
local contents
if type(collected_individuals[idx1])=="table"or(type(collected_individuals[idx1])=="userdata"and tostring(collected_individuals[idx1]):find("dual_Capable_Map")==1)then
contents=serialise(collected_individuals[idx1],false)
if utf8.len(contents)>127 then
contents=contents(":127")
end
elseif type(collected_individuals[idx1])=="string"and utf8.len(collected_individuals[idx1])>127 then
contents=collected_individuals[idx1](":127")
end
print(idx1,contents or collected_individuals[idx1])
until idx1>=#collected_individuals
local cache_idx1
if collected_couples then
cache_idx1=idx1
for k,v in next,collected_couples do
idx1=1+idx1
local contents1,contents2
if type(k)=="table"or(type(k)=="userdata"and tostring(k):find("dual_Capable_Map")==1)then
contents1=serialise(k,false)
if utf8.len(contents1)>127 then
contents1=contents1(":127")
end
elseif type(k)=="string"and utf8.len(k)>127 then
contents1=k(":127")
end
if type(v)=="table"or(type(v)=="userdata"and tostring(v):find("dual_Capable_Map")==1)then
contents2=serialise(v,false)
if utf8.len(contents2)>127 then
contents2=contents2(":127")
end
elseif type(v)=="string"and utf8.len(v)>127 then
contents2=v(":127")
end
print(idx1,contents1 or k,contents2 or v)
if indexed_keys then
collected_individuals[1+#collected_individuals]=k
end
end
end
print(indexed_keys and"Which to Lay?"or"More? (-nomore)")
local site,directive,pointer=pcall(io.input().read,io.input())
if not site or not directive then
if site then
io.input():close()
end
directive=io.input(io.stdin):read()
end
local single_destination
if not collected_routes or not collected_names_en_route then
site=assemble_Route()
pointer=routes[database_index][#routes[database_index]]
single_destination=true
end
if(cache_idx1 or 0)>1 and directive:find("%s-[kv]")==1 then
for capt1,capt2,capt3,capt4,capt5 in directive:gmatch("[^:%->%d]*(%d*)%s-(:?)%s-(%d*)%s-%->%s-(%-?)(%d*)")do
local stop,anchor
idx1,stop,anchor=tonumber(capt1),tonumber(capt3),tonumber(capt5)
if not stop and capt2~=":"then
if idx1 then
stop=false
else
goto continue
end
end
if idx1 then
idx1=1+(idx1-1)%cache_idx1
else
idx1=1
end
if stop then
stop=1+(stop-1)%cache_idx1
elseif stop==nil then
stop=cache_idx1
end
if anchor then
anchor=1+(anchor-1)%#navigate
end
for idx2=idx1,stop==false and idx1 or(idx1>stop and cache_idx1 or stop)do
local collected_database_index
if not single_destination and anchor then
site=assemble_Route(anchor,collected_routes,collected_names_en_route)
pointer=collected_routes[anchor][#collected_routes[anchor]]
collected_database_index=tonumber(collected_names_en_route[anchor][collected_routes[anchor][1]]:match("^root(%d+)$"))
end
local replica
if type(collected_individuals[idx2])=="userdata"and tostring(collected_individuals[idx2]):find("dual_Capable_Map")==1 then
replica=replicate(collected_individuals[idx2],false)
end
local entry=replica and"load("..table.concat(table.pack(serialise(replica,true,"\t")),"\n")..',"ReConstruct External Resources")()'or("%q"):format(collected_individuals[idx2])
local ambiguous,disambiguous
if anchor then
if single_destination then
ambiguous=names[navigate[anchor-1]]==names[navigate[anchor]]or names[navigate[1+anchor]]==names[navigate[anchor]]
else
local merged_keys=collected_routes[anchor][#collected_routes[anchor]]:lookUp(navigate[anchor])
if type(merged_keys)=="table"and merged_keys[unique_key_meta]=="merged_keys"then
ambiguous=true
end
end
if ambiguous and type(navigate[anchor])=="userdata"and tostring(navigate[anchor]):find("dual_Capable_Map")==1 then
if not env[collected_database_index or database_index][unique_key_parents]:lookUp(navigate[anchor])then
table.insert(env[collected_database_index or database_index][unique_key_parents],navigate[anchor])
end
disambiguous="root"..(collected_database_index or database_index)..".disambiguity["..env[collected_database_index or database_index][unique_key_parents]:lookUp(navigate[anchor]).."]"
end
end
local orientation,key,value
if anchor then
orientation=predicate_Orientation(pointer,names[navigate[anchor]],navigate[anchor])
if orientation then
key,value=names[navigate[anchor]],navigate[anchor]
elseif orientation==false then
key,value=navigate[anchor],names[navigate[anchor]]
else
local truncated=serialise(navigate[anchor],false)
if utf8.len(truncated)>127 then
truncated=truncated(":127")
end
warn("Internal DataBase Error: Pair - ",names[navigate[anchor]]," and ",truncated," - Do Not Belong to ",single_destination and names_en_route[database_index][routes[database_index][#routes[database_index]]]or collected_names_en_route[anchor][collected_routes[anchor][#collected_routes[anchor]]],"!")
goto continue
end
elseif directive:find("%s-k")==1 then
orientation=false
elseif directive:find("%s-v")==1 then
orientation=true
end
if(((type(collected_individuals[idx2])=="userdata"and tostring(collected_individuals[idx2]):find("dual_Capable_Map")==1)or directive:find("%s-v")==1)and not orientation)or(((type(collected_individuals[idx2])~="userdata"or tostring(collected_individuals[idx2]):find("dual_Capable_Map")~=1)and directive:find("%s-k")==1)and orientation)then
if not anchor then
pointer[replica or collected_individuals[idx2]]=false
catalogue[1+#catalogue]=site.."["..entry.."]=false"
elseif replica or not rawequal(collected_individuals[idx2],key)then
pointer[replica or collected_individuals[idx2]]=value
pointer[key]=nil
catalogue[1+#catalogue]=site.."["..entry.."]="..(orientation and site.."["..("%q"):format(key).."]"or("%q"):format(value))
catalogue[1+#catalogue]=site.."["..(orientation and("%q"):format(key)or disambiguous or(ambiguous and("%q"):format(key)or site.."["..("%q"):format(value).."]")).."]=nil"
if not orientation and type(navigate[anchor])=="userdata"and tostring(navigate[anchor]):find("dual_Capable_Map")==1 and pointer[navigate[anchor]]==nil then
recycled[navigate[anchor]]=1+(recycled[navigate[anchor]]or 0)
end
end
else
if not anchor then
pointer[1+#pointer]=replica or collected_individuals[idx2]
catalogue[1+#catalogue]=site.."[1+#"..site.."]="..entry
elseif replica or not rawequal(collected_individuals[idx2],value)then
pointer[key]=replica or collected_individuals[idx2]
catalogue[1+#catalogue]=site.."["..(orientation and("%q"):format(key)or disambiguous or(ambiguous and("%q"):format(key)or site.."["..("%q"):format(value).."]")).."]="..entry
if orientation and type(navigate[anchor])=="userdata"and tostring(navigate[anchor]):find("dual_Capable_Map")==1 and pointer[navigate[anchor]]==nil then
recycled[navigate[anchor]]=1+(recycled[navigate[anchor]]or 0)
end
end
end
if anchor then
anchor=anchor+(capt4=="-"and -1 or 1)
end
end
if stop and idx1>stop then
for idx2=1,stop do





end
end
::continue::
end
elseif collected_couples and single_destination then
for capt1,capt2,capt3 in directive:gmatch("[^:%d]*(%d*)%s-(:?)%s-(%d*)")do
local stop
idx1,stop=tonumber(capt1),tonumber(capt3)
if not stop and capt2~=":"then
if idx1 then
stop=false
else
goto continue
end
end
if idx1 then
idx1=1+cache_idx1+(idx1-1-cache_idx1)%(#collected_individuals-cache_idx1)
else
idx1=1+cache_idx1
end
if stop then
stop=1+cache_idx1+(stop-1-cache_idx1)%(#collected_individuals-cache_idx1)
elseif stop==nil then
stop=#collected_individuals
end
for idx2=idx1,stop==false and idx1 or(idx1>stop and #collected_individuals or stop)do
local replica_key,replica_value
if type(collected_individuals[idx2])=="table"or(type(collected_individuals[idx2])=="userdata"and tostring(collected_individuals[idx2]):find("dual_Capable_Map")==1)then
replica_key=replicate(collected_individuals[idx2],false)
elseif type(collected_couples[collected_individuals[idx2]])=="table"or(type(collected_couples[collected_individuals[idx2]])=="userdata"and tostring(collected_couples[collected_individuals[idx2]]):find("dual_Capable_Map")==1)then
replica_value=replicate(collected_couples[collected_individuals[idx2]],false)
end
if directive:find("%s-i")==1 then
local cache_old=not replica_value and pointer:nLookUp(collected_couples[collected_individuals[idx2]])
pointer[replica_value or collected_couples[collected_individuals[idx2]]]=replica_key or collected_individuals[idx2]
catalogue[1+#catalogue]=site.."["..(replica_value and"load("..table.concat(table.pack(serialise(replica_value,true,"\t")),"\n")..',"ReConstruct External Resources")()'or("%q"):format(collected_couples[collected_individuals[idx2]])).."]="..(replica_key and"load("..table.concat(table.pack(serialise(replica_key,true,"\t")),"\n")..',"ReConstruct External Resources")()'or("%q"):format(collected_individuals[idx2]))
if type(cache_old)=="userdata"and tostring(cache_old):find("dual_Capable_Map")==1 and pointer[cache_old]==nil then
recycled[cache_old]=1+(recycled[cache_old]or 0)
end
else
local cache_old=not replica_key and pointer:nLookUp(collected_individuals[idx2])
pointer[replica_key or collected_individuals[idx2]]=replica_value or collected_couples[collected_individuals[idx2]]
catalogue[1+#catalogue]=site.."["..(replica_key and"load("..table.concat(table.pack(serialise(replica_key,true,"\t")),"\n")..',"ReConstruct External Resources")()'or("%q"):format(collected_individuals[idx2])).."]="..(replica_value and"load("..table.concat(table.pack(serialise(replica_value,true,"\t")),"\n")..',"ReConstruct External Resources")()'or("%q"):format(collected_couples[collected_individuals[idx2]]))
if type(cache_old)=="userdata"and tostring(cache_old):find("dual_Capable_Map")==1 and pointer[cache_old]==nil then
recycled[cache_old]=1+(recycled[cache_old]or 0)
end
end
end
if stop and idx1>stop then
for idx2=1+cache_idx1,stop do





end
end
::continue::
end
else
return false
end
if not directive:match("nomore$")then
if indexed_keys then
indexed_keys=nil
end
goto another_glimpse
end
end

local function determine_Orientation(l,r)
if priority[type(l)]<priority[type(r)]then
return true
elseif priority[type(l)]==1 then
if l and not r then
return true
elseif not l and r then
return false
end
elseif priority[type(l)]==2 then
if priority[math.type(l)]<priority[math.type(r)]then
return true
elseif l~=r then
return l<r
end
elseif priority[type(l)]==3 then
return utf8.len(l)<utf8.len(r)
end
return false
end

::just_arrived::
if #navigate>0 then
for idx=1,#navigate do
names[navigate[idx]]=nil
end
navigate=table.move(reset,1,#navigate,1,navigate)
end
local idx1=0
if type(pointer[unique_key_meta])=="userdata"and tostring(pointer[unique_key_meta]):find("dual_Capable_Map")==1 and pointer[unique_key_meta][unique_key_meta]=="collected_nodes"then
for v,k in pointer[unique_key_meta]:__pairs(false)do
if type(v)~="boolean"and type(v)~="number"and type(v)~="string"and type(k)~="boolean"and type(k)~="number"and type(k)~="string"then
local contents1,contents2=serialise(k,false),serialise(v,false)
if utf8.len(contents1)>127 then
contents1=contents1(":127")
end
if utf8.len(contents2)>127 then
contents2=contents2(":127")
end
warn("Invalid DataBase Pair - ",contents1," and ",contents2," - They Have Been Recycled!")
recycled[v]=1+(recycled[v]or 0)
recycled[k]=1+(recycled[k]or 0)
pointer[k]=nil
goto continue
end
idx1=1+idx1
if type(v)=="userdata"and tostring(v):find("dual_Capable_Map")==1 then
local contents,content=serialise(v,false)
if utf8.len(contents)>127 then
contents=contents(":127")
end
if type(k)=="string"and utf8.len(k)>127 then
content=k(":127")
end
print(idx1,content or k,v,contents)
navigate[idx1]=v
names[v]=k
elseif type(k)=="userdata"and tostring(k):find("dual_Capable_Map")==1 then
local contents,content=serialise(k,false)
if utf8.len(contents)>127 then
contents=contents(":127")
end
if type(v)=="string"and utf8.len(v)>127 then
content=v(":127")
end
print(idx1,content or v,k,contents)
navigate[idx1]=k
names[k]=v
end
::continue::
end
end
local cache_idx1=idx1
if type(pointer[unique_key_parents])=="userdata"and tostring(pointer[unique_key_parents]):find("dual_Capable_Map")==1 and pointer[unique_key_parents][unique_key_meta]=="collected_nodes"then
for k,v in pointer[unique_key_parents]:__pairs(#pointer[unique_key_parents])do
local print_route={}
for idx2=1,#v[1]do
if recycled[v[1][idx2]]or(idx2>=#v[1]and not rawequal(v[1][idx2],pointer))then
pointer[unique_key_parents][k]=nil
goto continue
end
local node
if type(v[2][v[1][idx2]])=="string"and utf8.len(v[2][v[1][idx2]])>127 then
node=v[2][v[1][idx2]](":127")
end
print_route[1+#print_route]=node or tostring(v[2][v[1][idx2]])
end
idx1=1+idx1
names[v]=v[1][#v[1]-1]
print(idx1,names[v],table.concat(print_route,"»"))
navigate[idx1]=v
::continue::
end
end
if type(cache[unique_key_meta])=="userdata"and tostring(cache[unique_key_meta]):find("dual_Capable_Map")==1 and cache[unique_key_meta][unique_key_meta]=="collected_nodes"then
local cache_v1
for v1,k1 in cache[unique_key_meta]:__pairs(false)do
if rawequal(cache_v1,v1)then
goto value_repetition
end
if type(v1)=="userdata"and tostring(v1):find("dual_Capable_Map")==1 and type(v1[unique_key_parents])=="userdata"and tostring(v1[unique_key_parents]):find("dual_Capable_Map")==1 and v1[unique_key_parents][unique_key_meta]=="collected_nodes"then
for k2,v2 in v1[unique_key_parents]:__pairs(#v1[unique_key_parents])do
local print_route={}
for idx2=1,#v2[1]do
if recycled[v2[1][idx2]]or(idx2>=#v2[1]and not rawequal(v2[1][idx2],v1))then
local expired_foothold
if idx2>=#v2[1]and rawequal(v2[1][idx2],v1)then
cache[k1]=nil
expired_foothold=true
end
v1[unique_key_parents][k2]=nil
if expired_foothold then
goto continue1
end
goto continue2
end
local node
if type(v2[2][v2[1][idx2]])=="string"and utf8.len(v2[2][v2[1][idx2]])>127 then
node=v2[2][v2[1][idx2]](":127")
end
print_route[1+#print_route]=node or tostring(v2[2][v2[1][idx2]])
end
idx1=1+idx1
print(idx1,k1,v1,table.concat(print_route,"»"))
navigate[idx1]=replicate(v2,2)
names[navigate[idx1]]=navigate[idx1][1][#navigate[idx1][1]]
table.insert(navigate[idx1][1],false)
::continue2::
end
end
::value_repetition::
if type(k1)=="userdata"and tostring(k1):find("dual_Capable_Map")==1 and type(k1[unique_key_parents])=="userdata"and tostring(k1[unique_key_parents]):find("dual_Capable_Map")==1 and k1[unique_key_parents][unique_key_meta]=="collected_nodes"then
for k2,v2 in k1[unique_key_parents]:__pairs(#k1[unique_key_parents])do
local print_route={}
for idx2=1,#v2[1]do
if recycled[v2[1][idx2]]or(idx2>=#v2[1]and not rawequal(v2[1][idx2],k1))then
local expired_foothold
if idx2>=#v2[1]and rawequal(v2[1][idx2],k1)then
cache[k1]=nil
expired_foothold=true
end
k1[unique_key_parents][k2]=nil
if expired_foothold then
goto continue1
end
goto continue2
end
local node
if type(v2[2][v2[1][idx2]])=="string"and utf8.len(v2[2][v2[1][idx2]])>127 then
node=v2[2][v2[1][idx2]](":127")
end
print_route[1+#print_route]=node or tostring(v2[2][v2[1][idx2]])
end
idx1=1+idx1
print(idx1,"root"..v1,k1,table.concat(print_route,"»"))
navigate[idx1]=replicate(v2,2)
names[navigate[idx1]]=navigate[idx1][1][#navigate[idx1][1]]
table.insert(navigate[idx1][1],false)
::continue2::
end
end
cache_v1=v1
::continue1::
end
end
do
local print_route={}
for idx2=1,#routes[database_index]do
local node
if type(names_en_route[database_index][routes[database_index][idx2]])=="string"and utf8.len(names_en_route[database_index][routes[database_index][idx2]])>127 then
node=names_en_route[database_index][routes[database_index][idx2]](":127")
end
print_route[1+#print_route]=node or tostring(names_en_route[database_index][routes[database_index][idx2]])
end
print(table.concat(print_route,"»"))
end
for idx2=1,#on_display do
print(on_display[idx2])
end
if not ambiguity_occurred and #catalogue>cache_catalogue_size then
for idx2=1+cache_catalogue_size,#catalogue do
if catalogue[idx2]:match("root%d+.disambiguity%[")then
ambiguity_occurred=true
break
end
end
cache_catalogue_size=#catalogue
end
if ambiguity_occurred then
warn("⚠️Ambiguity Occurred Earlier - Dump DataBases before Too Late!")
end
::cut_short1::
print("Standing By:")
local directive
idx1,directive=pcall(io.input().read,io.input())
if not idx1 or not directive then
if idx1 then
io.input():close()
end
directive=io.input(io.stdin):read()
end
if directive:find("back")==1 then
idx1=tonumber(directive:match("^back%s-(%d+)$"))
if idx1 then
idx1=idx1%#routes[database_index]
else
idx1=1
end
local cache_pointer=pointer
if idx1<#routes[database_index]then
for idx2=1,idx1 do
local poppy_tail=table.remove(routes[database_index])
names_en_route[database_index][poppy_tail]=nil
end
pointer=routes[database_index][#routes[database_index]]
else
warn("You're Already at Root of the DataBase!")
goto cut_short1
end
if dispose_on_leave and #routes[database_index]>1 and type(cache_pointer[unique_key_parents])=="userdata"and tostring(cache_pointer[unique_key_parents]):find("dual_Capable_Map")==1 and cache_pointer[unique_key_parents][unique_key_meta]=="collected_nodes"and not rawequal(recycled[recycled[cache_pointer[unique_key_parents]]],cache_pointer[unique_key_parents])then
cache_pointer[unique_key_parents]=require(module_name).c_UpBinds.dual_Capable_Map{[unique_key_meta]="collected_nodes"}
recycled[1+#recycled]=cache_pointer[unique_key_parents]
recycled[cache_pointer[unique_key_parents]]=#recycled
end
elseif directive:find("swap")==1 then
local cache_pointer=pointer
if #env>1 then
idx1=tonumber(directive:match("^swap%s-(%d+)$"))
if idx1 and 1+(idx1-1)%#env~=database_index then
database_index=1+(idx1-1)%#env
else
database_index=1+database_index%#env
end
if not routes[database_index]or not names_en_route[database_index]then
routes[database_index]={env[database_index]}
names_en_route[database_index]={[env[database_index]]="root"..database_index}
end
pointer=routes[database_index][#routes[database_index]]
else
warn("You've Not Another DataBase to Switch to!")
goto cut_short1
end
if dispose_on_leave and #routes[database_index]>1 and type(cache_pointer[unique_key_parents])=="userdata"and tostring(cache_pointer[unique_key_parents]):find("dual_Capable_Map")==1 and cache_pointer[unique_key_parents][unique_key_meta]=="collected_nodes"and not rawequal(recycled[recycled[cache_pointer[unique_key_parents]]],cache_pointer[unique_key_parents])then
cache_pointer[unique_key_parents]=require(module_name).c_UpBinds.dual_Capable_Map{[unique_key_meta]="collected_nodes"}
recycled[1+#recycled]=cache_pointer[unique_key_parents]
recycled[cache_pointer[unique_key_parents]]=#recycled
end
elseif directive=="new"then
database_index=1+#env
env[database_index]=require(module_name).c_UpBinds.dual_Capable_Map{[unique_key_parents]=require(module_name).c_UpBinds.dual_Capable_Map{[unique_key_meta]="collected_nodes"}}
routes[database_index]={env[database_index]}
names_en_route[database_index]={[env[database_index]]="root"..database_index}
catalogue[1+#catalogue]='root'..database_index..'=require(module_name).c_UpBinds.dual_Capable_Map{disambiguity=require(module_name).c_UpBinds.dual_Capable_Map{[select(2,require(module_name).c_UpBinds.dual_Capable_Map())]="collected_nodes"}}'
catalogue[1+#catalogue]="n="..database_index
local cache_pointer=pointer
pointer=env[database_index]
if dispose_on_leave and #routes[database_index]>1 and type(cache_pointer[unique_key_parents])=="userdata"and tostring(cache_pointer[unique_key_parents]):find("dual_Capable_Map")==1 and cache_pointer[unique_key_parents][unique_key_meta]=="collected_nodes"and not rawequal(recycled[recycled[cache_pointer[unique_key_parents]]],cache_pointer[unique_key_parents])then
cache_pointer[unique_key_parents]=require(module_name).c_UpBinds.dual_Capable_Map{[unique_key_meta]="collected_nodes"}
recycled[1+#recycled]=cache_pointer[unique_key_parents]
recycled[cache_pointer[unique_key_parents]]=#recycled
end
elseif directive=="lay"then
local empty=true
if cache[unique_key_extra]=="fresh_cache"then
warn("Nothing Has Been Cached Yet!")
goto cut_short1
else
for k,v in pairs(cache)do
empty=false
break
end
end
::presently_empty::
if empty then
warn("Cache Is Empty!")
goto cut_short1
end
empty=lay_by_Index("Lay")
if empty then
goto presently_empty
elseif empty==false then
warn("Not Supposed to Happen - Go Check Your Program!")
end
elseif directive:find("cache")==1 then
if cache_idx1<=0 then
warn("Nothing Is Here to Cache!")
goto cut_short1
end
if cache[unique_key_extra]=="fresh_cache"then
cache[unique_key_extra]=nil
end
cache_by_Index(directive,"cache",cache_idx1)
elseif directive==""then
::been_awhile::
if #navigate>0 then
for idx2=1,#navigate do
names[navigate[idx2]]=nil
end
navigate=table.move(reset,1,#navigate,1,navigate)
end
if flush and #on_display>0 then
on_display=table.move(on_display,1+flush,#on_display,1,on_display)
on_display=table.move(reset,1,flush,1+#on_display-flush,on_display)
flush=nil
end
idx1=0
for v,k in pointer:__pairs(false)do
if type(v)~="boolean"and type(v)~="number"and type(v)~="string"and type(k)~="boolean"and type(k)~="number"and type(k)~="string"then
local contents1,contents2=serialise(k,false),serialise(v,false)
if utf8.len(contents1)>127 then
contents1=contents1(":127")
end
if utf8.len(contents2)>127 then
contents2=contents2(":127")
end
warn("Invalid DataBase Pair - ",contents1," and ",contents2," - They Have Been Recycled!")
recycled[v]=1+(recycled[v]or 0)
recycled[k]=1+(recycled[k]or 0)
pointer[k]=nil
goto continue
end
idx1=1+idx1
if type(v)=="userdata"and tostring(v):find("dual_Capable_Map")==1 then
local contents,content=serialise(v,false)
if utf8.len(contents)>127 then
contents=contents(":127")
end
if type(k)=="string"and utf8.len(k)>127 then
content=k(":127")
end
print(idx1,content or k,v,contents)
navigate[idx1]=v
names[v]=k
elseif type(k)=="userdata"and tostring(k):find("dual_Capable_Map")==1 then
local contents,content=serialise(k,false)
if utf8.len(contents)>127 then
contents=contents(":127")
end
if type(v)=="string"and utf8.len(v)>127 then
content=v(":127")
end
print(idx1,content or v,k,contents)
navigate[idx1]=k
names[k]=v
else
local couple={k,v}
table.sort(couple,determine_Orientation)
local content1,content2
if type(couple[1])=="string"and utf8.len(couple[1])>127 then
content1=couple[1](":127")
end
if type(couple[2])=="string"and utf8.len(couple[2])>127 then
content2=couple[2](":127")
end
print(idx1,content1 or couple[1],content2 or couple[2])
navigate[idx1]=couple[2]
names[couple[2]]=couple[1]
end
::continue::
end
for idx2=1,#on_display do
print(on_display[idx2])
end
::cut_short2::
print("Stand Ready:")
idx1,directive=pcall(io.input().read,io.input())
if not idx1 or not directive then
if idx1 then
io.input():close()
end
directive=io.input(io.stdin):read()
end
if directive==""then
goto just_arrived
elseif directive:find("delete")==1 then
if #navigate<=0 then
warn("Nothing Is Here to Delete!")
goto cut_short2
end
delete_by_Index(directive)
elseif directive=="paste"then
local empty=true
if cache[unique_key_extra]=="fresh_cache"then
warn("Nothing Has Been Cached Yet!")
goto cut_short2
else
for k,v in pairs(cache)do
empty=false
break
end
end
::presently_empty::
if empty then
warn("Cache Is Empty!")
goto cut_short2
end
empty=lay_by_Index("Paste")
if empty then
goto presently_empty
elseif empty==false then
warn("Not Supposed to Happen - Go Check Your Program!")
end
elseif directive:find("copy")==1 then
if #navigate<=0 then
warn("Nothing Is Here to Copy!")
goto cut_short2
end
if cache[unique_key_extra]=="fresh_cache"then
cache[unique_key_extra]=nil
end
cache_by_Index(directive,"copy")
elseif directive=="peruse"then
if #on_display>0 then
for idx2=1,#on_display do
local pipe=io.popen("less -F -R -S","w")
pipe:write(on_display[idx2])
pipe:close()
end
else
warn("Nothing Is on Display!")
goto cut_short2
end
elseif directive:find("display")==1 then
if #navigate<=0 then
warn("Nothing Is Here to Display!")
goto cut_short2
end
if directive:match("flush$")then
flush=#on_display
end
display_by_Index(directive)
elseif directive:find("edit")==1 then
if #navigate<=0 then
warn("Nothing Is Here to Edit!")
goto cut_short2
end
local feedback=edit_by_Index(directive)
if feedback then
warn(feedback)
elseif feedback==false then
warn("That Would Form a Invalid DataBase Pair!")
end
elseif directive:find("add")==1 then
if add_Occasionally_by_Index(directive)==false then
warn("That Would Form a Invalid DataBase Pair!")
end
elseif directive:find("import")==1 then
local feedback=import_by_Index(directive:match("^import%s-[_%a][_%w]*$"))
if feedback then
warn("Nothing Has Been Collected to Import!")
elseif feedback==false then
warn("Not Supposed to Happen - Go Check Your Program!")
end
elseif directive:find("export")==1 then
if #navigate<=0 then
warn("Nothing Is Here to Export!")
goto cut_short2
end
export_by_Index(directive)
end
goto been_awhile
elseif directive=="dump"then
ambiguity_occurred=true
goto before_exit
elseif directive=="yield"then
idx1,dispose_on_leave=coroutine.yield()
if dispose_on_leave then
recycled=table.move(reset,1,#recycled,1,recycled)
end
idx1=math.tointeger(tonumber(idx1))
if idx1 and 1+(idx1-1)%#env~=database_index then
database_index=1+(idx1-1)%#env
end
if not routes[database_index]or not names_en_route[database_index]then
routes[database_index]={env[database_index]}
names_en_route[database_index]={[env[database_index]]="root"..database_index}
end
pointer=routes[database_index][#routes[database_index]]
elseif directive=="quit"then
goto before_exit
elseif math.tointeger(tonumber(directive))then
if #navigate<=0 then
warn("Nothing Is Here to Diverge to!")
goto cut_short1
end
idx1=1+(math.tointeger(tonumber(directive))-1)%#navigate
local cache_pointer=pointer
if idx1>cache_idx1 then
database_index=tonumber(navigate[idx1][2][navigate[idx1][1][1]]:match("^root(%d+)$"))
names_en_route[database_index]=replicate(navigate[idx1][2],1)
routes[database_index]=replicate(navigate[idx1][1],1)
names_en_route[database_index][routes[database_index][#routes[database_index]]]=nil
table.remove(routes[database_index])
pointer=names[navigate[idx1]]
else
if type(navigate[idx1][unique_key_parents])~="userdata"or tostring(navigate[idx1][unique_key_parents]):find("dual_Capable_Map")~=1 or navigate[idx1][unique_key_parents][unique_key_meta]~="collected_nodes"then
navigate[idx1][unique_key_parents]=require(module_name).c_UpBinds.dual_Capable_Map{[unique_key_meta]="collected_nodes"}
end
if names[navigate[idx1-1]]==names[navigate[idx1]]or names[navigate[1+idx1]]==names[navigate[idx1]]then
if not env[database_index][unique_key_parents]:lookUp(navigate[idx1])then
table.insert(env[database_index][unique_key_parents],navigate[idx1])
end
names_en_route[database_index][navigate[idx1]]="root"..database_index..".disambiguity["..env[database_index][unique_key_parents]:lookUp(navigate[idx1]).."]"
else
names_en_route[database_index][navigate[idx1]]=names[navigate[idx1]]
end
table.insert(routes[database_index],navigate[idx1])
local route_representation=assemble_Route(nil,nil,nil,true)
if not navigate[idx1][unique_key_parents]:nLookUp(route_representation)then
navigate[idx1][unique_key_parents][route_representation]={replicate(routes[database_index],1),replicate(names_en_route[database_index],1)}
end
pointer=navigate[idx1]
end
if dispose_on_leave and #routes[database_index]>1 and type(cache_pointer[unique_key_parents])=="userdata"and tostring(cache_pointer[unique_key_parents]):find("dual_Capable_Map")==1 and cache_pointer[unique_key_parents][unique_key_meta]=="collected_nodes"and not rawequal(recycled[recycled[cache_pointer[unique_key_parents]]],cache_pointer[unique_key_parents])then
cache_pointer[unique_key_parents]=require(module_name).c_UpBinds.dual_Capable_Map{[unique_key_meta]="collected_nodes"}
recycled[1+#recycled]=cache_pointer[unique_key_parents]
recycled[cache_pointer[unique_key_parents]]=#recycled
end
end
goto just_arrived
::before_exit::
if ambiguity_occurred then
for idx2=1,#env do
env[idx2].disambiguity=env[idx2][unique_key_parents]
io.output((io.popen("find /sdcard/Download/Cave -type d 2>/dev/null"):read()and"/sdcard/Download/Cave/"or"./")..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone("pack with lib",interface.renewed)..keystone("pack with lib",interface.version)..idx2):write(table.concat(table.pack(serialise(env[idx2],true,"\t")),"\n"))
io.output():close()
end
return true
end
io.output((io.popen("find /sdcard/Download/Cave -type d 2>/dev/null"):read()and"/sdcard/Download/Cave/"or"./")..os.date("%Y-%m-%d %H：%M：%S")):write(table.concat(catalogue,"\n"))
io.output():close()
end
--range[6][5]

--autorun part 1:
if status~="under maintenance"then
local line_number,bracket_number,ranges,modulos=0,0,{},{}
for code_line in io.input(find_self):lines()do
line_number=1+line_number
local found,_,capture1,capture2=code_line:find("%s-%-%-%s-range%s-%[%s-(%d+)%s-%]%s-%[%s-(%d+)%s-%]%s-$")
if found and found<=1 then
bracket_number=tonumber(capture1)>bracket_number and tonumber(capture1)or bracket_number
ranges[tonumber(capture1)]=ranges[tonumber(capture1)]or{}
ranges[tonumber(capture1)][keystone(tonumber(capture1),tonumber(capture2))]=line_number
modulos[tonumber(capture1)]=modulos[tonumber(capture1)]or{}
if modulos[tonumber(capture1)][1]then
modulos[tonumber(capture1)][2]=tonumber(capture2)%6
else
modulos[tonumber(capture1)][1]=tonumber(capture2)%6
end
end
end
line_number,status=0,"checksum"
io.output(where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version))
io.input():seek("set")
local code_line
repeat
local next_line=io.input():read()
if code_line then
line_number=1+line_number
if ranges[bracket_number]and line_number>math.max(ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][1])],ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][2])])then
bracket_number=bracket_number-1
while bracket_number>0 and not ranges[bracket_number]do
bracket_number=bracket_number-1
end
end
if code_line:find("%s-%-%-%s-range%s-%[%s-(%d+)%s-%]%s-%[%s-(%d+)%s-%]%s-$")~=1 then
if ranges[bracket_number]and line_number>=math.min(ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][1])],ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][2])])and line_number<=math.max(ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][1])],ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][2])])then
goto skip_line
end
if code_line:find("%s-local%s-status%s-=%s-\"%s-.-%s-\"%s-;%s-$")==1 then
io.write('local status="',status,'";',next_line and"\n"or"")
elseif code_line:find("%s-local%s-digestH%s-=%s-.-%s-;%s-$")==1 then
io.write("local digestH=0;",next_line and"\n"or"")
elseif code_line:find("%s-local%s-digestM%s-=%s-.-%s-;%s-$")==1 then
io.write("local digestM=0;",next_line and"\n"or"")
else
io.write(code_line,next_line and"\n"or"")
end
::skip_line::
end
end
code_line=next_line
until not next_line
io.output():close()
local standard_handle,household_sum,mainprogram_sum=io.input(),directory_CheckSum(where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version),where),0
if os.getenv("ANDROID_ROOT")=="/system"and io.popen("find $PREFIX/local/c_M/lua_Console -type f 2>/dev/null"):read()==io.popen("echo $PREFIX"):read().."/local/c_M/lua_Console"then
mainprogram_sum=directory_CheckSum(io.popen("echo $PREFIX"):read().."/local/c_M/lua_Console",io.popen("echo $PREFIX"):read().."/local/c_M/")
end
if household_sum==digestH and(os.getenv("ANDROID_ROOT")~="/system"or mainprogram_sum==digestM)then
os.remove(where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version))
else
status=cstatus
if status=="ready for run"or(status=="checksum"and digestH==digestM)then
warn("⚠️Main program, crucial chunks of the library or both have been tampered - deploy, run or whatever at your own risk!")
elseif status=="off maintenance"then
status="checksum"
os.remove(where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version))
local time_table=os.date("*t")
time_table.hour=nil
time_table.min=nil
time_table.sec=nil
if os.time(time_table)~=interface.renewed then
interface.renewed=os.time(time_table)
end
interface.version,line_number,bracket_number,ranges,modulos=2^(-6)+interface.version,0,0,{},{}
io.input(standard_handle):seek("set")
for code_line in io.input():lines()do
line_number=1+line_number
local found,_,capture1,capture2=code_line:find("%s-%-%-%s-range%s-%[%s-(%d+)%s-%]%s-%[%s-(%d+)%s-%]%s-$")
if found and found<=1 then
bracket_number=tonumber(capture1)>bracket_number and tonumber(capture1)or bracket_number
ranges[tonumber(capture1)]=ranges[tonumber(capture1)]or{}
ranges[tonumber(capture1)][keystone(tonumber(capture1),tonumber(capture2))]=line_number
modulos[tonumber(capture1)]=modulos[tonumber(capture1)]or{}
if modulos[tonumber(capture1)][1]then
modulos[tonumber(capture1)][2]=tonumber(capture2)%6
else
modulos[tonumber(capture1)][1]=tonumber(capture2)%6
end
end
end
line_number,code_line=0,nil
io.output(where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version))
io.input():seek("set")
repeat
local next_line=io.input():read()
if code_line then
line_number=1+line_number
if ranges[bracket_number]and line_number>math.max(ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][1])],ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][2])])then
bracket_number=bracket_number-1
while bracket_number>0 and not ranges[bracket_number]do
bracket_number=bracket_number-1
end
end
if code_line:find("%s-%-%-%s-range%s-%[%s-(%d+)%s-%]%s-%[%s-(%d+)%s-%]%s-$")~=1 then
if ranges[bracket_number]and line_number>=math.min(ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][1])],ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][2])])and line_number<=math.max(ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][1])],ranges[bracket_number][keystone(bracket_number,modulos[bracket_number][2])])then
goto skip_line
end
if code_line:find("%s-version%s-=%s-.-%s-,%s-$")==1 then
io.write("version=",interface.version,",",next_line and"\n"or"")
elseif code_line:find("%s-renewed%s-=%s-.-%s-,%s-$")==1 then
io.write("renewed=",interface.renewed,",",next_line and"\n"or"")
elseif code_line:find("%s-local%s-status%s-=%s-\"%s-.-%s-\"%s-;%s-$")==1 then
io.write('local status="',status,'";',next_line and"\n"or"")
elseif code_line:find("%s-local%s-digestH%s-=%s-.-%s-;%s-$")==1 then
io.write("local digestH=0;",next_line and"\n"or"")
elseif code_line:find("%s-local%s-digestM%s-=%s-.-%s-;%s-$")==1 then
io.write("local digestM=0;",next_line and"\n"or"")
else
io.write(code_line,next_line and"\n"or"")
end
::skip_line::
end
end
code_line=next_line
until not next_line
io.output():close()
household_sum=directory_CheckSum(where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version),where)

--autorun part 2:
status="maint by c"
local script1,script2=("%q"):format([===[local cache_package_path=package.path
package.path=]===]..("%q"):format(find_self).."\nlocal success1,module_instance=pcall(require,'"..required_name..[===[')
if success1 then
module_name=']===]..required_name..[===['
else
function directory_Match(directory)
]===]..dir_mat.."\nend\nlocal success2,module_finder,module_path,module_location=pcall(directory_Match,"..("%q"):format('"'..(os.getenv("ANDROID_ROOT")=="/system"and where:match("^(.-/)[^/]+/$")..'" -type f'or io.popen('cd /D "'..where..'.." && cd'):read()..'\\" /A:-D'))..[===[)
if success2 then
local gen_func,invar_state,ctrl_var_init
if module_finder then
if not module_path then
gen_func,invar_state,ctrl_var_init=ipairs(module_finder)
end
for i,v in module_path and module_finder:lines()or gen_func,not module_path and invar_state or nil,not module_path and ctrl_var_init or nil do
if(module_path or(i%3==2 and module_finder[1+i]))and(module_path and i or v):match('%-'..]===]..(digestH==digestM and interface.version or cversion)..[===[)then
package.path=module_path and i or v
if os.getenv('ANDROID_ROOT')=='/system'then
module_name=(module_path and i or v):match('/([^/]-)%-'..]===]..(digestH==digestM and interface.version or cversion)..[===[)
elseif os.getenv('OS')=='Windows_NT'then
module_name=(module_path and i or v):match('\\([^\\]-)%-'..]===]..(digestH==digestM and interface.version or cversion)..[===[)
end
break
end
end
if module_name then
module_instance=require(module_name)
else
module_finder,module_path,module_location=directory_Match(false)
if module_finder then
if not module_path then
gen_func,invar_state,ctrl_var_init=ipairs(module_finder)
end
for i,v in module_path and module_finder:lines()or gen_func,not module_path and invar_state or nil,not module_path and ctrl_var_init or nil do
if(module_path or(i%3==2 and module_finder[1+i]))and(module_path and i or v):match('%-'..]===]..(digestH==digestM and interface.version or cversion)..[===[)then
package.path=module_path and i or v
if os.getenv('ANDROID_ROOT')=='/system'then
module_name=(module_path and i or v):match('/([^/]-)%-'..]===]..(digestH==digestM and interface.version or cversion)..[===[)
elseif os.getenv('OS')=='Windows_NT'then
module_name=(module_path and i or v):match('\\([^\\]-)%-'..]===]..(digestH==digestM and interface.version or cversion)..[===[)
end
break
end
end
if module_name then
module_instance=require(module_name)
else
error('Unable to Find Module Corresponding to Version: '..]===]..(digestH==digestM and interface.version or cversion)..[===[ ..'!')
end
end
end
end
end
end
package.path=cache_package_path
return module_instance]===]):gsub("\n","n\\\n"),("%q"):format([===[::await_task::
if type(task_queue)~='table'and math.tointeger(tonumber(task_serial))then
local extra_globals={}
for k,v in next,_ENV do
if not rawequal(require(module_name).c_UpBinds.global_snapshot[k],v)then
local contents1,contents2
if type(k)=='table'or(type(k)=='userdata'and tostring(k):find('dual_Capable_Map')==1)then
contents1=require(module_name).serialise(k,false)
if utf8.len(contents1)>127 then
contents1=contents1(':127')
end
elseif type(k)=='string'and utf8.len(k)>127 then
contents1=k(':127')
end
if type(v)=='table'or(type(v)=='userdata'and tostring(v):find('dual_Capable_Map')==1)then
contents2=require(module_name).serialise(v,false)
if utf8.len(contents2)>127 then
contents2=contents2(':127')
end
elseif type(v)=='string'and utf8.len(v)>127 then
contents2=v(':127')
end
extra_globals[1+#extra_globals]=(contents1 or tostring(k))..' '..(contents2 or tostring(v))
end
end
print('The Following Non-Standard Globals Exist:')
print(table.concat(extra_globals,'\t'))
::step_back::
print('Task #'..task_serial..' - Please Enter Integer to Set Segment at, Directory to Redirect to or Globals to Serialise, Either to Proceed UnDisrupted or QUIT to Opt Out:')
local quit,directives,handle=pcall(io.input().read,io.input())
if quit and directives then
quit=nil
else
if quit then
quit=nil
io.input():close()
end
directives=io.input(io.stdin):read()
end
if directives=='QUIT'then
quit=true
goto cut_short
elseif directives==''or not directives then
goto cut_short
elseif tonumber(directives)then
segment=tonumber(directives)
goto step_back
else
local redirectory
if os.getenv('ANDROID_ROOT')=='/system'then
redirectory=io.popen('find '..directives..' -type d 2>/dev/null'):read()
elseif os.getenv('OS')=='Windows_NT'and os.execute('dir '..directives..' /A:D /S /B')then
local cache_directives=directives
if directives:find('".-"$')==1 then
cache_directives=directives:sub(2,-2)
end
redirectory=io.popen('dir '..directives..' /A:D /S /B'):read()or cache_directives
if redirectory:find(cache_directives)==1 then
redirectory=cache_directives
end
end
if redirectory then
local attempt,feedback=require(module_name).c_UpBinds.chdir(redirectory)
if attempt then
print('Working Directory Redirected to '..redirectory..'!')
goto step_back
end
warn(feedback,' - Proceeding with Working Directory UnAltered...')
end
goto cut_short
end
for token in directives:gmatch('%S+')do
if token=='QUIT'then
quit=true
elseif load('return '..token,'Reach from Global Environment')()~=nil then
if not handle then
handle=os.getenv('ANDROID_ROOT')=='/system'and io.open(io.popen('find /sdcard/Download/Codes/ -type d 2>/dev/null'):read()and'/sdcard/Download/Codes/Memory Dump'or'./Memory Dump','a+')or io.open('.\\Memory Dump','a+')
end
handle:write(table.concat(table.pack(require(module_name).serialise(load('return '..token,'Reach from Global Environment')(),true,'\t')),'\n'),'\n')
end
end
if handle then
handle:close()
end
::cut_short::
if quit then
error('Making Exit...')
end
end
if type(task_queue)~='table'or #task_queue<=0 then
if os.getenv('ANDROID_ROOT')=='/system'then
local script_finder,script_path,script_location=(directory_Match or require(module_name).directory_Match)()
if script_location then
if type(task_queue)~='table'then
return loadfile(script_path)
end
task_queue[1+#task_queue]=loadfile(script_path)
elseif script_finder then
local gen_func,invar_state,ctrl_var_init
if not script_path then
gen_func,invar_state,ctrl_var_init=ipairs(script_finder)
end
for i,v in script_path and script_finder:lines()or gen_func,not script_path and invar_state or nil,not script_path and ctrl_var_init or nil do
if script_path or(i%3==2 and script_finder[1+i])then
if(script_path and i or v):match('/[^/%.]-script[^/%.]-%.?[^/%.]-$')then
if type(task_queue)~='table'then
task_queue={}
end
task_queue[1+#task_queue]=loadfile(script_path and i or v)
end
end
end
end
if type(task_queue)~='table'then
warn('No Valid Script File Found: Either among BootStrapped Files or under Current Working Directory - ',io.popen('pwd'):read(),' - Please Try Again!')
return false
end
elseif os.getenv('OS')=='Windows_NT'then
local script_path=os.getenv('script_path')
if script_path then
if script_path:find('".-"$')==1 then
script_path=script_path:sub(2,-2)
end
if type(task_queue)~='table'then
return loadfile(script_path)
end
task_queue[1+#task_queue]=loadfile(script_path)
else
local script_finder,script_location
script_finder,script_path,script_location=(directory_Match or require(module_name).directory_Match)(false)
if script_location then
if type(task_queue)~='table'then
return loadfile(script_path)
end
task_queue[1+#task_queue]=loadfile(script_path)
elseif script_finder then
local gen_func,invar_state,ctrl_var_init
if not script_path then
gen_func,invar_state,ctrl_var_init=ipairs(script_finder)
end
for i,v in script_path and script_finder:lines()or gen_func,not script_path and invar_state or nil,not script_path and ctrl_var_init or nil do
if script_path or(i%3==2 and script_finder[1+i])then
if(script_path and i or v):match('\\[^\\%.]-script[^\\%.]-%.?[^\\%.]-$')then
if type(task_queue)~='table'then
task_queue={}
end
task_queue[1+#task_queue]=loadfile(script_path and i or v)
end
end
end
end
end
if type(task_queue)~='table'then
warn('No Valid Script File Found: Either According to Environment Variable - script_path - or under Current Working Directory - ',io.popen('cd'):read(),' - Please Try Again!')
return false
end
end
end
if type(task_queue)=='table'and #task_queue>0 then
print('Task Run #'..(task_serial or 1)..':')
return table.remove(task_queue,1)
elseif type(task_queue)=='table'then
task_queue=nil
goto await_task
end]===]):gsub("\n","n\\\n")
local script_len=math.max(#script1,#script2)
io.output(where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version)):write([===[
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<time.h>
#include<errno.h>
#include<pthread.h>
#include<setjmp.h>
#include<signal.h>
#include<execinfo.h>
#include<fcntl.h>
#include<sys/stat.h>
#include<lua.h>
#include<lualib.h>
#include<lauxlib.h>

#define CUSTOM_GOTO(LABEL) do{\
lua_pop(L,1);\
goto LABEL;\
}while(0)
#define RAISE_APPROPRIATE_LUA_ERROR(OCCASIONAL_FMSTR) do{\
if(lua_isstring(L,-1))\
luaL_error(L,OCCASIONAL_FMSTR,lua_tostring(L,-1));\
else \
lua_error(L);\
}while(0)
#define CLEAR_STACK(HIND_TOP) ({\
lua_settop(L,HIND_TOP);\
continue;\
})
#define PCALL_ERRH(NARGS,NRESULTS,ERRH,PREPEND_FMSTR,ON_ERR,DICTATION) ({\
if(lua_pcall(L,NARGS,NRESULTS,ERRH)!=LUA_OK){\
printf(PREPEND_FMSTR,lua_isstring(L,-1)?lua_tostring(L,-1):luaL_typename(L,-1));\
ON_ERR(DICTATION);\
}\
})
#define DOSTR_ERRH(SCRIPT,PREPEND_FMSTR,ON_ERR,DICTATION) ({\
if(luaL_dostring(L,SCRIPT)!=LUA_OK){\
printf(PREPEND_FMSTR,lua_isstring(L,-1)?lua_tostring(L,-1):luaL_typename(L,-1));\
ON_ERR(DICTATION);\
}\
})

struct ref_couple{
int ref;
int ivrs_ref;
};

int set_Field(lua_State *L){
if(lua_rawequal(L,lua_upvalueindex(1),1))
goto dummy_userdata;
lua_settop(L,3);
struct ref_couple *refs=luaL_checkudata(L,1,"dual_Capable_Map");
lua_rawgeti(L,LUA_REGISTRYINDEX,refs->ref);
lua_rawgeti(L,LUA_REGISTRYINDEX,refs->ivrs_ref);
if(lua_pushvalue(L,2),lua_rawget(L,-3),!lua_rawequal(L,-4,-1)){
_Bool recurse=1;
if(lua_isnil(L,-1)){
lua_pop(L,1);
goto clean_is_unnecessary;
}else if((lua_pushvalue(L,-1),lua_rawget(L,5))==LUA_TTABLE &&(lua_pushvalue(L,lua_upvalueindex(2)),lua_rawget(L,-2))==LUA_TSTRING &&(lua_pushliteral(L,"merged_keys"),lua_rawequal(L,-2,-1))){
lua_pushliteral(L,"inverse_");
lua_insert(L,-2);
lua_concat(L,2);
lua_rawget(L,-3);
lua_pushvalue(L,2);
lua_rawget(L,-2);
lua_pushvalue(L,2);
lua_pushnil(L);
lua_rawset(L,-4);
lua_pushnil(L);
lua_next(L,-3);
lua_copy(L,-2,-1);
if(!lua_next(L,-4)){
lua_copy(L,6,-2);
lua_rawset(L,5);
}else
luaL_unref(L,7,luaL_checkinteger(L,-4));
}else{
lua_pushnil(L);
lua_copy(L,6,-2);
lua_rawset(L,5);
}
if((lua_pushvalue(L,lua_upvalueindex(2)),lua_gettable(L,1))==LUA_TSTRING &&(lua_pushliteral(L,"collected_nodes"),lua_rawequal(L,-2,-1)))
recurse=0;
lua_settop(L,6);
if(recurse &&(lua_istable(L,-1)|| luaL_testudata(L,-1,"dual_Capable_Map")|| lua_istable(L,2)|| luaL_testudata(L,2,"dual_Capable_Map"))){
if((lua_pushvalue(L,lua_upvalueindex(2)),lua_rawget(L,4))==LUA_TUSERDATA && luaL_testudata(L,-1,"dual_Capable_Map")&&(lua_pushvalue(L,lua_upvalueindex(2)),lua_gettable(L,-2))==LUA_TSTRING &&(lua_pushliteral(L,"collected_nodes"),lua_rawequal(L,-2,-1))){
lua_pushvalue(L,2);
lua_pushnil(L);
lua_settable(L,-5);
lua_getglobal(L,"pairs");
lua_rotate(L,-4,-1);
PCALL_ERRH(1,3,0,"Error Invoking Generator Factory: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Invoking Generator Factory: %s!");
PCALL_ERRH(2,1,0,"Error Invoking Generator Function: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Invoking Generator Function: %s!");
if(lua_isnil(L,-1)){
lua_pushvalue(L,lua_upvalueindex(2));
lua_pushnil(L);
lua_rawset(L,4);
}
}
}
lua_settop(L,5);
clean_is_unnecessary:
if(!lua_isnil(L,3)){
if((lua_pushvalue(L,3),lua_rawget(L,5))==LUA_TTABLE &&(lua_pushvalue(L,lua_upvalueindex(2)),lua_rawget(L,-2))==LUA_TSTRING &&(lua_pushliteral(L,"merged_keys"),lua_rawequal(L,-2,-1))){
lua_pushliteral(L,"inverse_");
lua_insert(L,-2);
lua_concat(L,2);
lua_rawget(L,-3);
lua_pushvalue(L,2);
lua_pushvalue(L,-1);
lua_pushinteger(L,luaL_ref(L,6));
lua_rawset(L,-3);
}else{
lua_settop(L,6);
lua_pushvalue(L,3);
if(lua_isnil(L,-2))
lua_pushvalue(L,2);
else{
lua_createtable(L,3,2);
lua_pushvalue(L,lua_upvalueindex(2));
lua_pushliteral(L,"merged_keys");
lua_pushliteral(L,"inverse_");
lua_pushvalue(L,-2);
lua_concat(L,2);
lua_insert(L,-3);
lua_rawset(L,-4);
lua_createtable(L,0,2);
lua_rotate(L,6,-1);
lua_pushvalue(L,-1);
lua_pushinteger(L,luaL_ref(L,-5));
lua_rawset(L,-3);
lua_pushvalue(L,2);
lua_pushvalue(L,-1);
lua_pushinteger(L,luaL_ref(L,-5));
lua_rawset(L,-3);
lua_rawset(L,-3);
}
lua_rawset(L,5);
}
lua_pushvalue(L,2);
lua_pushvalue(L,3);
lua_rawset(L,4);
if(recurse &&(lua_pushvalue(L,lua_upvalueindex(2)),lua_gettable(L,1))==LUA_TSTRING &&(lua_pushliteral(L,"collected_nodes"),lua_rawequal(L,-2,-1)))
recurse=0;
lua_settop(L,5);
if(recurse &&(lua_istable(L,3)|| luaL_testudata(L,3,"dual_Capable_Map")|| lua_istable(L,2)|| luaL_testudata(L,2,"dual_Capable_Map"))){
if((lua_pushvalue(L,lua_upvalueindex(2)),lua_rawget(L,4))==LUA_TUSERDATA && luaL_testudata(L,-1,"dual_Capable_Map")&&(lua_pushvalue(L,lua_upvalueindex(2)),lua_gettable(L,-2))==LUA_TSTRING &&(lua_pushliteral(L,"collected_nodes"),lua_rawequal(L,-2,-1))){
lua_rotate(L,2,-2);
lua_settable(L,-5);
}else{
lua_pushvalue(L,lua_upvalueindex(2));
lua_pushvalue(L,1);
lua_createtable(L,0,1);
lua_pushvalue(L,-3);
lua_pushliteral(L,"collected_nodes");
lua_rawset(L,-3);
PCALL_ERRH(1,1,0,"Error Creating Dual Capable Map: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Creating Dual Capable Map: %s!");
lua_rotate(L,2,-2);
lua_settable(L,-3);
lua_rawset(L,2);
}
}
}else{
lua_rotate(L,-4,2);
lua_rawset(L,-4);
}
}
dummy_userdata:
return 0;
}

int natural_LookUp(lua_State *L){
if(lua_rawequal(L,lua_upvalueindex(1),1))
return 0;
lua_settop(L,2);
struct ref_couple *refs=luaL_checkudata(L,-2,"dual_Capable_Map");
lua_rawgeti(L,LUA_REGISTRYINDEX,refs->ref);
lua_pushvalue(L,-2);
lua_rawget(L,-2);
if(lua_rawequal(L,lua_upvalueindex(2),-3)&& luaL_testudata(L,-1,"dual_Capable_Map")&&(lua_pushvalue(L,-3),lua_gettable(L,-2))==LUA_TSTRING &&(lua_pushliteral(L,"collected_nodes"),lua_rawequal(L,-2,-1))){
lua_rotate(L,1,-1);
lua_createtable(L,0,1);
lua_rotate(L,1,-1);
lua_pushliteral(L,"collected_nodes");
lua_rawset(L,-3);
PCALL_ERRH(1,1,0,"Error Creating Dual Capable Map: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Creating Dual Capable Map: %s!");
lua_getglobal(L,"pairs");
lua_rotate(L,-5,-1);
PCALL_ERRH(1,3,0,"Error Invoking Generator Factory: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Invoking Generator Factory: %s!");
lua_pushvalue(L,-3);
lua_pushvalue(L,-3);
lua_rotate(L,-3,-1);
next_pair:
PCALL_ERRH(2,2,0,"Error Invoking Generator Function: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Invoking Generator Function: %s!");
if(!lua_isnil(L,-2)){
lua_pushvalue(L,-2);
lua_insert(L,-2);
lua_settable(L,-6);
lua_pushvalue(L,-3);
lua_pushvalue(L,-3);
lua_rotate(L,-3,-1);
goto next_pair;
}
lua_pop(L,4);
return 1;
}
lua_settop(L,4);
return 1;
}

int lookUp(lua_State *L){
if(lua_rawequal(L,lua_upvalueindex(1),1))
return 0;
lua_settop(L,2);
struct ref_couple *refs=luaL_checkudata(L,-2,"dual_Capable_Map");
lua_rawgeti(L,LUA_REGISTRYINDEX,refs->ivrs_ref);
lua_insert(L,-2);
lua_rawget(L,-2);
if(lua_istable(L,-1)&&(lua_pushvalue(L,lua_upvalueindex(2)),lua_rawget(L,-2))==LUA_TSTRING &&(lua_pushliteral(L,"merged_keys"),lua_rawequal(L,-2,-1))){
int sequence_length;
lua_createtable(L,sequence_length=lua_rawlen(L,-3),1);
for(int idx=sequence_length;idx>=1;idx--){
lua_rawgeti(L,-4,idx);
lua_rawseti(L,-2,idx);
}
lua_pushliteral(L,"inverse_");
lua_pushvalue(L,lua_upvalueindex(2));
lua_pushvalue(L,-1);
lua_rawget(L,-7);
lua_pushvalue(L,-1);
lua_insert(L,-3);
lua_rawset(L,-5);
lua_concat(L,2);
lua_pushvalue(L,-1);
lua_rawget(L,-6);
lua_createtable(L,0,3);
lua_pushnil(L);
while(lua_next(L,-3)){
lua_pushvalue(L,-2);
lua_insert(L,-2);
lua_rawset(L,-4);
}
lua_replace(L,-2);
lua_rawset(L,-3);
return 1;
}
lua_settop(L,3);
return 1;
}

int get_Field(lua_State *L){
_Bool dummy_encountered=0;
if(lua_rawequal(L,lua_upvalueindex(1),1))
dummy_encountered=1;
lua_settop(L,2);
lua_getmetatable(L,-2);
if(luaL_getmetatable(L,"dual_Capable_Map")==LUA_TTABLE && lua_rawequal(L,-2,-1)){
lua_pushvalue(L,-3);
lua_rawget(L,-2);
if(lua_isnil(L,-1)&& !dummy_encountered){
lua_pushliteral(L,"nLookUp");
lua_rawget(L,-3);
lua_pushvalue(L,-6);
lua_pushvalue(L,-6);
PCALL_ERRH(2,1,0,"Error Performing Ordinary LookUp: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Performing Ordinary LookUp: %s!");
if(lua_isnil(L,-1)){
lua_pushliteral(L,"lookUp");
lua_rawget(L,-4);
lua_rotate(L,-7,-2);
PCALL_ERRH(2,1,0,"Error Performing Inverse LookUp: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Performing Inverse LookUp: %s!");
if(!lua_isnil(L,-1))
return 1;
}else
return 1;
}else
return 1;
}else
luaL_error(L,"Associated MetaTable Has Been Tampered!");
return 0;
}

int natural_Generator_Function(lua_State *L){
lua_settop(L,2);
skip_upvalue:
if(lua_next(L,lua_upvalueindex(1))){
int idx=1;
while(!lua_isnoneornil(L,lua_upvalueindex(++idx))){
if(lua_rawequal(L,lua_upvalueindex(idx),-2)|| lua_rawequal(L,lua_upvalueindex(idx),-1)){
lua_pop(L,1);
goto skip_upvalue;
}else if(lua_istable(L,lua_upvalueindex(idx))){
lua_pushnil(L);
while(lua_next(L,lua_upvalueindex(idx))){
if(lua_rawequal(L,-4,-2)|| lua_rawequal(L,-4,-1)|| lua_rawequal(L,-3,-2)|| lua_rawequal(L,-3,-1)){
lua_pop(L,3);
goto skip_upvalue;
}
lua_pop(L,1);
}
}
}
return 2;
}
lua_pushnil(L);
return 1;
}

int generator_Function(lua_State *L){
merged_emerges:
if(lua_istable(L,lua_upvalueindex(2))&&(lua_pushvalue(L,lua_upvalueindex(5)),lua_rawget(L,lua_upvalueindex(2)))==LUA_TSTRING &&(lua_pushliteral(L,"merged_keys"),lua_rawequal(L,-2,-1))&& lua_isinteger(L,lua_upvalueindex(3))){
lua_pushliteral(L,"inverse_");
lua_insert(L,-2);
lua_concat(L,2);
lua_rawget(L,lua_upvalueindex(2));
int idx1=lua_tointeger(L,lua_upvalueindex(3));
while(++idx1<=lua_rawlen(L,lua_upvalueindex(2))){
if(lua_rawgeti(L,lua_upvalueindex(2),idx1)!=LUA_TNUMBER ||({
lua_pushvalue(L,-1);
lua_rawget(L,-3);
int ref=lua_tointeger(L,-1);
lua_pop(L,1);
idx1==ref;
})){
_Bool skip_upvalue=0;
int idx2=3;
while(!lua_isnoneornil(L,lua_upvalueindex(++idx2))){
if(lua_rawequal(L,lua_upvalueindex(idx2),-1))
skip_upvalue=1;
else if(lua_istable(L,lua_upvalueindex(idx2))){
lua_pushnil(L);
while(lua_next(L,lua_upvalueindex(idx2))){
if(lua_rawequal(L,-3,-2)|| lua_rawequal(L,-3,-1)){
lua_pop(L,2);
skip_upvalue=1;
break;
}
lua_pop(L,1);
}
}
if(skip_upvalue)
break;
}
if(skip_upvalue){
lua_pop(L,1);
continue;
}
lua_replace(L,3);
lua_settop(L,3);
break;
}else
lua_pop(L,1);
}
if(idx1>lua_rawlen(L,lua_upvalueindex(2))){
lua_pushnil(L);
lua_pushvalue(L,-1);
lua_replace(L,lua_upvalueindex(3));
lua_replace(L,lua_upvalueindex(2));
if(lua_gettop(L)>3)
goto skip_upvalue;
}else{
lua_pushinteger(L,idx1);
lua_replace(L,lua_upvalueindex(3));
}
return 2;
}else{
skip_upvalue:
lua_settop(L,2);
if(lua_next(L,lua_upvalueindex(1))){
if(lua_istable(L,-1)&&(lua_pushvalue(L,lua_upvalueindex(5)),lua_rawget(L,-2))==LUA_TSTRING &&(lua_pushliteral(L,"merged_keys"),lua_rawequal(L,-2,-1))){
lua_pushliteral(L,"inverse_");
lua_insert(L,-2);
lua_concat(L,2);
lua_rawget(L,-3);
int idx=3;
while(!lua_isnoneornil(L,lua_upvalueindex(++idx))){
if(lua_rawequal(L,lua_upvalueindex(idx),-4))
goto skip_upvalue;
else if(lua_istable(L,lua_upvalueindex(idx))){
lua_pushnil(L);
while(lua_next(L,lua_upvalueindex(idx))){
if(lua_rawequal(L,-6,-2)|| lua_rawequal(L,-6,-1))
goto skip_upvalue;
lua_pop(L,1);
}
}
}
lua_rotate(L,-3,-1);
lua_replace(L,lua_upvalueindex(2));
lua_pushinteger(L,0);
lua_replace(L,lua_upvalueindex(3));
goto merged_emerges;
}else{
int idx=3;
while(!lua_isnoneornil(L,lua_upvalueindex(++idx))){
if(lua_rawequal(L,lua_upvalueindex(idx),-2)|| lua_rawequal(L,lua_upvalueindex(idx),-1))
goto skip_upvalue;
else if(lua_istable(L,lua_upvalueindex(idx))){
lua_pushnil(L);
while(lua_next(L,lua_upvalueindex(idx))){
if(lua_rawequal(L,-4,-2)|| lua_rawequal(L,-4,-1)|| lua_rawequal(L,-3,-2)|| lua_rawequal(L,-3,-1))
goto skip_upvalue;
lua_pop(L,1);
}
}
}
lua_settop(L,3);
return 2;
}
}
}
lua_pushnil(L);
return 1;
}

int generator_Factory(lua_State *L){
if(lua_rawequal(L,lua_upvalueindex(1),1))
return 0;
lua_settop(L,2);
struct ref_couple *refs=luaL_checkudata(L,-2,"dual_Capable_Map");
lua_rawgeti(L,LUA_REGISTRYINDEX,(lua_isboolean(L,-1)&& !lua_toboolean(L,-1))?refs->ivrs_ref:refs->ref);
if(lua_isboolean(L,-2)&& !lua_toboolean(L,-2)){
lua_pushnil(L);
lua_pushvalue(L,-1);
}else if(lua_pushvalue(L,-2),lua_rawget(L,-2)==LUA_TNIL)
lua_replace(L,-3);
else
lua_pop(L,1);
int idx=0;
while(!lua_isnoneornil(L,lua_upvalueindex(++idx)))
lua_pushvalue(L,lua_upvalueindex(idx));
lua_pushcclosure(L,(lua_isboolean(L,2)&& !lua_toboolean(L,2))?generator_Function:natural_Generator_Function,(lua_isboolean(L,2)&& !lua_toboolean(L,2))?2+idx:idx);
if(lua_isboolean(L,-2)&& !lua_toboolean(L,-2)){
lua_insert(L,-2);
lua_pushnil(L);
}else{
lua_pushboolean(L,0);
lua_rotate(L,-3,-1);
}
return 3;
}

int create_Dual_Capable_Map(lua_State *L){
luaL_checkudata(L,1,"dual_Capable_Map");
if(lua_gettop(L)==1){
int idx=0;
while(!lua_isnoneornil(L,lua_upvalueindex(++idx)))
lua_pushvalue(L,lua_upvalueindex(idx));
return idx-1;
}
for(int idx=lua_gettop(L);idx>1;idx--){
luaL_checkstack(L,6,"Unable to Allocate Memory for the Extra Stack Space!");
struct ref_couple *refs=(struct ref_couple*)lua_newuserdatauv(L,sizeof(struct ref_couple),2);
lua_newtable(L);
refs->ref=luaL_ref(L,LUA_REGISTRYINDEX);
lua_newtable(L);
refs->ivrs_ref=luaL_ref(L,LUA_REGISTRYINDEX);
luaL_setmetatable(L,"dual_Capable_Map");
if(luaL_testudata(L,idx,"dual_Capable_Map")){
lua_getglobal(L,"pairs");
lua_pushvalue(L,idx);
PCALL_ERRH(1,3,0,"Error Invoking Generator Factory: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Invoking Generator Factory: %s!");
lua_pushvalue(L,-3);
lua_pushvalue(L,-3);
lua_rotate(L,-3,-1);
next_pair:
PCALL_ERRH(2,2,0,"Error Invoking Generator Function: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Invoking Generator Function: %s!");
if(lua_isnil(L,-2))
lua_pop(L,4);
else{
lua_pushvalue(L,-2);
lua_insert(L,-2);
lua_settable(L,-6);
lua_pushvalue(L,-3);
lua_pushvalue(L,-3);
lua_rotate(L,-3,-1);
goto next_pair;
}
}else if(lua_istable(L,idx)){
lua_pushnil(L);
while(lua_next(L,idx)){
lua_pushvalue(L,-2);
lua_insert(L,-3);
lua_settable(L,-4);
}
}else if(!lua_isnil(L,idx)){
lua_pushvalue(L,idx);
lua_seti(L,-2,1+luaL_len(L,-2));
}
lua_replace(L,idx);
}
return lua_gettop(L)-1;
}

int set_Attribute_Index(lua_State *L){
if(lua_rawequal(L,lua_upvalueindex(1),1))
goto dummy_userdata;
lua_settop(L,3);
luaL_checkudata(L,-3,"dual_Capable_Map");
lua_Integer index=luaL_checkinteger(L,-2);
lua_setiuservalue(L,-3,1+(index-1)%2);
dummy_userdata:
return 0;
}

int get_Attribute_Index(lua_State *L){
if(lua_rawequal(L,lua_upvalueindex(1),1))
return 0;
lua_settop(L,2);
luaL_checkudata(L,-2,"dual_Capable_Map");
lua_Integer index=luaL_checkinteger(L,-1);
lua_getiuservalue(L,-2,1+(index-1)%2);
return 1;
}

int get_Length(lua_State *L){
if(lua_rawequal(L,lua_upvalueindex(1),1))
return 0;
lua_settop(L,1);
struct ref_couple *refs=luaL_checkudata(L,-1,"dual_Capable_Map");
lua_rawgeti(L,LUA_REGISTRYINDEX,refs->ref);
lua_pushinteger(L,lua_rawlen(L,-1));
return 1;
}

int inspect(lua_State *L){
if(lua_rawequal(L,lua_upvalueindex(1),1))
goto dummy_userdata;
lua_settop(L,3);
struct ref_couple *refs=luaL_checkudata(L,1,"dual_Capable_Map");
lua_rawgeti(L,LUA_REGISTRYINDEX,refs->ivrs_ref);
lua_rawgeti(L,LUA_REGISTRYINDEX,refs->ref);
lua_getglobal(L,"module_name");
luaL_requiref(L,luaL_checkstring(L,-1),NULL,0);
lua_getfield(L,-1,"serialise");
int ctop=lua_gettop(L);
lua_pushvalue(L,-1);
lua_pushvalue(L,-5);
lua_pushvalue(L,2);
lua_pushvalue(L,3);
PCALL_ERRH(3,LUA_MULTRET,0,"Error Serialising Result: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Serialising Result: %s!");
lua_rotate(L,ctop-lua_gettop(L)-1,-1);
lua_rotate(L,2,-3);
lua_insert(L,-3);
PCALL_ERRH(3,LUA_MULTRET,0,"Error Serialising Result: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Serialising Result: %s!");
int nrets;
if((nrets=4+lua_gettop(L)-ctop)>0)
return nrets;
else{
dummy_userdata:
return 0;
}
}

int unbind_Tables(lua_State *L){
if(lua_rawequal(L,lua_upvalueindex(1),1))
goto dummy_userdata;
lua_settop(L,2);
struct ref_couple *refs=luaL_checkudata(L,-2,"dual_Capable_Map");
luaL_unref(L,LUA_REGISTRYINDEX,refs->ivrs_ref);
luaL_unref(L,LUA_REGISTRYINDEX,refs->ref);
lua_pushnil(L);
lua_setmetatable(L,-3);
dummy_userdata:
return 0;
}

const luaL_Reg dual_Capable_Map[]={
{"__newindex",set_Field},
{"nLookUp",natural_LookUp},
{"lookUp",lookUp},
{"__index",get_Field},
{"__pairs",generator_Factory},
{"__call",create_Dual_Capable_Map},
{"setI_Attr",set_Attribute_Index},
{"getI_Attr",get_Attribute_Index},
{"__len",get_Length},
{"inspect",inspect},
{"__gc",unbind_Tables},
{NULL,NULL}
};

int chdir_Conveyed(lua_State *L){
lua_settop(L,1);
int error_number=errno;
if(chdir(luaL_checkstring(L,-1))){
lua_pushboolean(L,0);
lua_pushstring(L,strerror(errno));
errno=error_number;
return 2;
}
lua_pushboolean(L,1);
return 1;
}

int sleep_Conveyed(lua_State *L){
lua_settop(L,2);
lua_Integer seconds=luaL_checknumber(L,-2);
lua_Integer nanoseconds=lua_isnumber(L,-1)?lua_tonumber(L,-1):1000000000*(lua_tonumber(L,-2)-seconds);
if(nanoseconds<0 || nanoseconds>=1000000000){
seconds+=nanoseconds/1000000000;
nanoseconds%=1000000000;
if(nanoseconds<0){
seconds--;
nanoseconds+=1000000000;
}
}
struct timespec request={(time_t)seconds,(long)nanoseconds};
if(lua_isnumber(L,-1)){
struct timespec remain;
int error_number;
if((error_number=clock_nanosleep(CLOCK_MONOTONIC,0,&request,&remain))){
lua_pushboolean(L,0);
lua_pushstring(L,strerror(error_number));
lua_pushnumber(L,remain.tv_sec+remain.tv_nsec/1000000000.0);
return 3;
}
lua_pushboolean(L,1);
return 1;
}
int error_number;
if((error_number=clock_nanosleep(CLOCK_REALTIME,TIMER_ABSTIME,&request,NULL))){
lua_pushboolean(L,0);
lua_pushstring(L,strerror(error_number));
return 2;
}
lua_pushboolean(L,1);
return 1;
}

int primality(lua_State *L){
lua_Integer till=luaL_checkinteger(L,1);
lua_Integer from=luaL_checkinteger(L,2);
while(from<till){
++from;
_Bool boolean=1;
for(lua_Integer divider=(lua_Integer)2;divider*divider<=from;divider++){
if(from%divider==(lua_Integer)0){
boolean=0;
break;
}
}
if(boolean){
lua_pushinteger(L,from);
return 1;
}
}
return 0;
}

int prime_Generator(lua_State *L){
lua_settop(L,2);
lua_insert(L,1);
lua_pushinteger(L,1);
lua_arith(L,LUA_OPSUB);
lua_pushcfunction(L,&primality);
lua_insert(L,1);
return 3;
}

int multithread_Initiator(lua_State *L);

const luaL_Reg c_UpBinds[]={
{"chdir",chdir_Conveyed},
{"sleep",sleep_Conveyed},
{"prime_Generator",prime_Generator},
{"multithread_Initiator",multithread_Initiator},
{NULL,NULL}
};

#define UTF8_LENGTH do{\
lua_getglobal(L,"utf8");\
lua_getfield(L,-1,"offset");\
lua_getfield(L,-2,"len");\
lua_remove(L,-3);\
lua_pushvalue(L,1);\
lua_pushinteger(L,1);\
lua_pushinteger(L,string_length);\
PCALL_ERRH(3,1,0,"Error Obtaining UTF-8 String Length: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Obtaining UTF-8 String Length: %s!");\
lua_rotate(L,2,2);\
}while(0)

#define UTF8_OFFSETS(POS_ON_STACK,WHICH_SIDE) do{\
lua_pushvalue(L,2);\
lua_pushvalue(L,1);\
lua_rotate(L,POS_ON_STACK<0?POS_ON_STACK-2:POS_ON_STACK,-1);\
PCALL_ERRH(2,2,0,"Error Obtaining UTF-8 Character Offsets: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Obtaining UTF-8 Character Offsets: %s!");\
if(WHICH_SIDE>=0){\
if(WHICH_SIDE)\
lua_remove(L,-2);\
else \
lua_pop(L,1);\
}\
}while(0)

int string_Subscription(lua_State *L){
size_t string_length;
const char *string_itself=luaL_checklstring(L,1,&string_length);
UTF8_LENGTH;
int ctop=lua_gettop(L);
for(int idx1=4;idx1<=ctop;idx1++){
if(lua_isinteger(L,4)){
UTF8_OFFSETS(4,-1);
lua_pushlstring(L,string_itself+luaL_checkinteger(L,-2)-1,1+luaL_checkinteger(L,-1)-luaL_checkinteger(L,-2));
lua_insert(L,-3);
lua_pop(L,2);
}else if(lua_isstring(L,4)){
size_t directive_length;
const char *directive_string=luaL_checklstring(L,4,&directive_length);
char *stop=directive_length+(char*)directive_string;
int which=-1;
long directives[3]={0,0,0};
char *head=(char*)directive_string,*tail,*colon;
while(++which<sizeof directives){
colon=strchr(head,':');
while(directives[which]=strtol(head,&tail,0),head>=tail && tail<colon && tail<stop)
head++;
if(tail>=stop)
break;
if(colon)
head=++colon;
else
break;
}
lua_remove(L,4);
lua_Integer temp=luaL_checkinteger(L,3);
int lower=1+((directives[0]?:1)-1)%temp,upper=1+((directives[1]?:temp)-1)%temp;
if(directives[2]){
if((lower<upper && directives[2]<0)||(lower>upper && directives[2]>0)){
int swap=lower;
lower=upper;
upper=swap;
}
int count_pieces=0;
for(int idx2=lower;lower>upper?idx2>=upper:idx2<=upper;idx2+=directives[2]){
count_pieces++;
luaL_checkstack(L,3,"Unable to Allocate Memory for the Extra Stack Space!");
lua_pushinteger(L,idx2);
UTF8_OFFSETS(-1,-1);
lua_pushlstring(L,string_itself+luaL_checkinteger(L,-2)-1,1+luaL_checkinteger(L,-1)-luaL_checkinteger(L,-2));
lua_insert(L,-3);
lua_pop(L,2);
}
lua_concat(L,count_pieces);
}else{
luaL_checkstack(L,3,"Unable to Allocate Memory for the Extra Stack Space!");
lua_pushinteger(L,lower>upper?upper:lower);
UTF8_OFFSETS(-1,0);
lua_pushinteger(L,lower>upper?lower:upper);
UTF8_OFFSETS(-1,1);
lua_pushlstring(L,string_itself+luaL_checkinteger(L,-2)-1,1+luaL_checkinteger(L,-1)-luaL_checkinteger(L,-2));
lua_insert(L,-3);
lua_pop(L,2);
}
}else{
lua_remove(L,4);
fprintf(stderr,"Invalid Directive @Parameter #%d!",idx1);
}
}
return lua_gettop(L)-3;
}

int string_Modification(lua_State *L){
lua_settop(L,3);
if(!lua_istable(L,-1)&&!luaL_testudata(L,-1,"dual_Capable_Map")){
lua_pushstring(L,luaL_typename(L,-1));
lua_pushliteral(L," Received at Parameter #3 where Table or Dual Capable Map Expected!");
lua_concat(L,2);
lua_error(L);
}
size_t string_length;
const char *string_itself=luaL_checklstring(L,-3,&string_length);
UTF8_LENGTH;
if(lua_isinteger(L,-2)){
UTF8_OFFSETS(-2,-1);
lua_pushlstring(L,string_itself,luaL_checkinteger(L,-2)-1);
lua_geti(L,-4,1);
lua_pushlstring(L,luaL_checkinteger(L,-3)+string_itself,string_length-luaL_checkinteger(L,-3));
lua_concat(L,3);
lua_seti(L,-4,2);
}else if(lua_isstring(L,-2)){
size_t directive_length;
const char *directive_string=luaL_checklstring(L,4,&directive_length);
char *stop=directive_length+(char*)directive_string;
int which=-1;
long directives[2]={0,0};
char *head=(char*)directive_string,*tail,*colon;
while(++which<sizeof directives){
colon=strchr(head,':');
while(directives[which]=strtol(head,&tail,0),head>=tail && tail<colon && tail<stop)
head++;
if(tail>=stop)
break;
if(colon)
head=++colon;
else
break;
}
lua_Integer temp=luaL_checkinteger(L,-3);
int lower=1+((directives[0]?:1)-1)%temp,upper=1+((directives[1]?:temp)-1)%temp;
lua_pushinteger(L,lower>upper?upper:lower);
UTF8_OFFSETS(-1,0);
lua_pushinteger(L,lower>upper?lower:upper);
UTF8_OFFSETS(-1,1);
lua_pushlstring(L,string_itself,luaL_checkinteger(L,-2)-1);
lua_geti(L,-4,1);
lua_pushlstring(L,luaL_checkinteger(L,-3)+string_itself,string_length-luaL_checkinteger(L,-3));
lua_concat(L,3);
lua_seti(L,-4,2);
}else
luaL_error(L,"Invalid Subscript of Type %s!",luaL_typename(L,-2));
return 0;
}

#define REG do{\
lua_pushliteral(L,"");\
lua_getmetatable(L,-1);\
lua_pushliteral(L,"__call");\
lua_pushcfunction(L,string_Subscription);\
lua_rawset(L,-3);\
lua_pushliteral(L,"__newindex");\
lua_pushcfunction(L,string_Modification);\
lua_rawset(L,-3);\
luaL_getsubtable(L,-3,"c_UpBinds");\
lua_newuserdatauv(L,0,0);\
luaL_newmetatable(L,"dual_Capable_Map");\
lua_pushvalue(L,-2);\
lua_pushlightuserdata(L,(int**)&collective_signals);\
lua_pushlightuserdata(L,&renewed_action);\
lua_pushlightuserdata(L,&current_action);\
lua_newtable(L);\
luaL_setfuncs(L,dual_Capable_Map,5);\
lua_setmetatable(L,-2);\
lua_setfield(L,-2,"dual_Capable_Map");\
int idx=-1;\
while(++idx,c_UpBinds[idx].name || c_UpBinds[idx].func){\
lua_pushcfunction(L,c_UpBinds[idx].func);\
lua_setfield(L,-2,c_UpBinds[idx].name);\
}\
lua_rotate(L,-6,-2);\
lua_setfield(L,-3,"global_snapshot");\
lua_pop(L,5);\
}while(0)

const int collective_signals[]={SIGINT,SIGABRT,SIGSEGV,SIGBUS,SIGILL,SIGFPE};

struct sigaction renewed_action;
struct sigaction current_action;

int errMsg_Handler(lua_State *L){
lua_settop(L,1);
lua_getglobal(L,"module_name");
luaL_requiref(L,luaL_optstring(L,-1,"]===],required_name,[===["),NULL,0);
lua_getfield(L,-1,"serialise");
lua_insert(L,1);
lua_pop(L,2);
lua_pushliteral(L,"\t");
PCALL_ERRH(2,1,0,"Error Serialising Object: %s!",CUSTOM_GOTO,premature_end);
lua_getglobal(L,"debug");
lua_getfield(L,-1,"traceback");
lua_insert(L,1);
lua_pushinteger(L,2);
lua_replace(L,-2);
PCALL_ERRH(2,1,0,"Error Performing TraceBack: %s!",CUSTOM_GOTO,premature_end);
return 1;
premature_end:
return 0;
}

pthread_mutex_t module_search_lock=PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t task_queue_lock=PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t outcome_queue_lock=PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t await_task=PTHREAD_COND_INITIALIZER;
pthread_cond_t task_queue_full;
pthread_cond_t await_outcome;
pthread_cond_t outcome_queue_full=PTHREAD_COND_INITIALIZER;

volatile struct multithread_task_cyclic_queue{
_Bool resize_next_window;
int queue_size;
int start;
int end;
char **tasks;
}task_queue;

struct array_of_results{
lua_Integer thread_serial_in_case_of_error;
int array_size;
char *results[];
};

volatile struct multithread_outcome_cyclic_queue{
_Bool resize_next_window;
int queue_size;
int start;
int end;
struct array_of_results **outcomes;
}outcome_queue;

volatile _Bool upcome;
volatile int tasks_assigned=0;
volatile int outcomes_collected=0;

void* individual_Thread(void *arg){
lua_State *L=(lua_State*)arg;
luaL_openlibs(L);
lua_pushglobaltable(L);
lua_createtable(L,0,3);
lua_pushnil(L);
while(lua_next(L,-3)){
lua_pushvalue(L,-2);
lua_insert(L,-2);
lua_rawset(L,-4);
}
lua_pushboolean(L,0);
lua_setglobal(L,"c_thread");
struct array_of_results *results=NULL;
char script[]===],3+script_len,"]=",script1,[===[;
pthread_mutex_lock(&module_search_lock);
if(luaL_dostring(L,script)==LUA_OK)
pthread_mutex_unlock(&module_search_lock);
else{
pthread_mutex_unlock(&module_search_lock);
results=malloc(sizeof(struct array_of_results));
results->thread_serial_in_case_of_error=lua_tointeger(L,1);
lua_pushfstring(L,"Error Executing Module-Search Script: %s!",lua_tostring(L,-1));
lua_replace(L,-2);
goto premature_end;
}
REG;
lua_getglobal(L,"module_name");
luaL_requiref(L,luaL_optstring(L,-1,"]===],required_name,[===["),NULL,0);
lua_getfield(L,-1,"serialise");
lua_pushboolean(L,1);
lua_pushliteral(L,"\t");
lua_pushcfunction(L,errMsg_Handler);
lua_rotate(L,1,-2);
lua_pop(L,2);
another:
pthread_mutex_lock(&task_queue_lock);
while(upcome && task_queue.start==task_queue.end && task_queue.tasks[task_queue.start-1<0?task_queue.queue_size-1:task_queue.start-1]==NULL && task_queue.tasks[1+task_queue.end<task_queue.queue_size?1+task_queue.end:0]==NULL)
pthread_cond_wait(&await_task,&task_queue_lock);
if(!upcome ||(tasks_assigned==0 && outcomes_collected==0)){
pthread_mutex_unlock(&task_queue_lock);
return NULL;
}else if(luaL_loadstring(L,task_queue.tasks[task_queue.start])!=LUA_OK){
results=malloc(sizeof(struct array_of_results));
results->thread_serial_in_case_of_error=lua_tointeger(L,1);
lua_pushfstring(L,"Syntaxtic Error within Task Script: %s!",lua_tostring(L,-1));
lua_replace(L,-2);
free(task_queue.tasks[task_queue.start]);
task_queue.tasks[task_queue.start]=NULL;
task_queue.start=(1+task_queue.start)%task_queue.queue_size;
pthread_cond_signal(&task_queue_full);
pthread_mutex_unlock(&task_queue_lock);
goto premature_end;
}
free(task_queue.tasks[task_queue.start]);
task_queue.tasks[task_queue.start]=NULL;
task_queue.start=(1+task_queue.start)%task_queue.queue_size;
pthread_cond_signal(&task_queue_full);
pthread_mutex_unlock(&task_queue_lock);
if(lua_pcall(L,0,LUA_MULTRET,-2)!=LUA_OK){
results=malloc(sizeof(struct array_of_results));
results->thread_serial_in_case_of_error=lua_tointeger(L,1);
lua_pushfstring(L,"Error Executing Task Script: %s!",lua_tostring(L,-1));
lua_replace(L,-2);
goto premature_end;
}
int idx1=lua_gettop(L);
if(idx1>5){
results=malloc(sizeof(struct array_of_results)+(idx1-5)*sizeof(char*));
results->thread_serial_in_case_of_error=-1;
results->array_size=idx1-5;
for(;idx1>5;idx1--){
if(!lua_checkstack(L,27)){
results=realloc(results,sizeof(struct array_of_results));
results->thread_serial_in_case_of_error=lua_tointeger(L,1);
lua_pushliteral(L,"Unable to Allocate Memory for the Extra Stack Space!");
goto premature_end;
}
lua_pushvalue(L,2);
lua_insert(L,-2);
lua_pushvalue(L,3);
lua_pushvalue(L,4);
if(lua_pcall(L,3,LUA_MULTRET,5)!=LUA_OK){
results=realloc(results,sizeof(struct array_of_results));
results->thread_serial_in_case_of_error=lua_tointeger(L,1);
lua_pushfstring(L,"Error Serialising Individual Result: %s!",lua_tostring(L,-1));
lua_replace(L,-2);
goto premature_end;
}
int idx2=lua_gettop(L);
if(idx2>idx1){
for(;idx2>idx1;idx2--){
if(!lua_checkstack(L,3)){
results=realloc(results,sizeof(struct array_of_results));
results->thread_serial_in_case_of_error=lua_tointeger(L,1);
lua_pushliteral(L,"Unable to Allocate Memory for the Extra Stack Space!");
goto premature_end;
}
lua_pushliteral(L,"\n");
lua_insert(L,idx2);
}
lua_concat(L,1+lua_gettop(L)-idx1);
}
size_t length_of_result;
const char *cache_result=lua_tolstring(L,-1,&length_of_result);
char *result=calloc(3+length_of_result,1);
strcpy(result,cache_result);
results->results[idx1-6]=result;
lua_pop(L,1);
}
pthread_mutex_lock(&outcome_queue_lock);
while(outcome_queue.start==outcome_queue.end && outcome_queue.outcomes[outcome_queue.start-1<0?outcome_queue.queue_size-1:outcome_queue.start-1]!=NULL && outcome_queue.outcomes[1+outcome_queue.end<outcome_queue.queue_size?1+outcome_queue.end:0]!=NULL){
if(!outcome_queue.resize_next_window)
outcome_queue.resize_next_window=1;
pthread_cond_wait(&outcome_queue_full,&outcome_queue_lock);
}
pthread_mutex_unlock(&outcome_queue_lock);
}
premature_end:
if(results){
pthread_mutex_lock(&outcome_queue_lock);
if(outcome_queue.resize_next_window ||(outcome_queue.start<outcome_queue.end && outcome_queue.end-outcome_queue.start>=3*outcome_queue.queue_size/4)){
outcome_queue.outcomes=realloc(outcome_queue.outcomes,3*outcome_queue.queue_size/2*sizeof(char*));
memset(outcome_queue.queue_size*sizeof(char*)+outcome_queue.outcomes,0,outcome_queue.queue_size/2*sizeof(char*));
outcome_queue.queue_size*=3/2;
outcome_queue.resize_next_window=0;
}
outcome_queue.outcomes[outcome_queue.end]=results;
outcome_queue.end=(1+outcome_queue.end)%outcome_queue.queue_size;
if(outcome_queue.queue_size>27 && outcome_queue.start<outcome_queue.end && outcome_queue.end-outcome_queue.start<=outcome_queue.queue_size/4){
outcome_queue.queue_size/=2;
outcome_queue.outcomes=realloc(outcome_queue.outcomes,outcome_queue.queue_size*sizeof(char*));
}
pthread_cond_signal(&await_outcome);
pthread_mutex_unlock(&outcome_queue_lock);
}
if(upcome &&(!results || results->thread_serial_in_case_of_error<0))
goto another;
if(results && results->thread_serial_in_case_of_error>-1){
size_t length_of_error_message;
const char *cache_error_message=lua_tolstring(L,-1,&length_of_error_message);
char *error_message=calloc(3+length_of_error_message,1);
strcpy(error_message,cache_error_message);
lua_close(L);
return error_message;
}
return NULL;
}

#define COLLECT_OUTCOMES(OUTCOME_QUEUE,SUPPLEMENT_WITH_NEW) do{\
if(outcome_queue.outcomes[outcome_queue.start]->thread_serial_in_case_of_error>-1){\
if(SUPPLEMENT_WITH_NEW){\
char *error_message;\
pthread_join(mt_ctx->mt_ctx_thrds->threads[outcome_queue.outcomes[outcome_queue.start]->thread_serial_in_case_of_error],(void**)&error_message);\
lua_pushstring(Lo,error_message);\
lua_seti(Lo,OUTCOME_QUEUE,1+luaL_len(Lo,OUTCOME_QUEUE));\
free(error_message);\
mt_ctx->mt_ctx_stts->states[outcome_queue.outcomes[outcome_queue.start]->thread_serial_in_case_of_error]=luaL_newstate();\
lua_pushinteger(mt_ctx->mt_ctx_stts->states[outcome_queue.outcomes[outcome_queue.start]->thread_serial_in_case_of_error],outcome_queue.outcomes[outcome_queue.start]->thread_serial_in_case_of_error);\
pthread_create(&mt_ctx->mt_ctx_thrds->threads[outcome_queue.outcomes[outcome_queue.start]->thread_serial_in_case_of_error],NULL,individual_Thread,mt_ctx->mt_ctx_stts->states[outcome_queue.outcomes[outcome_queue.start]->thread_serial_in_case_of_error]);\
}\
}else if(outcome_queue.outcomes[outcome_queue.start]->array_size>1){\
lua_createtable(Lo,outcome_queue.outcomes[outcome_queue.start]->array_size,outcome_queue.outcomes[outcome_queue.start]->array_size-1);\
for(int idx=outcome_queue.outcomes[outcome_queue.start]->array_size-1;idx>=0;idx--){\
lua_pushstring(Lo,outcome_queue.outcomes[outcome_queue.start]->results[idx]);\
free(outcome_queue.outcomes[outcome_queue.start]->results[idx]);\
lua_rawseti(Lo,-2,1+idx);\
}\
lua_seti(Lo,OUTCOME_QUEUE,1+luaL_len(Lo,OUTCOME_QUEUE));\
}else{\
lua_pushstring(Lo,outcome_queue.outcomes[outcome_queue.start]->results[0]);\
free(outcome_queue.outcomes[outcome_queue.start]->results[0]);\
lua_seti(Lo,OUTCOME_QUEUE,1+luaL_len(Lo,OUTCOME_QUEUE));\
}\
free(outcome_queue.outcomes[outcome_queue.start]);\
outcome_queue.outcomes[outcome_queue.start]=NULL;\
outcome_queue.start=(1+outcome_queue.start)%outcome_queue.queue_size;\
outcomes_collected++;\
pthread_cond_signal(&outcome_queue_full);\
}while(outcome_queue.start!=outcome_queue.end)

struct multithread_context_of_states{
int context_size;
lua_State *states[];
};

struct multithread_context_of_threads{
int context_size;
pthread_t threads[];
};

struct multithread_context{
struct multithread_context_of_states *mt_ctx_stts;
struct multithread_context_of_threads *mt_ctx_thrds;
};

int multithread_Terminator(lua_State *Lo,int status,lua_KContext ctx){
lua_settop(Lo,1);
struct multithread_context *mt_ctx=(struct multithread_context*)ctx;
if(status==LUA_YIELD){
pthread_mutex_lock(&outcome_queue_lock);
COLLECT_OUTCOMES(-2,0);
pthread_mutex_unlock(&outcome_queue_lock);
sleep(9);
pthread_mutex_lock(&outcome_queue_lock);
COLLECT_OUTCOMES(-2,0);
pthread_mutex_unlock(&outcome_queue_lock);
sleep(9);
pthread_mutex_lock(&outcome_queue_lock);
if(outcome_queue.start!=outcome_queue.end ||(outcome_queue.outcomes[outcome_queue.start-1<0?outcome_queue.queue_size-1:outcome_queue.start-1]!=NULL && outcome_queue.outcomes[1+outcome_queue.end<outcome_queue.queue_size?1+outcome_queue.end:0]!=NULL))
COLLECT_OUTCOMES(-2,0);
pthread_mutex_unlock(&outcome_queue_lock);
}
for(int idx=mt_ctx->mt_ctx_thrds->context_size-1;idx>=0;idx--)
pthread_detach(mt_ctx->mt_ctx_thrds->threads[idx]);
if(status==LUA_OK || tasks_assigned==outcomes_collected){
tasks_assigned=0;
outcomes_collected=0;
pthread_cond_broadcast(&await_task);
free(mt_ctx->mt_ctx_stts);
free(mt_ctx->mt_ctx_thrds);
free(mt_ctx);
free(task_queue.tasks);
pthread_cond_destroy(&task_queue_full);
free(outcome_queue.outcomes);
pthread_cond_destroy(&await_outcome);
return 1;
}
lua_pushinteger(Lo,tasks_assigned);
lua_pushinteger(Lo,outcomes_collected);
return 3;
}

int multithread_Consolidator(lua_State *Lo,int status,lua_KContext ctx){
lua_settop(Lo,5);
struct timespec wait_till;
if(status==LUA_YIELD && lua_isboolean(Lo,-2)&& !lua_toboolean(Lo,-2)){
upcome=0;
goto collection_impossible;
}else if(lua_isnumber(Lo,-2)){
lua_Integer seconds=lua_tonumber(Lo,-2);
lua_Integer nanoseconds=lua_isnumber(Lo,-1)?lua_tonumber(Lo,-1):1000000000*(lua_tonumber(Lo,-2)-seconds);
if(nanoseconds<0 || nanoseconds>=1000000000){
seconds+=nanoseconds/1000000000;
nanoseconds%=1000000000;
if(nanoseconds<0){
seconds--;
nanoseconds+=1000000000;
}
}
if(lua_isnumber(Lo,-1)){
clock_gettime(CLOCK_MONOTONIC,&wait_till);
wait_till.tv_sec+=(time_t)seconds;
wait_till.tv_nsec+=(long)nanoseconds;
}else{
wait_till.tv_sec=(time_t)seconds;
wait_till.tv_nsec=(long)nanoseconds;
}
}
struct multithread_context *mt_ctx=(struct multithread_context*)ctx;
pthread_mutex_lock(&outcome_queue_lock);
if(outcome_queue.start!=outcome_queue.end ||(outcome_queue.outcomes[outcome_queue.start-1<0?outcome_queue.queue_size-1:outcome_queue.start-1]!=NULL && outcome_queue.outcomes[1+outcome_queue.end<outcome_queue.queue_size?1+outcome_queue.end:0]!=NULL))
COLLECT_OUTCOMES(-4,1);
pthread_mutex_unlock(&outcome_queue_lock);
lua_State *L=lua_tothread(Lo,-5);
pthread_mutex_lock(&task_queue_lock);
if(lua_isnumber(Lo,-2)&& luaL_len(L,-3)>0){
while(task_queue.start==task_queue.end && task_queue.tasks[task_queue.start-1<0?task_queue.queue_size-1:task_queue.start-1]!=NULL && task_queue.tasks[1+task_queue.end<task_queue.queue_size?1+task_queue.end:0]!=NULL){
if(!task_queue.resize_next_window)
task_queue.resize_next_window=1;
pthread_cond_timedwait(&task_queue_full,&task_queue_lock,&wait_till);
}
}else if((task_queue.start==task_queue.end && task_queue.tasks[task_queue.start-1<0?task_queue.queue_size-1:task_queue.start-1]!=NULL && task_queue.tasks[1+task_queue.end<task_queue.queue_size?1+task_queue.end:0]!=NULL)|| luaL_len(L,-3)<=0){
if(!task_queue.resize_next_window && luaL_len(L,-3)>0)
task_queue.resize_next_window=1;
pthread_mutex_unlock(&task_queue_lock);
goto assignment_impossible;
}
if(task_queue.resize_next_window ||(task_queue.start<task_queue.end && task_queue.end-task_queue.start>=3*task_queue.queue_size/4)){
task_queue.tasks=realloc(task_queue.tasks,3*task_queue.queue_size/2*sizeof(struct array_of_results*));
memset(task_queue.queue_size*sizeof(struct array_of_results*)+task_queue.tasks,0,task_queue.queue_size/2*sizeof(struct array_of_results*));
task_queue.queue_size*=3/2;
task_queue.resize_next_window=0;
}
do{
lua_pushvalue(L,-4);
lua_pushvalue(L,-4);
lua_pushvalue(L,-4);
PCALL_ERRH(2,1,-4,"Error Acquiring Task from Start of the Queue: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Acquiring Task from Start of the Queue: %s!");
size_t length_of_task_script;
const char *cache_task_script=luaL_checklstring(L,-1,&length_of_task_script);
char *task_script=calloc(3+length_of_task_script,1);
strcpy(task_script,cache_task_script);
task_queue.tasks[task_queue.end]=task_script;
task_queue.end=(1+task_queue.end)%task_queue.queue_size;
tasks_assigned++;
pthread_cond_signal(&await_task);
lua_pop(L,1);
}while(task_queue.end!=task_queue.start && luaL_len(L,-3)>0);
if(task_queue.queue_size>27 && task_queue.start<task_queue.end && task_queue.end-task_queue.start<=task_queue.queue_size/4){
task_queue.queue_size/=2;
task_queue.tasks=realloc(task_queue.tasks,task_queue.queue_size*sizeof(struct array_of_results*));
}
pthread_mutex_unlock(&task_queue_lock);
assignment_impossible:
pthread_mutex_lock(&outcome_queue_lock);
if(lua_isnumber(Lo,-2)){
while(outcome_queue.start==outcome_queue.end && outcome_queue.outcomes[outcome_queue.start-1<0?outcome_queue.queue_size-1:outcome_queue.start-1]==NULL && outcome_queue.outcomes[1+outcome_queue.end<outcome_queue.queue_size?1+outcome_queue.end:0]==NULL)
pthread_cond_timedwait(&await_outcome,&outcome_queue_lock,&wait_till);
pthread_mutex_unlock(&outcome_queue_lock);
sleep(9);
}else{
pthread_mutex_unlock(&outcome_queue_lock);
sleep(9);
pthread_mutex_lock(&outcome_queue_lock);
if(outcome_queue.start==outcome_queue.end && outcome_queue.outcomes[outcome_queue.start-1<0?outcome_queue.queue_size-1:outcome_queue.start-1]==NULL && outcome_queue.outcomes[1+outcome_queue.end<outcome_queue.queue_size?1+outcome_queue.end:0]==NULL){
pthread_mutex_unlock(&outcome_queue_lock);
goto collection_impossible;
}else
goto unlock_is_unnecessary;
}
pthread_mutex_lock(&outcome_queue_lock);
unlock_is_unnecessary:
COLLECT_OUTCOMES(-4,1);
pthread_mutex_unlock(&outcome_queue_lock);
collection_impossible:
if(!upcome){
lua_rotate(Lo,-5,-2);
lua_pop(Lo,3);
lua_copy(Lo,-2,-1);
return lua_yieldk(Lo,1,(lua_KContext)mt_ctx,multithread_Terminator);
}else if(tasks_assigned>outcomes_collected || luaL_len(Lo,-4)>0){
lua_copy(Lo,-4,-2);
lua_copy(Lo,-3,-1);
return lua_yieldk(Lo,2,(lua_KContext)mt_ctx,multithread_Consolidator);
}
lua_rotate(Lo,-5,-2);
lua_pop(Lo,4);
return multithread_Terminator(Lo,LUA_OK,(lua_KContext)mt_ctx);
}

int multithread_Initiator(lua_State *L){
lua_settop(L,4);
if(!lua_istable(L,-4)&& !luaL_testudata(L,-4,"dual_Capable_Map"))
luaL_error(L,"Array of Tasks Instead of %s Required!",luaL_typename(L,-4));
if(!lua_istable(L,-3)&& !luaL_testudata(L,-3,"dual_Capable_Map")){
lua_newtable(L);
lua_replace(L,-4);
}
task_queue.tasks=calloc(luaL_len(L,-4),sizeof(char*));
task_queue.queue_size=luaL_len(L,-4);
task_queue.start=0;
task_queue.end=0;
outcome_queue.outcomes=calloc(luaL_len(L,-4),sizeof(struct array_of_results*));
outcome_queue.queue_size=luaL_len(L,-4);
outcome_queue.start=0;
outcome_queue.end=0;
struct multithread_context *mt_ctx=malloc(sizeof(struct multithread_context));
mt_ctx->mt_ctx_stts=malloc(sizeof *mt_ctx->mt_ctx_stts+luaL_len(L,-4)*sizeof(lua_State*));
memset(mt_ctx->mt_ctx_stts->states,0,luaL_len(L,-4)*sizeof(lua_State*));
mt_ctx->mt_ctx_stts->context_size=luaL_len(L,-4);
mt_ctx->mt_ctx_thrds=malloc(sizeof *mt_ctx->mt_ctx_thrds+luaL_len(L,-4)*sizeof(pthread_t));
memset(mt_ctx->mt_ctx_thrds->threads,0,luaL_len(L,-4)*sizeof(pthread_t));
mt_ctx->mt_ctx_thrds->context_size=luaL_len(L,-4);
pthread_condattr_t attr;
pthread_condattr_init(&attr);
pthread_condattr_setclock(&attr,CLOCK_MONOTONIC);
pthread_cond_init(&task_queue_full,&attr);
pthread_cond_init(&await_outcome,&attr);
pthread_condattr_destroy(&attr);
if(upcome!=1)
upcome=1;
lua_getglobal(L,"table");
lua_getfield(L,-1,"remove");
lua_pushvalue(L,-6);
lua_pushinteger(L,1);
lua_pushcfunction(L,errMsg_Handler);
for(int idx=luaL_len(L,-3)-1;idx>=0;idx--){
lua_pushvalue(L,-4);
lua_pushvalue(L,-4);
lua_pushvalue(L,-4);
PCALL_ERRH(2,1,-4,"Error Acquiring Task from Start of the Queue: %s!",RAISE_APPROPRIATE_LUA_ERROR,"Error Acquiring Task from Start of the Queue: %s!");
size_t length_of_task_script;
const char *cache_task_script=luaL_checklstring(L,-1,&length_of_task_script);
char *task_script=calloc(3+length_of_task_script,1);
strcpy(task_script,cache_task_script);
pthread_mutex_lock(&task_queue_lock);
task_queue.tasks[task_queue.end]=task_script;
task_queue.end=(1+task_queue.end)%task_queue.queue_size;
pthread_mutex_unlock(&task_queue_lock);
mt_ctx->mt_ctx_stts->states[idx]=luaL_newstate();
lua_pushinteger(mt_ctx->mt_ctx_stts->states[idx],idx);
tasks_assigned++;
pthread_create(&mt_ctx->mt_ctx_thrds->threads[idx],NULL,individual_Thread,mt_ctx->mt_ctx_stts->states[idx]);
lua_pop(L,1);
}
lua_State *Ld=lua_newthread(L);
lua_insert(L,-10);
lua_xmove(L,Ld,4);
lua_pop(L,1);
return multithread_Consolidator(L,LUA_OK,(lua_KContext)mt_ctx);
}

lua_State *L;

#define BINARY_STACK_MANIPULATION(AFTER_DICTATION,STACK_OPERATION) do{\
long specs[2]={0,0};\
int idx2=0;\
char *probe=AFTER_DICTATION+(char*)args[idx1];\
for(;idx2<sizeof specs/sizeof specs[0];idx2++){\
while(++probe<strlen(args[idx1])+args[idx1]&&(specs[idx2]=strtol(probe,&spec_tailptr,0),spec_tailptr==probe));\
if(probe>=strlen(args[idx1])+args[idx1])\
break;\
probe=spec_tailptr;\
}\
if(idx2>=2)\
STACK_OPERATION(L,specs[0],specs[1]);\
}while(0)

#define UNARY_STACK_MANIPULATION(AFTER_DICTATION,STACK_OPERATION) do{\
long spec=0;\
char *probe=AFTER_DICTATION+(char*)args[idx1];\
while(++probe<strlen(args[idx1])+args[idx1]&&(spec=strtol(probe,&spec_tailptr,0),spec_tailptr==probe));\
if(spec)\
STACK_OPERATION(L,spec);\
}while(0)

#define RECURSIVE_BREAKDOWN(STAGE_DIVE) do{\
enum jump_table delve_into=STAGE_DIVE;\
if(parse_console_command_options(range_in_turn,(const char**)digest_in_turn,states,delve_into)<0){\
fprintf(stderr,"Erroneous Return from %s:\n"\
"Depth en Parse - %lu;\n"\
"Category - %s;\n"\
"Frame on Stack - %d.",jump_to_stage[delve_into],strlen(states->tracks),track_categories[strlen(states->tracks)>0?states->tracks[strlen(states->tracks)-1]:0],strlen(states->frames)>0?states->frames[strlen(states->frames)-1]:0);\
goto premature_end;\
}\
}while(0)

#define CLEANUP_AFTERMATH(CURRENT_OR_LAST,RECORDED_STACK_FRAME) do{\
if(states->tracks[strlen(states->tracks)-CURRENT_OR_LAST]==1){\
int ctopx=lua_gettop(L);\
lua_pushglobaltable(L);\
for(int idx2=ctopx;idx2>=RECORDED_STACK_FRAME;idx2--){\
lua_pushvalue(L,states->frames[strlen(states->frames)-CURRENT_OR_LAST]+idx2-ctopx);\
lua_pushvalue(L,idx2);\
lua_rawset(L,-3);\
}\
lua_pop(L,1);\
}else if(states->tracks[strlen(states->tracks)-CURRENT_OR_LAST]>3 && states->tracks[strlen(states->tracks)-CURRENT_OR_LAST]<7){\
int idx2=lua_gettop(L);\
if(RECORDED_STACK_FRAME<idx2){\
for(idx2-=states->tracks[strlen(states->tracks)-CURRENT_OR_LAST]==6?1:0;idx2>RECORDED_STACK_FRAME;idx2--){\
if(!lua_checkstack(L,3)){\
fprintf(stderr,"Unable to Allocate Memory for the Extra Stack Space!");\
goto premature_end;\
}\
lua_pushnil(L);\
lua_insert(L,idx2);\
}\
}\
}else if(states->tracks[strlen(states->tracks)-CURRENT_OR_LAST]>6){\
for(int idx2=lua_gettop(L);idx2>=RECORDED_STACK_FRAME;idx2--){\
if(!lua_checkstack(L,3)){\
fprintf(stderr,"Unable to Allocate Memory for the Extra Stack Space!");\
goto premature_end;\
}\
lua_pushfstring(L,"evaluated_console_command%d",states->tracks[strlen(states->tracks)-CURRENT_OR_LAST]);\
if(idx2>RECORDED_STACK_FRAME)\
lua_pushliteral(L,",");\
lua_pushvalue(L,idx2>RECORDED_STACK_FRAME?-2:-1);\
lua_rotate(L,RECORDED_STACK_FRAME,-1);\
lua_rawset(L,states->frames[strlen(states->frames)-CURRENT_OR_LAST]);\
states->tracks[strlen(states->tracks)-CURRENT_OR_LAST]++;\
}\
lua_concat(L,1+lua_gettop(L)-RECORDED_STACK_FRAME);\
}\
}while(0)

#define DEPTH 13

struct proto_states{
char tracks[DEPTH];
char frames[DEPTH];
};

enum jump_table{parsing_assignment=1,before_tokenising=2,tokenised=3,last_stage=4};
const char *jump_to_stage[]={[1]="Parsing Assignment",[2]="Before Tokenising",[3]="Tokenised",[4]="Last Stage"};
const char *track_categories[]={"Null Category","Assignment","Function Call","Mult-Ret Function Call","Table Construction",[5 ... 6]="Associative Table Construction",[7 ... 255]="Command-InLine Scripting"};

int parse_console_command_options(const int range[static const 2],const char *args[const],struct proto_states *states,const enum jump_table whence){
for(int idx1=range[0];idx1<=range[1];idx1++){
switch(whence){
case parsing_assignment:
goto parsing_assignment;
case before_tokenising:
goto before_tokenising;
case tokenised:
goto tokenised;
case last_stage:
goto last_stage;
default:{
if(strlen(states->tracks)>0 && states->tracks[strlen(states->tracks)-1]>4 && states->tracks[strlen(states->tracks)-1]<7)
states->tracks[strlen(states->tracks)-1]--;
}
}
char *spec_tailptr=NULL;
if(strlen(args[idx1])>5 && !strncmp(args[idx1],"COPY ",5))
BINARY_STACK_MANIPULATION(4,lua_copy);
else if(strlen(args[idx1])>8 && !strncmp(args[idx1],"REPLACE ",8))
UNARY_STACK_MANIPULATION(7,lua_replace);
else if(strlen(args[idx1])>7 && !strncmp(args[idx1],"INSERT ",7))
UNARY_STACK_MANIPULATION(6,lua_insert);
else if(strlen(args[idx1])>7 && !strncmp(args[idx1],"REMOVE ",7))
UNARY_STACK_MANIPULATION(6,lua_remove);
else if(strlen(args[idx1])>7 && !strncmp(args[idx1],"ROTATE ",7))
BINARY_STACK_MANIPULATION(6,lua_rotate);
else if(strlen(args[idx1])>11 && !strncmp(args[idx1],"PUSH VALUE ",11))
UNARY_STACK_MANIPULATION(10,lua_pushvalue);
else if(strlen(args[idx1])>4 && !strncmp(args[idx1],"POP ",4))
UNARY_STACK_MANIPULATION(3,lua_pop);
else if(strlen(args[idx1])>8 && !strncmp(args[idx1],"SET TOP ",8))
UNARY_STACK_MANIPULATION(7,lua_settop);
else if(strlen(args[idx1])>10 && !strncmp(args[idx1],"SET TABLE ",10))
UNARY_STACK_MANIPULATION(9,lua_settable);
else if(strlen(args[idx1])>10 && !strncmp(args[idx1],"GET TABLE ",10))
UNARY_STACK_MANIPULATION(9,lua_gettable);
else if(strlen(args[idx1])==11 && !strcmp(args[idx1],"PRINT STACK")){
printf("------\n");
for(int idx2=lua_gettop(L);idx2>0;idx2--){
if(lua_isinteger(L,idx2))
printf("%d %lld\n",idx2,lua_tointeger(L,idx2));
else if(lua_isnumber(L,idx2))
printf("%d %Lf\n",idx2,lua_tonumber(L,idx2));
else if(lua_isboolean(L,idx2))
printf("%d %s\n",idx2,lua_toboolean(L,idx2)?"true":"false");
else if(lua_isstring(L,idx2))
printf("%d %s\n",idx2,lua_tostring(L,idx2));
else
printf("%d %s\n",idx2,luaL_typename(L,idx2));
}
printf("------\n");
}else{
_Bool script_concluded=0,script_initiated=0;
int assignment_operator=strlen(args[idx1]),count_assignments=0;
for(int idx2=strlen(args[idx1])-1;idx2>0;idx2--){
if(!script_concluded && args[idx1][idx2]=='>'){
if(script_initiated)
break;
script_concluded=1;
}else if(!script_concluded && args[idx1][idx2-1]!='='&& args[idx1][idx2-1]!='<'&& args[idx1][idx2-1]!='~'&& args[idx1][idx2]=='='&&(1+idx2>=strlen(args[idx1])|| args[idx1][1+idx2]!='=')){
if(assignment_operator==strlen(args[idx1]))
assignment_operator=idx2;
count_assignments++;
if(script_initiated && count_assignments>1)
break;
}else if(!script_initiated&&(args[idx1][idx2-1]=='('|| args[idx1][idx2-1]=='{'|| args[idx1][idx2-1]=='=')&& args[idx1][idx2]=='<'){
assignment_operator=strlen(args[idx1]);
count_assignments=0;
script_concluded=0;
script_initiated=1;
}
}
if(args[idx1][0]=='<'){
assignment_operator=strlen(args[idx1]);
count_assignments=0;
}
if(count_assignments+(args[idx1][0]=='=')>1){
fprintf(stderr,"%d More than 1 Assignment Operators within 1 Expression!",count_assignments+(args[idx1][0]=='=')-1);
goto premature_end;
}
parsing_assignment:
if(args[idx1][0]=='='){
if(strlen(states->tracks)>0 && states->tracks[strlen(states->tracks)-1]>3 && states->tracks[strlen(states->tracks)-1]<6){
states->tracks[strlen(states->tracks)-1]++;
if(lua_isnil(L,-2))
lua_remove(L,-2);
}else if(1+strlen(states->tracks)<DEPTH){
states->tracks[strlen(states->tracks)]=1;
states->frames[strlen(states->frames)]=lua_gettop(L);
}else{
fprintf(stderr,"Excessive Nesting of Expressions - Maximum %d!",DEPTH-1);
goto premature_end;
}
if(strlen(args[idx1])<=1){
if(strlen(states->tracks)>0 && states->tracks[strlen(states->tracks)-1]>3 && states->tracks[strlen(states->tracks)-1]<6)
states->tracks[strlen(states->tracks)-1]++;
continue;
}
char *digest_in_turn[1];
char digest1[2+strlen(args[idx1])];
memset(digest1,0,sizeof digest1);
strcpy(digest1,1+args[idx1]);
digest_in_turn[0]=digest1;
int range_in_turn[2]={0,0};
RECURSIVE_BREAKDOWN(2);
}else if(whence<1 && count_assignments>0){
char *digest_in_turn[2];
char digest1[count_assignments>0?3+assignment_operator:2+strlen(args[idx1])];
memset(digest1,0,sizeof digest1);
strncpy(digest1,args[idx1],count_assignments>0?assignment_operator:strlen(args[idx1])-1);
digest_in_turn[0]=digest1;
char digest2[3+(count_assignments>0?strlen(args[idx1])-assignment_operator:1)];
memset(digest2,0,sizeof digest2);
strcpy(digest2,(count_assignments>0?assignment_operator:strlen(args[idx1])-1)+args[idx1]);
digest_in_turn[1]=digest2;
int range_in_turn[2]={0,1};
RECURSIVE_BREAKDOWN(1);
}else{
before_tokenising:;
int last_initiator=-1,last_anti_angle_bracket=-1,first_terminator=strlen(args[idx1]),first_angle_bracket=strlen(args[idx1]),count_parenthetic_initiators=0,count_elements=0,cache_count_elements=1;
_Bool garbage_among_initiators=0,garbage_among_terminators=0,past_terminators=0,garbage_among_consecutive=0,consecutiveness=1;
for(int idx2=strlen(args[idx1])-1;idx2>=0;idx2--){
if(args[idx1][idx2]=='('|| args[idx1][idx2]=='{'|| args[idx1][idx2]=='<'|| args[idx1][idx2]==')'|| args[idx1][idx2]=='}'|| args[idx1][idx2]=='>'){
count_elements++;
if(args[idx1][idx2]=='('|| args[idx1][idx2]=='{'){
if(last_initiator==-1)
last_initiator=idx2;
if(args[idx1][idx2]=='('){
count_parenthetic_initiators++;
if(!consecutiveness)
garbage_among_consecutive=1;
}else if(count_parenthetic_initiators==1)
consecutiveness=0;
}else if(args[idx1][idx2]=='<'){
count_elements=cache_count_elements;
first_angle_bracket=idx2;
last_initiator=-1;
count_parenthetic_initiators=0;
garbage_among_initiators=0;
garbage_among_consecutive=0;
consecutiveness=1;
}else if(args[idx1][idx2]==')'|| args[idx1][idx2]=='}'){
if(last_anti_angle_bracket==-1){
if(past_terminators)
garbage_among_terminators=1;
first_terminator=idx2;
}
}else if(args[idx1][idx2]=='>'&& last_anti_angle_bracket==-1){
cache_count_elements=count_elements;
if(past_terminators)
garbage_among_terminators=1;
last_anti_angle_bracket=idx2;
}
}else{
if((first_angle_bracket<strlen(args[idx1])|| last_initiator>-1)&&(count_parenthetic_initiators!=1 || !consecutiveness))
garbage_among_initiators=1;
if(!past_terminators)
past_terminators=1;
}
}
if(last_anti_angle_bracket>-1 && first_angle_bracket==strlen(args[idx1])){
count_elements=cache_count_elements;
last_initiator=-1;
count_parenthetic_initiators=0;
garbage_among_initiators=0;
garbage_among_consecutive=0;
}else if(last_anti_angle_bracket==-1 && first_angle_bracket<strlen(args[idx1])){
first_terminator=strlen(args[idx1]);
garbage_among_terminators=0;
}
if(last_initiator>=first_terminator){
fprintf(stderr,"Intermixed Initiators and Terminators within 1 Expression!");
goto premature_end;
}else if(last_anti_angle_bracket==-1 && first_angle_bracket==strlen(args[idx1])&& 1+last_initiator<first_terminator)
count_elements++;
if(last_anti_angle_bracket>-1 && first_angle_bracket<strlen(args[idx1])&& last_anti_angle_bracket<=first_angle_bracket){
fprintf(stderr,"Script Terminator Ahead of Script Initiator!");
goto premature_end;
}
if(last_initiator>=first_angle_bracket || last_anti_angle_bracket>=first_terminator){
fprintf(stderr,"Program Self-Check: Command-InLine Script Must Reside within Other Elements!");
goto premature_end;
}
if(count_parenthetic_initiators>2){
fprintf(stderr,"%d More than 2 Parenthetic Initiators within 1 Expression!",count_parenthetic_initiators-2);
goto premature_end;
}else if(count_parenthetic_initiators==2)
count_elements--;
if(garbage_among_terminators || garbage_among_initiators || garbage_among_consecutive){
fprintf(stderr,"Garbage among %s%s%s!",garbage_among_terminators?"Terminators":"",garbage_among_initiators?(garbage_among_terminators?(garbage_among_consecutive?", Initiators":" and Initiators"):"Initiators"):"",garbage_among_consecutive?((garbage_among_terminators || garbage_among_initiators)?" and Consecutive Single-Return Function-Call Initiators":"Consecutive Single-Return Function-Call Initiators"):"");
goto premature_end;
}
{
int scan=count_elements;
_Bool center_scanned=0,call_met=0,past_call=0;
char *digest_in_turn[count_elements],*prepare_call;
for(int idx2=strlen(args[idx1])-1;idx2>=0;idx2--){
if(idx2>=first_terminator){
char *element=]===],os.getenv("ANDROID_ROOT")=="/system"and""or"_",[===[alloca(2);
memset(element,0,2);
element[0]=args[idx1][idx2];
digest_in_turn[--scan]=element;
}else if(!center_scanned && idx2<first_terminator && idx2>last_initiator && 1+last_initiator<first_terminator){
char *element=]===],os.getenv("ANDROID_ROOT")=="/system"and""or"_",[===[alloca(2+first_terminator-last_initiator);
memset(element,0,2+first_terminator-last_initiator);
strncpy(element,1+last_initiator+args[idx1],first_terminator-last_initiator-1);
digest_in_turn[--scan]=element;
center_scanned=1;
}else if(idx2<=last_initiator){
if((!call_met && args[idx1][idx2]!='(')|| past_call || args[idx1][idx2]=='{'){
char *element=]===],os.getenv("ANDROID_ROOT")=="/system"and""or"_",[===[alloca(2);
memset(element,0,2);
element[0]=args[idx1][idx2];
digest_in_turn[--scan]=element;
}else{
if(!call_met){
prepare_call=]===],os.getenv("ANDROID_ROOT")=="/system"and""or"_",[===[alloca(4+idx2);
memset(prepare_call,0,4+idx2);
}
prepare_call[idx2]=args[idx1][idx2];
if(idx2<=0){
digest_in_turn[--scan]=prepare_call;
continue;
}else if(args[idx1][idx2-1]=='{'|| args[idx1][idx2-1]=='('){
if(!call_met){
fprintf(stderr,"Function Name Required!");
goto premature_end;
}
if(args[idx1][idx2-1]=='(')
prepare_call[idx2-1]=args[idx1][idx2-1];
prepare_call+=args[idx1][idx2-1]=='('?idx2-1:idx2;
digest_in_turn[--scan]=prepare_call;
if(args[idx1][idx2-1]=='(')
idx2--;
past_call=1;
}
if(!call_met)
call_met=1;
}
}
}
int range_in_turn[2]={0,sizeof digest_in_turn/sizeof digest_in_turn[0]-1};
RECURSIVE_BREAKDOWN(3);
continue;
}
tokenised:
if(args[idx1][strlen(args[idx1])-1]=='('){
if(1+strlen(states->tracks)>=DEPTH){
fprintf(stderr,"Excessive Nesting of Expressions - Maximum %d!",DEPTH-1);
goto premature_end;
}
states->tracks[strlen(states->tracks)]=((idx1<=0 && !strcmp(args[idx1],"("))|| args[idx1][0]!='(')?3:2;
if(idx1>0 || strcmp(args[idx1],"(")){
char *digest_in_turn[1];
char digest1[(args[idx1][0]=='('?1:2)+strlen(args[idx1])];
memset(digest1,0,sizeof digest1);
strncpy(digest1,args[idx1][0]=='('?1+args[idx1]:args[idx1],strlen(args[idx1])-(args[idx1][0]=='('?2:1));
digest_in_turn[0]=digest1;
int range_in_turn[2]={0,0};
RECURSIVE_BREAKDOWN(4);
}
states->frames[strlen(states->frames)]=lua_gettop(L);
}else if(!strcmp(args[idx1],"{")){
if(strlen(states->tracks)>0 && states->tracks[strlen(states->tracks)-1]==4)
lua_pushnil(L);
lua_newtable(L);
if(1+strlen(states->tracks)>=DEPTH){
fprintf(stderr,"Excessive Nesting of Expressions - Maximum %d!",DEPTH-1);
goto premature_end;
}
states->tracks[strlen(states->tracks)]=4;
states->frames[strlen(states->frames)]=lua_gettop(L);
}else if(args[idx1][0]=='<'){
if(strlen(states->tracks)>0 && states->tracks[strlen(states->tracks)-1]==4)
lua_pushnil(L);
if(args[idx1][strlen(args[idx1])-1]=='>'){
if(luaL_loadbuffer(L,1+args[idx1],strlen(args[idx1])-2,"Inert Eval")!=LUA_OK){
fprintf(stderr,"Syntactic Error within Command-InLine Script: %s!",lua_tostring(L,-1));
goto premature_end;
}
int ctop=lua_gettop(L);
CLEANUP_AFTERMATH(1,ctop);
}else{
lua_newtable(L);
if(1+strlen(states->tracks)>=DEPTH){
fprintf(stderr,"Excessive Nesting of Expressions - Maximum %d!",DEPTH-1);
goto premature_end;
}
states->tracks[strlen(states->tracks)]=7;
states->frames[strlen(states->frames)]=lua_gettop(L);
lua_pushstring(L,1+args[idx1]);
}
}else if(!strcmp(args[idx1],")")){
if(idx1>0 && !strcmp(args[idx1-1],")"))
continue;
else if(strlen(states->tracks)<=0 || states->tracks[strlen(states->tracks)-1]!=((1+idx1<=range[1]&& !strcmp(args[1+idx1],")"))?2:3)){
fprintf(stderr,"Terminator MisMatch - %s Found where %s Expected!",track_categories[(1+idx1<=range[1]&& !strcmp(args[1+idx1],")"))?2:3],track_categories[strlen(states->tracks)>0?states->tracks[strlen(states->tracks)-1]:0]);
goto premature_end;
}
PCALL_ERRH(lua_gettop(L)-states->frames[strlen(states->frames)-1],states->tracks[strlen(states->tracks)-1]==2?1:LUA_MULTRET,0,"Error Invoking Specified Function: %s!",CUSTOM_GOTO,premature_end);
CLEANUP_AFTERMATH(2,states->frames[strlen(states->frames)-1]);
states->tracks[strlen(states->tracks)-1]=0;
states->frames[strlen(states->frames)-1]=0;
}else if(!strcmp(args[idx1],"}")){
if(strlen(states->tracks)<=0 ||(states->tracks[strlen(states->tracks)-1]!=4 && states->tracks[strlen(states->tracks)-1]!=5)){
fprintf(stderr,"Terminator MisMatch - %s Found where %s Expected!",track_categories[4],track_categories[strlen(states->tracks)>0?states->tracks[strlen(states->tracks)-1]:0]);
goto premature_end;
}
while(lua_gettop(L)>states->frames[strlen(states->frames)-1]){
if(lua_isnil(L,1+states->frames[strlen(states->frames)-1])){
lua_pushinteger(L,1+lua_rawlen(L,states->frames[strlen(states->frames)-1]));
lua_replace(L,1+states->frames[strlen(states->frames)-1]);
}
lua_rotate(L,1+states->frames[strlen(states->frames)-1],-2);
lua_rawset(L,states->frames[strlen(states->frames)-1]);
}
CLEANUP_AFTERMATH(2,states->frames[strlen(states->frames)-1]);
states->tracks[strlen(states->tracks)-1]=0;
states->frames[strlen(states->frames)-1]=0;
}else if(args[idx1][strlen(args[idx1])-1]=='>'){
if(strlen(states->tracks)<=0 || states->tracks[strlen(states->tracks)-1]<7){
fprintf(stderr,"Terminator MisMatch - %s Found where %s Expected!",track_categories[7],track_categories[strlen(states->tracks)>0?states->tracks[strlen(states->tracks)-1]:0]);
goto premature_end;
}
lua_pushlstring(L,args[idx1],strlen(args[idx1])-1);
lua_concat(L,lua_gettop(L)-states->frames[strlen(states->frames)-1]);
lua_getglobal(L,"load");
lua_insert(L,states->frames[strlen(states->frames)-1]);
lua_pushliteral(L,"Immediate Eval");
lua_pushnil(L);
lua_rotate(L,-4,-1);
PCALL_ERRH(4,LUA_MULTRET,0,"Syntactic Error within Command-InLine Script: %s!",CUSTOM_GOTO,premature_end);
PCALL_ERRH(0,LUA_MULTRET,0,"Error Executing Command-InLine Script: %s!",CUSTOM_GOTO,premature_end);
CLEANUP_AFTERMATH(2,states->frames[strlen(states->frames)-1]);
states->tracks[strlen(states->tracks)-1]=0;
states->frames[strlen(states->frames)-1]=0;
}else{
last_stage:
if(strlen(states->tracks)>0 && states->tracks[strlen(states->tracks)-1]==4)
lua_pushnil(L);
char replica[3+strlen(args[idx1])],*internal_state,*global_route;
memset(replica,0,sizeof replica);
strcpy(replica,args[idx1]);
if(lua_getglobal(L,strtok_r(replica,".[]",&internal_state))==LUA_TTABLE || luaL_testudata(L,-1,"dual_Capable_Map")){
while((global_route=strtok_r(NULL,".[]",&internal_state))){
char temp[3+strlen(global_route)];
memset(temp,0,sizeof temp);
temp[0]='[';
long index;
char *route_tailptr=NULL;
if(strstr(args[idx1],strcat(strcat(temp,global_route),"]"))&&(index=strtol(global_route,&route_tailptr,0),global_route<route_tailptr))
lua_geti(L,-1,index);
else
lua_getfield(L,-1,global_route);
lua_remove(L,-2);
if(lua_isnil(L,-1))
break;
}
}
if(lua_isnil(L,-1)){
lua_pop(L,1);
if(strlen(states->tracks)>0 && states->tracks[strlen(states->tracks)-1]>6){
lua_pushstring(L,args[idx1]);
continue;
}else{
char *literal_tailptr=NULL;
long long integer_number;
long double float_point_number;
if((integer_number=strtoll(args[idx1],&literal_tailptr,0),args[idx1]<literal_tailptr)&&(*literal_tailptr=='\0'|| *literal_tailptr!='.'))
lua_pushinteger(L,integer_number);
else if(float_point_number=strtold(args[idx1],&literal_tailptr),args[idx1]<literal_tailptr)
lua_pushnumber(L,float_point_number);
else if(strlen(args[idx1])==3 && !strcmp(args[idx1],"nil"))
lua_pushnil(L);
else if(strlen(args[idx1])==4 && !strcmp(args[idx1],"true"))
lua_pushboolean(L,1);
else if(strlen(args[idx1])==5 && !strcmp(args[idx1],"false"))
lua_pushboolean(L,0);
else
lua_pushstring(L,args[idx1]);
}
}
int ctop=lua_gettop(L);
CLEANUP_AFTERMATH(1,ctop);
}
}
}
}
return 0;
premature_end:
return -1;
}

volatile sig_atomic_t signal_counter=0;

sigjmp_buf context_for_jump;

void interpreter_Count_Hook_Function(lua_State *L,lua_Debug *hook_arg){
if(hook_arg->event==LUA_HOOKCOUNT && signal_counter<3 && signal_counter>0){
signal_counter=0;
luaL_error(L,"Lua Script Aborted According to User Request!");
}
}

void versatile_SigHandler(int signum){
if(signum==SIGINT){
if(signal_counter<3)
signal_counter++;
else
siglongjmp(context_for_jump,1);
}else if(signum==SIGABRT || signum==SIGSEGV || signum==SIGBUS || signum==SIGILL || signum==SIGFPE){
int stack_depth;
void *preliminary_info[27];
char **stack_traceback;
stack_depth=backtrace(preliminary_info,27);
stack_traceback=backtrace_symbols(preliminary_info,stack_depth);
if(stack_traceback){
fprintf(stderr,"Trace Back to Stack Depth #%d:\n",stack_depth);
for(int idx=0;idx<stack_depth;idx++)
fprintf(stderr,"%d\t%s\n",idx,stack_traceback[idx]);
free(stack_traceback);
}
renewed_action.sa_handler=SIG_DFL;
sigaction(signum,&renewed_action,NULL);
raise(signum);
}
}

char stack_dump[1024*1024];
char *tail=stack_dump;

int main(int n,char *args[]){
int segment=0;
for(int idx=0;idx<n;idx++){
if(idx<n-1 && idx>1 && *args[idx]=='|'&& strlen(args[idx])==1)
segment++;
}
int segmentation[1+segment][2];
L=luaL_newstate();
luaL_openlibs(L);
lua_pushglobaltable(L);
lua_createtable(L,0,3);
lua_pushnil(L);
while(lua_next(L,-3)){
lua_pushvalue(L,-2);
lua_insert(L,-2);
lua_rawset(L,-4);
}
char script[]===],3+script_len,"]=",script1,[===[;
DOSTR_ERRH(script,"Error Executing Module-Search Script: %s!",CUSTOM_GOTO,premature_end);
REG;
memset(script,0,sizeof script);
strcpy(script,]===],script2,[===[);
memset(stack_dump,0,sizeof stack_dump);
segment=0;
for(int idx=0;idx<n;idx++){
if(idx<n-1 && idx>1 && *args[idx]=='|'&& strlen(args[idx])==1){
segmentation[segment][1]=idx-1;
segmentation[segment][0]=segment>0?2+segmentation[segment-1][1]:1;
segment++;
}
}
segmentation[segment][1]=n-1;
segmentation[segment][0]=segment>0?2+segmentation[segment-1][1]:1;
segment=0;
struct proto_states states;
do{
lua_sethook(L,NULL,0,0);
memset(states.tracks,0,sizeof states.tracks);
memset(states.frames,0,sizeof states.frames);
signal_counter=0;
memset(&renewed_action,0,sizeof renewed_action);
renewed_action.sa_handler=versatile_SigHandler;
sigemptyset(&renewed_action.sa_mask);
renewed_action.sa_flags=0;
for(int idx=0;idx<sizeof collective_signals/sizeof collective_signals[0];idx++){
memset(&current_action,0,sizeof current_action);
sigaction(collective_signals[idx],NULL,&current_action);
if(memcmp(&current_action,&renewed_action,sizeof renewed_action))
sigaction(collective_signals[idx],&renewed_action,NULL);
}
if(sigsetjmp(context_for_jump,1)){
struct stat attr;
int dump_descriptor=open(!stat("/sdcard/Download/Codes/",&attr)&&S_ISDIR(attr.st_mode)?"/sdcard/Download/Codes/Memory Dump":"./Memory Dump",O_CREAT | O_WRONLY | O_APPEND,S_IRUSR | S_IWUSR);
if(dump_descriptor!=-1){
if(tail>sizeof stack_dump+stack_dump)
tail=sizeof stack_dump+stack_dump;
ssize_t write_increment;
char *proceeding_pointer=stack_dump;
while(write_increment=write(dump_descriptor,proceeding_pointer,(size_t)(tail-proceeding_pointer)),write_increment>0 && (proceeding_pointer+=write_increment)<tail);
close(dump_descriptor);
}
continue;
}
DOSTR_ERRH(script,"Error Finding Script File: %s!",CUSTOM_GOTO,premature_end);
if(lua_getglobal(L,"task_serial")==LUA_TNUMBER){
lua_pushinteger(L,1);
lua_arith(L,LUA_OPADD);
lua_setglobal(L,"task_serial");
}else{
lua_pushinteger(L,2);
lua_setglobal(L,"task_serial");
if(lua_getglobal(L,"module_name")!=LUA_TSTRING){
fprintf(stderr,"Global Storing Module Name Expired and Now Becomes %s!",luaL_typename(L,-1));
goto premature_end;
}
luaL_requiref(L,lua_tostring(L,-1),NULL,0);
lua_getfield(L,-1,"serialise");
lua_pushboolean(L,1);
lua_pushliteral(L,"\t");
lua_rotate(L,1,3);
lua_pop(L,3);
}
volatile int ctop;
if(lua_isfunction(L,-1)){
lua_insert(L,4);
ctop=lua_gettop(L);
if(parse_console_command_options(segmentation[segment],(const char**)args,&states,0)==-1)
goto premature_end;
if((ctop=lua_gettop(L)-ctop)>0)
lua_rotate(L,5,ctop);
lua_pushcfunction(L,errMsg_Handler);
lua_insert(L,4);
lua_sethook(L,interpreter_Count_Hook_Function,LUA_MASKCOUNT,27000);
PCALL_ERRH(lua_gettop(L)-5,LUA_MULTRET,4,"Error Executing Script File: %s!",CLEAR_STACK,3);
lua_sethook(L,NULL,0,0);
lua_remove(L,4);
ctop=3;
}else{
volatile _Bool script_file_unfound=lua_isboolean(L,-1)&& !lua_toboolean(L,-1),script_file_syntactic_error=lua_isstring(L,-1)&& !lua_toboolean(L,-2);
if(!script_file_unfound && !script_file_syntactic_error)
CLEAR_STACK(3);
else{
if(script_file_unfound)
lua_pop(L,1);
else if(script_file_syntactic_error){
fprintf(stderr,"Syntactic Error within Script File: %s!",lua_tostring(L,-1));
lua_pop(L,2);
}
ctop=lua_gettop(L);
if(parse_console_command_options(segmentation[segment],(const char**)args,&states,0)==-1)
goto premature_end;
}
}
int idx1=1+ctop;
if((ctop=lua_gettop(L))>=idx1){
for(;idx1<=ctop;idx1++){
if(!lua_checkstack(L,27)){
fprintf(stderr,"Unable to Allocate Memory for the Extra Stack Space!");
goto premature_end;
}
lua_pushvalue(L,1);
int bret=lua_gettop(L);
lua_pushvalue(L,idx1);
lua_pushvalue(L,2);
lua_pushvalue(L,3);
PCALL_ERRH(3,LUA_MULTRET,0,"Error Serialising Individual Result: %s!",CUSTOM_GOTO,premature_end);
int idx2=lua_gettop(L);
if(idx2>bret){
for(;idx2>bret;idx2--){
if(!lua_checkstack(L,3)){
fprintf(stderr,"Unable to Allocate Memory for the Extra Stack Space!");
goto premature_end;
}
lua_pushliteral(L,"\n");
lua_insert(L,idx2);
}
}
lua_pushliteral(L,"\n");
}
lua_getglobal(L,"task_serial");
lua_pushfstring(L,"--finish line of stack dump for task #%d\n",(int)lua_tonumber(L,-1)-1);
lua_replace(L,-2);
lua_concat(L,lua_gettop(L)-ctop);
size_t result_length;
const char *result_string=lua_tolstring(L,-1,&result_length);
if(result_length>=sizeof stack_dump)
memcpy(stack_dump,result_string,sizeof stack_dump);
else{
if(result_length+tail>=sizeof stack_dump+stack_dump)
memmove(result_length+stack_dump,stack_dump,sizeof stack_dump -result_length);
else
memmove(result_length+stack_dump,stack_dump,tail-stack_dump);
memcpy(stack_dump,result_string,result_length);
}
if(tail<sizeof stack_dump+stack_dump)
tail+=result_length;
lua_pop(L,1);
}
int cache_segment=segment;
if(lua_getglobal(L,"segment")==LUA_TNUMBER){
segment=lua_tonumber(L,-1);
cache_segment=segment;
if(segment<0)
segment=0;
else{
for(idx1=lua_gettop(L);idx1>=1;idx1--){
if(lua_isstring(L,idx1)&& !lua_isnumber(L,idx1)&& !strcmp(lua_tostring(L,idx1),"cannot resume dead coroutine")&& lua_isboolean(L,idx1-1)&& !lua_toboolean(L,idx1-1)){
lua_settop(L,4);
segment=1+segment%(sizeof segmentation/sizeof segmentation[0]-1);
break;
}
}
if(segment>=sizeof segmentation/sizeof segmentation[0])
segment=1+(segment-1)%(sizeof segmentation/sizeof segmentation[0]-1);
}
}else
segment=1;
if(segment==cache_segment && lua_isinteger(L,-1))
lua_pop(L,1);
else{
lua_pushinteger(L,segment);
lua_replace(L,-2);
lua_setglobal(L,"segment");
}
}while(lua_gettop(L)<LUA_MINSTACK-3 || lua_checkstack(L,5));
premature_end:
lua_close(L);
return 0;
}]===])
io.output():close()
if os.getenv("ANDROID_ROOT")~="/system"then
goto not_bother
end
if not io.popen("find $PREFIX/local -type d 2>/dev/null"):read()then
os.execute("mkdir -v $PREFIX/local")
end
os.execute("rm -rvf $PREFIX/local/c_M")
os.execute("mkdir -v -m +rwx $PREFIX/local/c_M")
os.execute("export SOURCE_DATE_EPOCH="..interface.renewed)
if os.execute('clang -x c "'..where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version)..'" -fPIC -fdata-sections -ffunction-sections -Wl,--gc-sections,--as-needed -ffp-contract=fast '..
--"-fsanitize=address,undefined -fsanitize-recover=address,undefined "..
"-ggdb -O0 -Wall -o $PREFIX/local/c_M/lua_Console -L$PREFIX/local/lib -llua -L$PREFIX/lib -landroid-execinfo -pthread -lm")then
os.execute([===[unset SOURCE_DATE_EPOCH
unset LUA_INIT
unset LUA_INIT_]===].._VERSION:match("%f[%s%.%d][%s%.%w]*"):gsub("%s",""):gsub("%.","_").."\n"..[===[export "PATH=$PREFIX/bin"
cat > ~/.bashrc << EOF
$(luarocks path)
EOF
echo 'export "PATH=$PREFIX/local/bin:$PREFIX/local/c_M:$PATH"' >> ~/.bashrc
echo 'export "LUA_INIT_]===].._VERSION:match("%f[%s%.%d][%s%.%w]*"):gsub("%s",""):gsub("%.","_")..[===[=@/sdcard/Download/Codes/lua_StandAlone"' >> ~/.bashrc
cat > ~/.inputrc << EOF
TAB: menu-complete
set show-all-if-ambiguous on
set menu-complete-display-prefix on
EOF]===])
print("Main Program Correctly Set Up!")
else
error("Error Setting Up Main Program!")
end
os.remove(where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version))
mainprogram_sum=directory_CheckSum(io.popen("echo $PREFIX"):read().."/local/c_M/lua_Console",io.popen("echo $PREFIX"):read().."/local/c_M/")
::not_bother::

--autorun part 3:
status="pack with lib"
local database_found,database_finder,database_path,database_location=pcall(directory_Match,'"'..(os.getenv("ANDROID_ROOT")=="/system"and where:match("^(.-/)[^/]+/$")or io.popen('cd /D "'..where..'.." && cd'):read().."\\")..(os.getenv("ANDROID_ROOT")=="/system"and'" -path *'..keystone(cversion,crenewed)..keystone(crenewed,cversion)..keystone(status,crenewed)..keystone(status,cversion).."* -type f"or"*"..keystone(cversion,crenewed)..keystone(crenewed,cversion)..keystone(status,crenewed)..keystone(status,cversion)..'*" /A:-D'))
status,code_line="ready for run",nil
io.output(where..keystone(interface.version,interface.renewed)..keystone(interface.renewed,interface.version)..keystone(status,interface.renewed)..keystone(status,interface.version))
if database_found then
io.write("--range[15][",modulos[15][1]+3*6,"]\n")
if database_location and database_path:find(database_location)==1 then
io.write("local database_snapshot=",("%q"):format(io.input(database_path):read("a")),"\n")
io.input():close()
elseif type(database_finder)=="table"then
io.write("local database_snapshots={")
for idx=1,#database_finder//3 do
io.write(("%q"):format(io.input(database_finder[3*idx-1]):read("a")),3*(1+idx)>#database_finder and"}\n"or",\n")
io.input():close()
end
end
io.write("--range[15][",modulos[15][2]+2*6,"]\n")
end
io.input(standard_handle):seek("set")
repeat
local next_line=io.input():read()
if code_line then
if code_line:find("%s-version%s-=%s-.-%s-,%s-$")==1 then
io.write("version=",interface.version,",",next_line and"\n"or"")
elseif code_line:find("%s-renewed%s-=%s-.-%s-,%s-$")==1 then
io.write("renewed=",interface.renewed,",",next_line and"\n"or"")
elseif code_line:find("%s-local%s-status%s-=%s-\"%s-.-%s-\"%s-;%s-$")==1 then
io.write('local status="',status,'";',next_line and"\n"or"")
elseif code_line:find("%s-local%s-digestH%s-=%s-.-%s-;%s-$")==1 then
io.write("local digestH=",household_sum,";",next_line and"\n"or"")
elseif code_line:find("%s-local%s-digestM%s-=%s-.-%s-;%s-$")==1 then
io.write("local digestM=",mainprogram_sum,";",next_line and"\n"or"")
else
io.write(code_line,next_line and"\n"or"")
end
end
code_line=next_line
until not next_line
io.output():close()
end
end
io.input(standard_handle):close()
status=cstatus
end

--final autorun:
local satchel={}
for serial,piece in next,interface do
if type(piece)=="number"or type(piece)=="string"then
print(serial,piece)
satchel.constant=1+(satchel.constant or 0)
elseif debug.getmetatable(piece)then
satchel.object=1+(satchel.object or 0)
else
satchel[type(piece)]=1+(satchel[type(piece)]or 0)
end
end
print("A total of")
local category,count,cache_category,cache_count=next(satchel)
while category do
cache_category,cache_count=category,count
category,count=next(satchel,category)
if category then
print(cache_count.." "..cache_category..(cache_count>1 and"s"or"")..",")
end
end
print(cache_count.." "..cache_category..(cache_count>1 and"s"or"")..' loaded - as module named "'..required_name..'",')
print("Ready to Roll!")
if status=="under maintenance"then
status="debug"
init_Dbg(interface)
status=cstatus
end


::lower_overhead::
end


return interface