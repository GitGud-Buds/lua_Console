--range[8][12]
local function serialise(self,compact,indent_char,serialised,layer,assembler)
indent_char,serialised,layer,assembler=indent_char or compact,serialised or indent_char or compact,layer or 1,assembler or{}
compact,indent_char,serialised=type(compact)=="boolean"and compact or false,type(indent_char)=="string"and indent_char or"",type(serialised)=="table"and serialised or{}
if type(self)=="string"then
table.insert(assembler,string.format("%q",self))
elseif type(self)=="table"then
if serialised[self]and serialised[self]<layer then
table.insert(assembler,tostring(self).."-loophole patch")
goto skip
else
serialised[self]=layer
end
table.insert(assembler,[===[{
]===])
for k,v in next,self do
table.insert(assembler,indent_char:rep(layer))
table.insert(assembler,"[")
assembler=serialise(k,compact,indent_char,serialised,1+layer,assembler)
table.insert(assembler,"]=")
assembler=serialise(v,compact,indent_char,serialised,1+layer,assembler)
table.insert(assembler,[===[,
]===])
end
table.insert(assembler,indent_char:rep(layer-1).."}")
::skip::
else
table.insert(assembler,tostring(self))
end
if layer>1 then
return assembler
else
if compact and indent_char==""then
return(table.concat(assembler):gsub("%s+",""):gsub(",}","}"))
else
return(table.concat(assembler):gsub([===[=[^
]-{]===],"={"):gsub([===[,(
[^
]-})]===],"%1"))
end
end
end

local function replicate(object,touched,layer)
touched,layer=touched or{},layer or 1
if type(object)~="table"then
return object
else
if touched[object]and touched[object]<layer then
return tostring(object).."-loophole patch"
else
touched[object]=layer
end
local replica={}
for k,v in next,object do
replica[replicate(k,touched,1+layer)]=replicate(v,touched,1+layer)
end
return replica
end
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
params.offset=params.unit<0 and 1+params.offset%params.far_reach or(params.offset%params.far_reach>0 and params.offset%params.far_reach or params.far_reach)
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
x=(args.unit+x)%args.far_reach>0 and(args.unit+x)%args.far_reach or args.far_reach
if x==args.onset then
return _
end
::first::
local j,elem=1,{}
while j<=#args.lists and(args.lists[j]or args.unique)[x]~=_ do
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
params.offset=(params.unit+params.offset)%params.far_reach>0 and(params.unit+params.offset)%params.far_reach or params.far_reach
if params.offset==params.onset then
return _
end
::first::
local j,elem=1,{}
while j<=#lis and(lis[j]or params.unique)[params.offset]~=_ do
elem[1+#elem]=lis[j][params.offset]
j=1+j
end
return elem
end
end
local j,element=1,{}
while j<=#lists and(lists[j]or params.unique)[params.offset]~=_ do
element[1+#element]=lists[j][params.offset]
j=1+j
end
params.offset=(params.unit+params.offset)%params.far_reach>0 and(params.unit+params.offset)%params.far_reach or params.far_reach
if params.offset~=params.onset then
return element,zip(lists,_,params)
else
return element
end
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
local keys={}
if type(params.key_word)=="boolean"then
for key in next,input_table,#input_table>0 and #input_table or _ do
keys[1+#keys]=key
end
if params.key_word==true then
table.sort(keys,type(params.comp_func)~="function"and function(l,r)
if type(l)~=type(r)then
return type(l)<type(r)
elseif type(l)=="number"or type(l)=="string"then
return l<r
end
return tostring(l)<tostring(r)
end or params.comp_func)
end
if(params.i and type(params.i)~="number")or(params.j and type(params.j)~="number")then
for idx,vlu in ipairs(keys)do
if vlu==params.i then
params.i=idx
end
if vlu==params.j then
params.j=idx
end
end
end
local unfound_keys={}
if params.i and type(params.i)~="number"then
unfound_keys[1+unfound_keys]=tostring(params.i)
end
if params.j and type(params.j)~="number"then
unfound_keys[1+unfound_keys]=tostring(params.j)
end
if #unfound_keys>0 then
error(table.concat(unfound_keys,", ")..": Key"..(#unfound_keys>1 and"s"or"").." Unfound in Input Table!")
end
end
if not params.i then
if not params.dist then
if not params.j then
params.i=(params.key_word==_ or type(params.key_word)=="boolean")and 1 or _
else
params.i=(params.key_word==_ or type(params.key_word)=="boolean")and 1 or params.j
end
else
if not params.j then
if params.dist=="-"then
params.i=params.key_word==_ and(#input_table>0 and #input_table or _)or(type(params.key_word)=="boolean"and #keys or _)
elseif params.dist>0 then
params.i=(params.key_word==_ or type(params.key_word)=="boolean")and 1 or _
elseif params.dist<0 then
params.i=params.key_word==_ and(#input_table>0 and #input_table or _)or(type(params.key_word)=="boolean"and #keys or _)
else
params.i=params.key_word==_ and(#input_table>0 and math.random(1,#input_table)or _)or(type(params.key_word)=="boolean"and math.random(1,#keys)or _)
end
else
if params.dist=="-"then
params.i=params.key_word==_ and(#input_table>0 and #input_table or _)or(type(params.key_word)=="boolean"and #keys or params.j)
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
if params.key_word==_ then
return index_Body(input_table,start,#input_table>0 and #input_table or _,params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,#keys,params.stateless,keys)
else
return serial_Body(input_table,start,start,params.key_word,params.stateless)
end
else
if params.key_word==_ then
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
if params.key_word==_ then
return index_Body(input_table,start,1,params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,1,params.stateless,keys)
else
return serial_Body(input_table,start,start,params.key_word,params.stateless)
end
elseif params.dist~=0 then
if params.key_word==_ then
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
if params.key_word==_ then
return index_Body(input_table,start,params.j,params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,params.j,params.stateless,keys)
else
return serial_Body(input_table,start,params.j,params.key_word,params.stateless)
end
elseif params.i-params.j<0 and params.dist>0 then
if params.key_word==_ then
return index_Body(input_table,start,math.min(params.j,params.dist+params.i),params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,math.min(params.j,params.dist+params.i),params.stateless,keys)
else
return serial_Body(input_table,start,math.min(params.j,params.dist+params.i),params.key_word,params.stateless)
end
elseif params.i-params.j>0 and params.dist<0 then
if params.key_word==_ then
return index_Body(input_table,start,math.max(params.j,params.dist+params.i),params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,math.max(params.j,params.dist+params.i),params.stateless,keys)
else
return serial_Body(input_table,start,math.max(params.j,params.dist+params.i),params.key_word,params.stateless)
end
elseif(params.i-params.j)*params.dist>0 then
if params.i-params.j<params.dist then
if params.key_word==_ then
return index_Body(input_table,start,math.max(params.j,params.dist+params.i),params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,math.max(params.j,params.dist+params.i),params.stateless,keys)
else
return serial_Body(input_table,start,math.max(params.j,params.dist+params.i),params.key_word,params.stateless)
end
elseif params.i-params.j>params.dist then
if params.key_word==_ then
return index_Body(input_table,start,math.min(params.j,params.dist+params.i),params.stateless)
elseif type(params.key_word)=="boolean"then
return key_Body(input_table,start,math.min(params.j,params.dist+params.i),params.stateless,keys)
else
return serial_Body(input_table,start,math.min(params.j,params.dist+params.i),params.key_word,params.stateless)
end
else
if params.dist~=0 then
if params.key_word==_ then
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
if type(states[args or"args"][2*layer-1])=="number"and type(states[args or"args"][2*layer])=="number"then
for ctrl=states[args or"args"][2*layer-1],states[args or"args"][2*layer],states[args or"args"]["step"..layer]or 1 do
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
if comprehend then
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
local iter_func,invar_state,ctrl_var
if states[args or"args"][2*layer-1]==states[args or"args"][2*layer]and type(states[args or"args"][2*layer])=="function"then
iter_func=states[args or"args"][2*layer]
elseif type(states[args or"args"]["customgen"..layer])=="function"then
iter_func,invar_state,ctrl_var=states[args or"args"]["customgen"..layer](states[args or"args"][2*layer-1],states[args or"args"][2*layer])
else
iter_func,invar_state,ctrl_var=table_Player(states[args or"args"][2*layer-1],states[args or"args"][2*layer])
end
for ctrl,yield1,yield2 in iter_func,invar_state,ctrl_var do
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
if comprehend then
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
if params["customgen"..layer]or type(params[layer])~="table"or next(params[layer],#params[layer]>0 and #params[layer]or _)or #params[layer]==0 then
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
if params["customgen"..idx/2]or type(params[idx])~="table"or not next(params[idx],#params[idx]>0 and #params[idx]or _)or #params[idx]>0 then
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
params=type(params.ress)=="function"and params.ress(params,states,comprehension,layer,ctrl,yield1,yield2)or _
if not params then
return comprehension,states,layer,ctrl,yield1,yield2
else
return true_Iterator(params,states,comprehension)
end
end


local arithmetiCalc={}

function arithmetiCalc:initialise(parents,inverse_map)
for k in next,debug.getmetatable(self).map do
local config=k:match("^(%w%w%w)%w-$")
rawset(debug.getmetatable(self),"_"..k,debug.getmetatable(self).prototypes[config.."usc"](debug.getmetatable(self),k))
rawset(debug.getmetatable(self),"__"..k:match("^%w%w%w(%w-)$"),debug.getmetatable(self).prototypes[config.."mm"](debug.getmetatable(self),k))
end
parents=parents or{}
rawset(debug.getmetatable(self),"_index",function(self,method)
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
if type(v)=="table"then
import_Facility(self,v,processed,1+layer)
elseif type(v)=="function"then
bool=true
local algorithm=v(debug.getmetatable(self))
if debug.getmetatable(self).map[algorithm]then
local ex_method=debug.getmetatable(self).map[algorithm]
inverse_map[ex_method][1][ex_method]=_
inverse_map[ex_method]=_
elseif inverse_map[k]then
local ex_algo=inverse_map[k][2]
inverse_map[k][1][k]=_
debug.getmetatable(self).map[ex_algo]=_
debug.getmetatable(self)["_"..ex_algo]=_
debug.getmetatable(self)["__"..ex_algo]=_
inverse_map[k]=_
end
debug.getmetatable(self).map[algorithm]=k
rawset(debug.getmetatable(self),"_"..algorithm,debug.getmetatable(self).prototypes[algorithm:match("^(%w%w%w)%w-$").."usc"](debug.getmetatable(self),algorithm))
rawset(debug.getmetatable(self),"__"..algorithm,debug.getmetatable(self).prototypes[algorithm:match("^(%w%w%w)%w-$").."mm"](debug.getmetatable(self),algorithm))
inverse_map[k]={math_lib,algorithm}
end
end
if bool then
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
results.width=(debug.getmetatable(dummy).map[dummy.algorithm]:find("%w-$",2)==2 and 1 or #debug.getmetatable(dummy).map[dummy.algorithm]-1)+results.width
end
end
if debug.getmetatable(dummy).map[dummy.algorithm]:find("%w-$",2)==2 then
results.width=(not rawget(dummy,"result")and 0 or 1+#tostring(dummy.result))+2+#debug.getmetatable(dummy).map[dummy.algorithm]+results.width
else
results.width=paretheses+results.width
end
end
else
results.height=1
results.width=#tostring(rawequal(debug.getmetatable(dummy),arithmetiCalc)and dummy:evaluate()or arithmetiCalc.evaluate(dummy))
end
return results
end

arithmetiCalc.__len=len_Precursor

local function concat_Precursor(...)
local sizes,pieces={},table.pack(...)
if not rawequal(debug.getmetatable(pieces[1]),arithmetiCalc)and arithmetiCalc.map[pieces[1][1]]then
sizes[1]=true
else
sizes[1]=false
end
for idx1=sizes[1]and 2 or 1,pieces.n do
if sizes[1]then
sizes[idx1]=rawequal(debug.getmetatable(pieces[idx1]),arithmetiCalc)and #pieces[idx1]or #tostring(arithmetiCalc.evaluate(pieces[idx1]))
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
width[0]=(not pieces[1][2]and 0 or 1+#tostring(pieces[1][2]))+1+#arithmetiCalc.map[pieces[1][1]]
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
combined[idx1][1+#combined[idx1]]=string.rep(" ",arithmetiCalc.map[pieces[1][1]]:find("%w-$",2)==2 and 1 or #arithmetiCalc.map[pieces[1][1]]-1)
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
debug.setmetatable(self,_)
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

function arithmetiCalc.__index(self,key)
return debug.getmetatable(self)._index(self,key)
end

function arithmetiCalc.__newindex(self,dictation,details)
if dictation=="initcalc"then
self:initialise((type(details)~="table"and{}or details).select and table.unpack(details)or details)
elseif dictation=="imptalgo"then
self:import_Algorithms((type(details)~="table"and{}or details).select and table.unpack(details)or details)
elseif dictation=="prtalgo"and rawget(self,"algorithm")then
details=details or{}
local height,width,algorithms,operands={},{},{},debug.getmetatable(self).prototypes[self.algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
for idx=1,#operands-1 do
local size
if idx<#operands-1 then
size=rawequal(debug.getmetatable(self[operands[idx]]),debug.getmetatable(self))and #self[operands[idx]]or{height=1,width=#tostring(debug.getmetatable(self).evaluate(self[operands[idx]]))}
height[1+#height]=size.height
width[1+#width]=size.width
algorithms[1+#algorithms]=(self[operands[idx]]..self[operands[1+idx]])[1]
else
size=rawequal(debug.getmetatable(self[operands[idx]]),debug.getmetatable(self))and #self[operands[idx]]or{height=1,width=#tostring(debug.getmetatable(self).evaluate(self[operands[idx]]))}
height[1+#height]=size.height
width[1+#width]=size.width
size=rawequal(debug.getmetatable(self[operands[1+idx]]),debug.getmetatable(self))and #self[operands[1+idx]]or{height=1,width=#tostring(debug.getmetatable(self).evaluate(self[operands[1+idx]]))}
height[1+#height]=size.height
width[1+#width]=size.width
algorithms[1+#algorithms],algorithms[2+#algorithms]=table.unpack(self[operands[idx]]..self[operands[1+idx]])
end
end
local combined,max_height={},math.max(table.unpack(height))
for idx1=1,max_height do
combined[idx1]={}
for idx2=1,#width do
if idx1<=math.ceil((max_height-height[idx2])/2)or idx1>max_height-(max_height-height[idx2])//2 then
combined[idx1][1+#combined[idx1]]=string.rep(" ",width[idx2])
else
combined[idx1][1+#combined[idx1]]=table.concat(algorithms[idx2][2][idx1-math.ceil((max_height-height[idx2])/2)])
end
if idx2<#width then
if idx1~=1+max_height//2 then
combined[idx1][1+#combined[idx1]]=string.rep(" ",#tostring(details[idx2]or"Undefined Operation"))
else
combined[idx1][1+#combined[idx1]]=tostring(details[idx2]or"Undefined Operation")
end
end
end
if idx1<max_height then
combined[idx1][1+#combined[idx1]]="\n"
end
combined[idx1]=table.concat(combined[idx1])
end
for k in next,details do
details[k]=_
end
details[1]=table.concat(combined)
print(details[1])
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
if rawget(self[operands[idx1]],results[idx2]..idx3)==_ then
break
elseif rawequal(self[operands[idx1]][results[idx2]..idx3],self)then
self[operands[idx1]][results[idx2]..idx3]=false
end
end
end
end
self[operands[idx1]]=_
end
if rawget(self,"result")then
self.result=_
end
self.algorithm=_
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
if rawequal(potential,_)then
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
if rawequal(potential,_)then
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

local function permutation_Generator(input_table,groups)
local keys,list={},{}
for key,item in next,input_table do
keys[1+#keys]=key
list[1+#list]=item
end
groups=groups or{stateless=true}
groups[1]=groups[1]or math.random(2,#list-1)
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
permGen(ks,lis,grps,_,1+group_layer)
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
return _
end,params
end
local replica_groups=replicate(groups)
return function()
local status,_,permutation_yield=coroutine.resume(thread,keys,list,replica_groups)
if status then
return permutation_yield
end
coroutine.close(thread)
return _
end
end

local function grouped_Combination_Generator(input_table,groups)
local keys,list={},{}
for key,item in next,input_table do
keys[1+#keys]=key
list[1+#list]=item
end
groups=groups or{stateless=true}
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
gCombGen(ks,lis,grps,_,_,1+group_layer)
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
return _
end,params
end
local replica_groups=replicate(groups)
return function()
local status,_,combination_yield=coroutine.resume(thread,keys,list,replica_groups)
if status then
return combination_yield
end
coroutine.close(thread)
return _
end
end

--range[8][15]

local hash_Functions={}


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
binmul="2*",
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
if dummy==_ then
local operands=debug.getmetatable(self).prototypes[algorithm:match("^(%w%w%w)%w-$").."cfg"].operands
local distinguished=rawequal(debug.getmetatable(self[operands[1]]),debug.getmetatable(self))and self[operands[1]]:evaluate()or debug.getmetatable(self).evaluate(self[operands[1]])
return math.sin(math.tointeger(distinguished)or tonumber(distinguished)or load("return "..distinguished)())
elseif type(dummy)=="table"and not debug.getmetatable(dummy)then
end
end
return arithmetiCalc["__"..algorithm](self,dummy)
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
colour.blue,colour.green,colour.red=_,_,_
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
if rawget(getmetatable((type(initial_states.animators)~="function"or idx1<2)and checked[idx2].var or checked[idx2]),"__mode")then
getmetatable((type(initial_states.animators)~="function"or idx1<2)and checked[idx2].var or checked[idx2]).__mode=_
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
cache_parent_new[#cache_parent_new]=_
relations=cache_parent[#cache_parent]
cache_parent[#cache_parent]=_
index=cache_index[#cache_index]
cache_index[#cache_index]=_
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
params[2*idx2-1]=type(initial_states.animation)=="function"and sources.arg1 or(rawequal(debug.getmetatable(sources[idx2][1]),arithmetiCalc)and sources[idx2][1]:evaluate()or arithmetiCalc.evaluate(sources[idx2][1]))
params[2*idx2]=type(initial_states.animation)=="function"and sources.arg2 or(rawequal(debug.getmetatable(sources[idx2][2]),arithmetiCalc)and sources[idx2][2]:evaluate()or arithmetiCalc.evaluate(sources[idx2][2]))
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
if type(states.pace)=="number"then
states.count_to_pace=1+(states.count_to_pace or 0)
end
local pixel_colour={blue={},green={},red={}}
for idx=1,type(states.animation)=="function"and 0 or #elementary_evaluations do
if elementary_evaluations[idx]then
pixel_colour.blue[1+#pixel_colour.blue]=(states.colours[idx]or{})[1]or math.random(0,255)
pixel_colour.green[1+#pixel_colour.green]=(states.colours[idx]or{})[2]or math.random(0,255)
pixel_colour.red[1+#pixel_colour.red]=(states.colours[idx]or{})[3]or math.random(0,255)
end
end
if #pixel_colour.blue>1 and #pixel_colour.green>1 and #pixel_colour.red>1 then
pixel_colour=states.colour_Blend(pixel_colour)
elseif #pixel_colour.blue==0 and #pixel_colour.green==0 and #pixel_colour.red==0 then
pixel_colour={table.unpack(states.colours[6])}
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
result_table[cache_route[1]][cache_route[2]]=states.colour_Blend{blue={result_table[cache_route[1]][cache_route[2]][1],pixel_colour[1]},green={result_table[cache_route[1]][cache_route[2]][2],pixel_colour[2]},red={result_table[cache_route[1]][cache_route[2]][3],pixel_colour[3]}}
end
elseif #cache_route==3 then
result_table[cache_route[1]][cache_route[2]][cache_route[3]]=not result_table[cache_route[1]][cache_route[2]][cache_route[3]]and pixel_colour or states.colour_Blend{blue={result_table[cache_route[1]][cache_route[2]][cache_route[3]][1],pixel_colour[1]},green={result_table[cache_route[1]][cache_route[2]][cache_route[3]][2],pixel_colour[2]},red={result_table[cache_route[1]][cache_route[2]][cache_route[3]][3],pixel_colour[3]}}
end
local args
for idx1=states.animation and 2 or 1,1,-1 do
args=idx1<2 and states.args or states.frame_args
local sources=(not states.animation or idx1>1)and states.dimenses or states.animators
for idx2=1,type(states.animation)=="function"and idx1<2 and 0 or #sources do
args[2*idx2-1]=rawequal(debug.getmetatable(sources[idx2][1]),arithmetiCalc)and sources[idx2][1]:evaluate()or arithmetiCalc.evaluate(sources[idx2][1])
args[2*idx2]=rawequal(debug.getmetatable(sources[idx2][2]),arithmetiCalc)and sources[idx2][2]:evaluate()or arithmetiCalc.evaluate(sources[idx2][2])
end
end
if not always_noyield and states.animation and states.trail and(type(states.pace)~="number"or(states.count_to_pace-1)//states.pace<states.count_to_pace//states.pace)then
if type(states.animation)=="function"then
states.frame_results=coroutine.yield()
end
states.frame_results=states.frame_results or replicate(states.results)
end
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
params["customdlv"..(type(initial_states.animation)=="function"and 1 or #initial_states.axes)]=true_Iterator(_,_,_,type(initial_states.animation)=="function"and 1 or #initial_states.axes,"frame_ctrls",_,_,"frame_args","frame_results")
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
initial_states.meta_Hash=_ENV[module_name].meta_Hash
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
warn("Nothing Has Been Done due to Invalid Borders!")
end
end


local function gfind(string,pattern,init,upbound)
init,upbound=upbound and init or _,upbound or init or 5
if type(string)~="string"or type(pattern)~="string"then
error("Invalid Arguments!")
end
local progress,cache_progress,varying_pattern=0,1,{}
repeat
local found,stop,capt1,capt2
::upward::
found,stop,capt1=pattern:find(".-(%%-)<",progress)
if found then
progress=1+stop
if #capt1%2==0 then
varying_pattern[1+#varying_pattern]=pattern:sub(cache_progress,stop-1)
cache_progress=stop
else
goto upward
end
elseif progress==0 or cache_progress==1 then
return string:find(pattern,init)
end
::downward::
found,stop,capt2=pattern:find(".-(%%-)>.",progress)
if found then
progress=1+stop
if #capt2%2==0 then
varying_pattern[1+#varying_pattern]=pattern:sub(cache_progress,stop-1)
varying_pattern[1+#varying_pattern]=pattern:sub(stop,stop)
cache_progress=1+stop
else
goto downward
end
elseif pattern:sub(cache_progress,cache_progress)=="<"then
error("Imbalanced <>!")
end
until not found
varying_pattern[1+#varying_pattern]=pattern:sub(cache_progress,-1)
local positional_attributes1,args={},{}
for idx=1,#varying_pattern//3 do
if varying_pattern[3*idx-1]:find("<^.->$")==1 then
local sequence,char_seq=varying_pattern[3*idx-1]:match("^<^(.-)>$"),{}
for character in sequence:gmatch(".")do
char_seq[1+#char_seq]=character
end
positional_attributes1[1+#positional_attributes1]={3*idx-1,char_seq}
if varying_pattern[3*idx]=="-"then
positional_attributes1[#positional_attributes1][1+#positional_attributes1[#positional_attributes1]]=".-"
elseif varying_pattern[3*idx]=="?"then
positional_attributes1[#positional_attributes1][1+#positional_attributes1[#positional_attributes1]]=""
end
args["bhconds"..math.tointeger(1+#args/2)]=function()return true end
args["bhdo"..math.tointeger(1+#args/2)]=function(states,layer,ctrl)states.args[2*(1+layer)][1]=ctrl return states end
args["bhbconds"..math.tointeger(2+#args/2)]=function(states,layer)if states.ctrls[layer-1]==0 then return true end return false end
args["step"..math.tointeger(1+#args/2)]=-1
args[1+#args]=#sequence
args[1+#args]=0
args["customgen"..math.tointeger(1+#args/2)]=grouped_Combination_Generator
args[1+#args]=char_seq
args[1+#args]={stateless=true}
end
end
local positional_attributes2={}
for idx=1,#varying_pattern//3 do
if not varying_pattern[3*idx-1]:find("^<^.->$")and varying_pattern[3*idx]=="?"then
positional_attributes2[1+#positional_attributes2]={3*idx-1,varying_pattern[3*idx-1]:match("^<(.-)>$")}
args[1+#args]=0
args[1+#args]=1
end
end
local offset2=0
if #positional_attributes2>0 then
args["customgen"..1+math.tointeger(#args/2)]=permutation_Generator
args[1+#args]=positional_attributes2
args[1+#args]={#positional_attributes2}
offset2=1
end
local positional_attributes3={}
for idx=1,#varying_pattern//3 do
if not varying_pattern[3*idx-1]:find("^<^.->$")and varying_pattern[3*idx]~="?"then
positional_attributes3[1+#positional_attributes3]={3*idx-1,varying_pattern[3*idx-1]:match("^<(.-)>$"),varying_pattern[3*idx]}
args[1+#args]=0
args[1+#args]=upbound
end
end
local offset3=offset2
if #positional_attributes3>0 then
args["customgen"..1+math.tointeger(#args/2)]=permutation_Generator
args[1+#args]=positional_attributes3
args[1+#args]={#positional_attributes3}
offset3=1+offset3
end
args[1+#args]=function(states,layer)
for idx1=1,#positional_attributes1 do
if states.ctrls[2*idx1-1]>0 then
local char_seq=replicate(positional_attributes1[idx1][2])
for idx2=1,states.ctrls[2*idx1-1]do
char_seq[states.ctrls[2*idx1][idx2]]="[^"..char_seq[states.ctrls[2*idx1][idx2]].."]"
end
varying_pattern[positional_attributes1[idx1][1]]=positional_attributes1[idx1][3]..table.concat(char_seq)..positional_attributes1[idx1][3]
else
varying_pattern[positional_attributes1[idx1][1]]=""
end
end
for idx=1,#positional_attributes2 do
varying_pattern[states.ctrls[offset2+#positional_attributes2+2*#positional_attributes1][idx][1]]=states.ctrls[offset2+#positional_attributes2+2*#positional_attributes1][idx][2]:rep(states.ctrls[idx+2*#positional_attributes1])
end
for idx=1,#positional_attributes3 do
local progress,sign,repetition=states.ctrls[idx+offset2+#positional_attributes2+2*#positional_attributes1],states.ctrls[offset3+#positional_attributes3+#positional_attributes2+2*#positional_attributes1][idx][3]
if sign=="+"then
repetition=1+progress
elseif sign=="*"then
repetition=progress
elseif sign=="-"then
repetition=upbound-progress
end
varying_pattern[states.ctrls[offset3+#positional_attributes3+#positional_attributes2+2*#positional_attributes1][idx][1]]=states.ctrls[offset3+#positional_attributes3+#positional_attributes2+2*#positional_attributes1][idx][2]:rep(repetition)
end
local replica_varying_pattern=replicate(varying_pattern)
for idx=#replica_varying_pattern//3,1,-1 do
table.remove(replica_varying_pattern,3*idx)
end
local result=table.pack(string:find(table.concat(replica_varying_pattern),init))
if result[1]then
return result
else
return false
end
end
local results=true_Iterator(args)
if #results==1 then
return table.unpack(results[1],1,results[1].n)
elseif #results<1 then
return false
end
local filter,filtered_result={},{}
for i=1,#results do
local k=1+i%#results
if results[i].n~=results[k].n then
error("System Error!")
end
filter[i]=results[i][1]
end
local analysis,inverse={},{}
for j=1,#filter do
analysis[filter[j]]=1+(analysis[filter[j]]or 0)
inverse[filter[j]]=(inverse[filter[j]]or 0)<j and j or inverse[filter[j]]
end
table.sort(filter,function(l,r)if analysis[l]==analysis[r]then return inverse[l]>inverse[r]end return analysis[l]>analysis[r]end)
filtered_result[1]=filter[1]
for idx=1,results[1].n do
filter={}
for i=1,#results do
filter[i]=results[i][idx]
end
local analysis,inverse={},{}
for j=1,#filter do
analysis[filter[j]]=1+(analysis[filter[j]]or 0)
inverse[filter[j]]=(inverse[filter[j]]or 0)<j and j or inverse[filter[j]]
end
table.sort(filter,function(l,r)if analysis[l]==analysis[r]then return inverse[l]>inverse[r]end return analysis[l]>analysis[r]end)
filtered_result[idx]=filter[1]
end
return table.unpack(filtered_result,1,results[1].n)
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
stop = key
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
local directory_handle1,directory_path1,directory_location1=_ENV[module_name].directory_Match(directory1)
local directory_handle2,directory_path2,directory_location2,sum1,sum2,compare1,compare2
if directory_path1 then
sum1,compare1=_ENV[module_name].directory_CheckSum(directory_location1 and directory1 and directory_path1 or directory_handle1,directory_location1 or directory_path1,nc,xy,namecontent)
else
sum1,compare1=_ENV[module_name].directory_CheckSum(directory_handle1[3]and directory1 and directory_handle1[2]or directory_handle1[1],directory_handle1[3]or directory_handle1[2],nc,xy,namecontent)
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
directory_handle2,directory_path2,directory_location2=_ENV[module_name].directory_Match(directory2)
end
if directory_path2 then
sum2,compare2=_ENV[module_name].directory_CheckSum(directory_location2 and directory2 and directory_path2 or directory_handle2,directory_location2 or directory_path2,nc,xy,namecontent)
else
sum2,compare2=_ENV[module_name].directory_CheckSum(directory_handle2[3]and directory2 and directory_handle2[2]or directory_handle2[1],directory_handle2[3]or directory_handle2[2],nc,xy,namecontent)
end
local loop,presence,results,captures,result,identical = 0,0, {}, {}
if sum1 == sum2 then
print("No difference found!")
else
for idx,k2,v2 in table_Player(compare2,{key_word=false,stateless=true})do
if compare1[k2] == _ then
result = k2.." in "..compare2.absolute_path.." unfound in "..compare1.absolute_path
print(result)
table.insert(results,result)
end
end
for idx1,k1,v1 in table_Player(compare1,{key_word=false,stateless=true})do
if compare2[k1] == _ then
result = k1.." in "..compare1.absolute_path.." unfound in "..compare2.absolute_path
print(result)
table.insert(results,result)
elseif compare2[k1] ~= v1 then
if type(compare2[k1]) ~= type(v1)then
if type(v1) == "number"then
result = k1.." in "..compare1.absolute_path.." is a directory!"
print(result)
table.insert(results,result)
elseif type(compare2[k1]) == "number"then
result = k1.." in "..compare2.absolute_path.." is a directory!"
print(result)
table.insert(results,result)
end
end
end
for idx2,k2,v2 in table_Player(compare2,{key_word=false,stateless=true})do
if type(v1) == type(v2) and type(v1) == "table"then
if v1.contentsum == v2.contentsum then
if k1 ~= k2 then
result = "Oddly enough, "..k1.." in "..compare1.absolute_path.." and "..k2.." in "..compare2.absolute_path.." are in fact identical!"
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
result = "No match found for line "..idx1.." from "..k1.." of "..compare1.absolute_path.." in "..k2.." of "..compare2.absolute_path.."!"
print(result)
table.insert(results,result)
end
presence = identical+presence
if loop > rows and 4*presence <= loop then
break
end
end
for k,v in next,pattern_MisAlign(captures,1,sieve,#v1)do
result = "Lines from "..k.." to "..v[1].." in "..k1.." of "..compare1.absolute_path.." and lines from "..k-v[2].." to "..v[1]-v[2].." in "..k2.." of "..compare2.absolute_path.." have been misaligned!"
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
result = "No match found for line "..idx2.." from "..k2.." of "..compare2.absolute_path.." in "..k1.." of "..compare1.absolute_path.."!"
print(result)
table.insert(results,result)
end
presence = identical+presence
if loop > rows and 4*presence <= loop then
break
end
end
for k,v in next,pattern_MisAlign(captures,1,sieve,#v2)do
result = "Lines from "..k.." to "..v[1].." in "..k2.." of "..compare1.absolute_path.." and lines from "..k-v[2].." to "..v[1]-v[2].." in "..k1.." of "..compare2.absolute_path.." have been misaligned!"
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

local function sort_File(directory,customise)
customise=customise or{}
customise.parse,customise.delimiter=customise.parse or"\t",customise.delimiter or"\t"
local set={}
assert(io.input(directory),"Invalid Input Directory!")
for file_line in io.lines()do
for elem in file_line:gmatch("%s*([^"..customise.parse.."]-)%s*"..customise.parse.."+")do
if elem~=""then
set[elem]=1+(set[elem]or 0)
end
end
local tail=file_line:match(customise.parse.."*%s*([^"..customise.parse.."]-)%s*$")
if tail~=""then
set[tail]=1+(set[tail]or 0)
end
end
io.input():close()
local sorted={}
for elem in next,set do
sorted[1+#sorted]=elem
end
if type(customise.comp_func)=="boolean"then
coroutine.yield(set)
end
table.sort(sorted,(customise.stats and type(customise.comp_func)~="function")and function(l,r)if set[l]==set[r]then return l<r end return set[l]>set[r]end or customise.comp_func)
io.output(directory.." sorted")
for k,v in table_Player(sorted,{stateless=true})do
if k<#sorted then
io.write(customise.stats and v.."\t"..set[v]or v,(customise.jagged and((customise.stats and set[v]~=set[sorted[1+k]])or(customise.similarity and v:match("^"..string.rep(".",customise.similarity))~=sorted[1+k]:match("^"..string.rep(".",customise.similarity)))))and"\n"or customise.delimiter)
else
io.write(customise.stats and v.."\t"..set[v]or v)
end
end
io.close()
end

--range[6][12]

_ENV[...]={
version=0.9921875,
renewed=20260409,
["Pointers in Practice"]="Treating certain parameters as tables or pointing to pre-specific upvalues are the only 2 approaches to dynamic, alterable values determined at each function-call time.",
["Class Paradigm"]=[=[Each disparate metamethod along the hierarchy should share a function that explicitly indexes self of a particular, named field, which in turn should be implemented at top-class nodes as one sees appropriate.
In case of multiple inheritance, set a proxy for each parent wherein metatable of the mutual heir shall search for methods, where in particular:
__index should be a function that indexes proxies of parents one by one;
Other metamethod fields should be functions that index proxies of parents of respective named fields one by one.]=],
serialise=serialise,
replicate=replicate,
zip=zip,
table_Player=table_Player,
true_Iterator=true_Iterator,
arithmetiCalc=arithmetiCalc,
permutation_Generator=permutation_Generator,
grouped_Combination_Generator=grouped_Combination_Generator
--range[6][15]
,
hash_Functions=hash_Functions,
uni_Inc_Rand=uni_Inc_Rand,
kahan_Product=kahan_Product,
kahan_Sum=kahan_Sum,
algorithms=algorithms,
vector_Addition=vector_Addition,
vector_Length=vector_Length,
dimensional_Animator=dimensional_Animator,
plot_Pixels=plot_Pixels,
gfind=gfind,
directory_Contrast=directory_Contrast,
sort_File=sort_File
--range[4][12]
}


--a few declarations:
--range[4][15]
local status="ready for run"
local digest="80745455834943021"
--range[2][12]
--[===[
⚙
--]===]
local required_name,find_self,where=...
if os.getenv("ANDROID_ROOT")=="/system"then
where=find_self:match("^(.*/)[^/]+$")
elseif os.getenv("OS")=="Windows_NT"then
local necessary_handle=io.popen('cd /D "'..find_self..'\\.." && cd')
where=necessary_handle:read().."\\"
necessary_handle:close()
end
local ranges={}
local function keystone(x,y)
if type(x)=="number"then
if math.tointeger(x)and math.tointeger(y)then
return y%6==0 and _ENV[required_name].renewed-x or _ENV[required_name].renewed+x
elseif not math.tointeger(x)and math.tointeger(y)then
return math.floor((x*y/13)*1e3)/1e3
elseif math.tointeger(x)and not math.tointeger(y)then
return math.floor((x*y)^(-4/7)*1e6)/1e6
end
elseif type(x)=="string"then
if math.tointeger(y)then
return table.concat(table.pack(string.unpack("bbbbbbbb",x)))//y
elseif not math.tointeger(y)then
return table.concat(table.pack(string.unpack("bbbbbbbb",x)))..y
end
end
end
local dir_mat=[===[local mini_handle,handle,absolute_path,where_in
if os.getenv("ANDROID_ROOT")=="/system"then
local bootstrap
if directory then
mini_handle=io.popen('find '..directory..' 2>/dev/null')
local try=mini_handle:read()
mini_handle:close()
if not try then
error("No Such File or Directory!")
end
else
mini_handle=io.popen('find -type f 2>/dev/null')
local try=mini_handle:read()
mini_handle:close()
if not try then
error("No File Existent as BootStrap!")
end
mini_handle=io.popen('find -type f 2>/dev/null')
bootstrap={}
for item in mini_handle:lines()do
bootstrap[item:match("^.*/([^/]+)$")]=true
end
mini_handle:close()
if io.popen("pwd"):read()=="/data/data/com.termux/files/home/downloads"then
os.execute("rm ./* -rvf")
end
end
mini_handle=directory and io.popen('find '..directory..' 2>/dev/null')or io.popen('find /sdcard/ -type f 2>/dev/null')
for item in mini_handle:lines()do
local temp,relative_path
if directory then
local necessary_handle=io.popen('find "'..item..'" -type d 2>/dev/null')
absolute_path=item
if not necessary_handle:read()then
temp=item:match("^(.*/)[^/]+$")
elseif item:match(".$")~="/"then
absolute_path=item.."/"
end
necessary_handle:close()
else
absolute_path,relative_path=item:match("^(.*/)([^/]+)$")
end
if directory and true or bootstrap[relative_path]then
if handle then
if type(handle)~="table"then
if directory and true or item~=handle then
handle={where_in and io.popen('find "'..where_in..'" 2>/dev/null')or io.popen('find "'..handle..'" 2>/dev/null'),handle,where_in,[handle]=not directory and true or _}
if where_in then
where_in=_
end
end
end
if directory and true or not handle[item]then
handle[1+#handle]=temp and io.popen('find "'..temp..'" 2>/dev/null')or io.popen('find "'..absolute_path..'" 2>/dev/null')
handle[1+#handle]=directory and absolute_path or item
handle[1+#handle]=not directory and absolute_path or temp or false
if not directory then
handle[item]=true
end
end
else
handle=directory and absolute_path or item
where_in=not directory and absolute_path or temp or false
end
end
end
mini_handle:close()
mini_handle=_
if not handle and not where_in then
error("Nothing Matched by BootStrapping!")
elseif type(handle)~="table"then
if not directory then
absolute_path=handle
end
handle=where_in and io.popen('find "'..where_in..'" 2>/dev/null')or io.popen('find "'..handle..'" 2>/dev/null')
elseif not directory then
for idx=2,#handle,2 do
handle[handle[idx]]=_
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
if where_in then
where_in=_
end
end
handle[1+#handle]=temp and io.popen('dir "'..temp..'" /S /B')or io.popen('dir "'..absolute_path..'" /S /B')
handle[1+#handle]=absolute_path
handle[1+#handle]=temp or false
else
handle=absolute_path
where_in=temp or false
end
end
::rematch::
if directory then
if not os.execute('dir '..directory..' /S /B')then
error("No Such File or Directory!")
end
if os.execute('dir '..directory..' /A:D /S /B')then
mini_handle=io.popen('dir '..directory..' /A:D /S /B')
local cache_directory=directory
if directory:match('^".*"$')then
cache_directory=directory:match('^"(.*)"$')
end
absolute_path=mini_handle:read()or cache_directory
if absolute_path:find(cache_directory)==1 then
absolute_path=cache_directory
necessary_func()
end
mini_handle:close()
end
mini_handle=io.popen('dir '..directory..' /S /B')
for item in mini_handle:lines()do
absolute_path=item
necessary_func()
end
mini_handle:close()
mini_handle=_
else
for idx=1,math.huge do
absolute_path=os.getenv("directory"..idx)
if not absolute_path or absolute_path==""then
break
end
if absolute_path:match('^".*"$')then
absolute_path=absolute_path:match('^"(.*)"$')
end
necessary_func()
end
end
if not handle and not where_in then
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
local function meta_Hash(self,hashed,layer,sum,nb,xy,imba)
hashed,layer,sum=hashed or{},layer or 1,sum or 0
nb=nb or function(n,byte)return byte+n*(n+byte-1)end --before Hornor optimisation: n^2-n+n*byte+byte
xy=xy or function(x,y)return x^2+y*(x+y*(x+y-1))end --before Hornor optimisation: y^3-y^2+x*y^2+x*y+x^2
imba=imba or function(ref,content)return content>=1e3*ref^3 and math.ceil(content/ref^3)*(content%ref)or math.ceil(content/ref)*(content%ref)end
local type_of_function,ishandle,first_line
if type(self)=="function"then
type_of_function=debug.getinfo(self,"S").what
end
if type(self)=="userdata"then
ishandle,first_line=pcall(function(userdata,format)return userdata:read(format)end,self,"L")
end
if type(self)=="boolean"then
if self==true then
return 593+sum
elseif self==false then
return 491+sum
end
elseif math.type(self)=="integer"then
return self+sum
elseif type(self)=="string"then
local x,y,character=0,1
while self~=""do
x=1+x
character,self=self:match("^(.)(.*)$")
sum=math.tointeger(nb(math.tointeger(xy(x,y)),character:byte()))+sum
if character=="\n"then
x,y=0,1+y
end
end
return sum
elseif type(self)=="function"and type_of_function~="C"then
return meta_Hash(string.dump(self),hashed,1+layer,sum,nb,xy,imba)
elseif type(self)=="userdata"and ishandle then
local x,y,character=0,1
while first_line~=""do
x=1+x
character,first_line=first_line:match("^(.)(.*)$")
if type(layer)=="string"then
hashed[layer][y]=math.tointeger(nb(x,character:byte()))+(hashed[layer][y]or 0)
end
sum=math.tointeger(nb(math.tointeger(xy(x,y)),character:byte()))+sum
end
for file_line in self:lines("L")do
x,y,first_line=0,1+y,file_line
local linesum=0
while first_line~=""do
x=1+x
character,first_line=first_line:match("^(.)(.*)$")
if type(layer)=="string"then
linesum=math.tointeger(nb(x,character:byte()))+linesum
end
sum=math.tointeger(nb(math.tointeger(xy(x,y)),character:byte()))+sum
end
if type(layer)=="string"then
hashed[layer][y]=linesum
end
end
self:seek("set")
if type(layer)=="string"then
return y,sum
end
return sum
elseif type(self)=="table"then
if hashed[self]and hashed[self]<layer then
return meta_Hash(tostring(self).."-loophole patch",hashed,1+layer,sum,nb,xy,imba)
else
hashed[self]=layer
end
for k,v in next,self do
sum=math.tointeger(imba(meta_Hash(k,hashed,1+layer,type(k)=="table"and sum or _,nb,xy,imba),meta_Hash(v,hashed,1+layer,type(v)=="table"and sum or _,nb,xy,imba)))+sum
end
return math.tointeger(imba(2969,sum==0 and 2971 or sum))
end
return meta_Hash(tostring(self),hashed,1+layer,sum,nb,xy,imba)
end
local function directory_CheckSum(directory,location,namecontent)
namecontent=namecontent or function(namesum,contentsum)return contentsum>=1e3*namesum^3 and math.ceil(contentsum/namesum^3)*(contentsum%namesum)or math.ceil(contentsum/namesum)*(contentsum%namesum)end
local sum,compare=0,{absolute_path=location}
if type(directory)=="userdata"then
if os.getenv("ANDROID_ROOT")=="/system"and directory:read()~=location then
error("Incorrect Usage - First Readout Must Match Second Argument "..tostring(location).."!")
end
for subdir in directory:lines()do
local relative_path=subdir:match("^"..compare.absolute_path.."(.+)$")
local namesum,skip=meta_Hash(relative_path)
if os.getenv("ANDROID_ROOT")=="/system"then
skip=io.popen('find "'..subdir..'" -type d 2>/dev/null'):read()
elseif os.getenv("OS")=="Windows_NT"then
skip=os.execute('dir "'..subdir..'" /A:D /S /B')
end
if not skip then
print("Accessing file: "..subdir)
compare[relative_path]={}
local lines,contentsum=meta_Hash(io.input(subdir),compare,relative_path)
sum=math.tointeger(namecontent(namesum,contentsum))+sum
compare[relative_path].contentsum=contentsum
io.input(subdir):close()
print(lines.." lines summed up")
else
sum=sum-namesum
compare[relative_path]=-namesum
end
end
directory:close()
elseif tostring(directory)then
if tostring(directory):find(location)~=1 then
error("Incorrect Usage - Second Argument "..tostring(location).." Must Be a Sub-String of First Argument "..tostring(directory).."!")
end
local relative_path=tostring(directory):match("^"..compare.absolute_path.."(.+)$")
local namesum,skip=meta_Hash(relative_path)
if os.getenv("ANDROID_ROOT")=="/system"then
skip=io.popen('find "'..tostring(directory)..'" -type d 2>/dev/null'):read()
elseif os.getenv("OS")=="Windows_NT"then
skip=os.execute('dir "'..tostring(directory)..'" /A:D /S /B')
end
if not skip then
print("Accessing file: "..tostring(directory))
compare[relative_path]={}
local lines,contentsum=meta_Hash(io.input(tostring(directory)),compare,relative_path)
sum=math.tointeger(namecontent(namesum,contentsum))+sum
compare[relative_path].contentsum=contentsum
io.input(tostring(directory)):close()
print(lines.." lines summed up")
else
sum=sum-namesum
compare[relative_path]=-namesum
end
end
print([===[Process finished - here you are:
]===]..sum)
return sum,compare
end
local function init_Dbg(object,dbgd,layer)
layer,dbgd=layer or 1,dbgd or{}
if type(object)=="table"then
if dbgd[object]and dbgd[object]<layer then
return tostring(object).."-loophole patch"
else
dbgd[object]=layer
end
local function msg_Hdlr(errobj)
return debug.traceback([===[栈回溯：
]===]..errobj)
end
local cache__index=rawget(object,"__index")
rawset(object,"__index",function(self,key)
local got=type(cache__index)=="function"and cache__index(self,key)or _
if type(got or debug.getmetatable(self)[key])=="function"then
local call_stacks={}
return function(...)
debug.sethook(function(event,line_number)
if event~="tail call"then
table.insert(call_stacks,debug.getinfo(2,"S"))
end
end,"c")
local call_results=table.pack(xpcall(got or debug.getmetatable(self)[key],msg_Hdlr,...))
if call_results[1]then
debug.sethook()
return table.unpack(call_results,2,call_results.n)
else
debug.sethook()
print(call_results[2])
table.insert(call_stacks,debug.getinfo(debug.getmetatable(self)[key],"S"))
io.output(where..keystone(_ENV[required_name].version,_ENV[required_name].renewed)..keystone(_ENV[required_name].renewed,_ENV[required_name].version)..keystone(status,_ENV[required_name].renewed)..keystone(status,_ENV[required_name].version))
local line_number=0
for debugged_line in io.input(find_self):lines("L")do
line_number=1+line_number
local bool
for stack in table_Player(call_stacks)do
if stack.short_src==find_self then
if line_number>=stack.linedefined and line_number<=stack.lastlinedefined then
bool=true
end
end
end
if bool==true then
io.write(debugged_line)
end
end
io.close()
io.input(find_self):close()
end
end
else
return debug.getmetatable(self)[key]
end
end)
if type(rawget(object,"__call"))=="function"then
local cache__call=rawget(object,"__call")
rawset(object,"__call",function(self,...)
local call_stacks={}
debug.sethook(function(event,line_number)
if event~="tail call"then
table.insert(call_stacks,debug.getinfo(2,"S"))
end
end,"c")
local call_results=table.pack(xpcall(cache__call,msg_Hdlr,debug.getmetatable(self),...))
if call_results[1]then
debug.sethook()
return table.unpack(call_results,2,call_results.n)
else
debug.sethook()
print(call_results[2])
table.insert(call_stacks,debug.getinfo(2,"S"))
io.output(where..keystone(_ENV[required_name].version,_ENV[required_name].renewed)..keystone(_ENV[required_name].renewed,_ENV[required_name].version)..keystone(status,_ENV[required_name].renewed)..keystone(status,_ENV[required_name].version))
local line_number=0
for debugged_line in io.input(find_self):lines("L")do
line_number=1+line_number
local bool
for stack in table_Player(call_stacks)do
if stack.short_src==find_self then
if line_number>=stack.linedefined and line_number<=stack.lastlinedefined then
bool=true
end
end
end
if bool==true then
io.write(debugged_line)
end
end
io.close()
io.input(find_self):close()
end
end)
end
local collect,proxy={},{}
for k,v in next,object do
if type(k)=="table"then
rawset(object,init_Dbg(k,dbgd,1+layer),init_Dbg(v,dbgd,1+layer))
collect[1+#collect]=k
else
if type(v)=="table"then
rawset(object,k,init_Dbg(v,dbgd,1+layer))
end
if type(k)=="string"and k:match("^__%w+")then
proxy[k]=v
end
end
end
for idx=1,#collect do
rawset(object,collect[idx],_)
end
return debug.setmetatable(proxy,object)
else
return object
end
end
local cstatus=status


if c_thread==false then
goto lower_overhead
end


--autorun part 1:
if status=="off maintenance"then
status="mained by c"
local script1,script2=string.format("%q","package.path="..string.format("%q",find_self)..[===[..';'..package.path
local success=pcall(require,']===]..required_name..[===[')
if success then
module_name=']===]..required_name..[===['
else
function directory_Match(directory)
]===]..dir_mat.."\nend\nlocal module_finder,module_path,module_location=directory_Match("..string.format("%q",'"'..(os.getenv("ANDROID_ROOT")=="/system"and where:match("^(.*/)[^/]+/$")or io.popen('cd /D "'..where..'.." && cd'):read().."\\")..'"')..[===[)
local iter_func,invar_state,ctrl_var
if not module_path then
iter_func,invar_state,ctrl_var=ipairs(module_finder)
end
for i,v in module_path and module_finder:lines()or iter_func,not module_path and invar_state or _,not module_path and ctrl_var or _ do
if(module_path and true or(i%3==2 and module_finder[1+i]))and(module_path and i or v):match(]===].._ENV[...].version..[===[)then
package.path=(module_path and i or v)..';'..package.path
if os.getenv('ANDROID_ROOT')=='/system'then
module_name=(module_path and i or v):match('/([^/]-)%-'..]===].._ENV[...].version..[===[)
elseif os.getenv('OS')=='Windows_NT'then
module_name=(module_path and i or v):match('\\([^\\]-)%-'..]===].._ENV[...].version..[===[)
end
break
end
end
require(module_name)
end]===]):gsub("\n","n\\\n"),string.format("%q",[===[local script_path
if os.getenv('ANDROID_ROOT')=='/system'then
local success,script_finder,script_location
success,script_finder,script_path,script_location=pcall(directory_Match or _ENV[module_name].directory_Match,_)
if not success then
return false
elseif not script_path then
error('More than 1 Script Files!')
end
elseif os.getenv('OS')=='Windows_NT'then
script_path=os.getenv('script_path')
if not script_path then
return false
end
end
return script_path]===]):gsub("\n","n\\\n")
local script_len=math.max(#script1,#script2)
io.output(where..keystone(_ENV[...].version,_ENV[...].renewed)..keystone(_ENV[...].renewed,_ENV[...].version)..keystone(status,_ENV[...].renewed)..keystone(status,_ENV[...].version)):write([===[
#include<stdlib.h>
#include<string.h>
#include<pthread.h>
#include<lua.h>
#include<lualib.h>
#include<lauxlib.h>

#define PCALL_ERRH(NARGS,NRESULTS,ERR_MSG) if(lua_pcall(L,NARGS,NRESULTS,0)!=LUA_OK){\
printf("%s",lua_isstring(L,-1)?luaL_checklstring(L,-1,NULL):"Non-String Error Object!");\
lua_pop(L,1);\
luaL_error(L,ERR_MSG);\
}

int unique_Key(lua_State *L){
return 0;
}

int lookUp(lua_State *L){
lua_settop(L,2);
lua_pushvalue(L,2);
if(lua_gettable(L,lua_upvalueindex(2))!=LUA_TNIL){
lua_pushvalue(L,-1);
lua_gettable(L,lua_upvalueindex(5));
lua_getfield(L,-1,"set");
lua_pushvalue(L,2);
lua_pushvalue(L,2);
if(lua_gettable(L,-3)!=LUA_TNIL){
lua_pushinteger(L,1);
lua_arith(L,LUA_OPADD);
lua_settable(L,-3);
}else{
lua_pop(L,1);
lua_pushinteger(L,1);
lua_settable(L,-3);
}
lua_pop(L,2);
lua_gettable(L,lua_upvalueindex(3));
}
else{
lua_getmetatable(L,lua_upvalueindex(1));
lua_pushvalue(L,2);
lua_gettable(L,-2);
if(lua_isnil(L,-1)){
lua_pushvalue(L,lua_upvalueindex(6));
lua_pushvalue(L,2);
PCALL_ERRH(1,1,"Error Applying Hash Function to Key!")
lua_gettable(L,lua_upvalueindex(3));
}
}
return 1;
}

int inverse_LookUp(lua_State *L){
lua_settop(L,3);
lua_insert(L,-2);
if(lua_gettable(L,lua_upvalueindex(4))==LUA_TTABLE &&(lua_pushvalue(L,lua_upvalueindex(7)),lua_gettable(L,-2)==LUA_TSTRING &&(lua_pushstring(L,"Merged Entries"),lua_rawequal(L,-2,-1)))){
lua_pop(L,2);
lua_newtable(L);
for(int idx=1;idx<=luaL_len(L,-2);idx++){
if(lua_isboolean(L,-3)&& lua_toboolean(L,-3)){
lua_geti(L,-2,idx);
lua_pushvalue(L,-1);
lua_gettable(L,lua_upvalueindex(5));
lua_settable(L,-3);
}else{
lua_geti(L,-2,idx);
lua_gettable(L,lua_upvalueindex(5));
lua_seti(L,-2,idx);
}
}
}else{
lua_settop(L,3);
if(lua_isboolean(L,-2)&& lua_toboolean(L,-2)){
lua_createtable(L,0,1);
lua_insert(L,-2);
lua_pushvalue(L,-1);
lua_gettable(L,lua_upvalueindex(5));
lua_settable(L,-3);
}else
lua_gettable(L,lua_upvalueindex(5));
}
return 1;
}

int enumerate(lua_State *L){
lua_settop(L,3);
lua_pushvalue(L,2);
if(lua_gettable(L,lua_upvalueindex(2))!=LUA_TNIL){
if(!lua_toboolean(L,3)){
lua_pushvalue(L,-1);
lua_gettable(L,lua_upvalueindex(5));
lua_getfield(L,-1,"set");
lua_pushvalue(L,2);
lua_pushnil(L);
lua_settable(L,-3);
lua_pop(L,1);
lua_getfield(L,-1,"list");
int equal_found=0,size=luaL_len(L,-1);
for(int idx=1;idx<=size;idx++){
lua_geti(L,-1,idx);
if(!equal_found)
equal_found=lua_rawequal(L,2,-1);
lua_pop(L,1);
if(equal_found){
if(idx<size){
lua_geti(L,-1,1+idx);
lua_seti(L,-2,idx);
}else{
lua_pushnil(L);
lua_seti(L,-2,idx);
}
}
}
if(!luaL_len(L,-1)){
lua_pushvalue(L,4);
lua_pushnil(L);
lua_settable(L,lua_upvalueindex(5));
}
lua_copy(L,2,-2);
lua_pushnil(L);
lua_replace(L,-2);
lua_settable(L,lua_upvalueindex(2));
}else{
lua_pushvalue(L,-1);
lua_gettable(L,lua_upvalueindex(5));
lua_getfield(L,-1,"set");
lua_pushvalue(L,2);
lua_pushvalue(L,2);
if(lua_gettable(L,-3)!=LUA_TNIL){
lua_pushinteger(L,1);
lua_arith(L,LUA_OPADD);
lua_settable(L,-3);
}else{
lua_pop(L,1);
lua_pushinteger(L,1);
lua_settable(L,-3);
}
lua_pop(L,2);
}
}else if(lua_toboolean(L,3)){
lua_copy(L,lua_upvalueindex(6),-1);
lua_pushvalue(L,2);
PCALL_ERRH(1,1,"Error Applying Hash Function to Key!")
lua_pushvalue(L,-1);
if(lua_gettable(L,lua_upvalueindex(5))!=LUA_TNIL){
lua_getfield(L,-1,"list");
lua_newtable(L);
if(lua_getmetatable(L,2)){
lua_getfield(L,-1,"__eq");
lua_remove(L,-2);
}else
lua_pushnil(L);
for(int idx=luaL_len(L,-3);idx>=1;idx--){
_Bool equal_found=0;
if(lua_isfunction(L,-1)){
lua_pushvalue(L,-1);
lua_geti(L,-4,idx);
lua_pushvalue(L,2);
PCALL_ERRH(2,1,"Error Invoking Compare Meta-Method!")
if(lua_toboolean(L,-1)){
lua_pop(L,1);
lua_geti(L,-3,idx);
lua_seti(L,-3,1+luaL_len(L,-3));
lua_pushinteger(L,idx);
lua_seti(L,-3,1+luaL_len(L,-3));
equal_found=1;
}else
lua_pop(L,1);
}
if(!equal_found){
lua_geti(L,-3,idx);
if(lua_getmetatable(L,-1)){
if(lua_getfield(L,-1,"__eq")!=LUA_TNIL){
lua_pushvalue(L,-3);
lua_pushvalue(L,2);
PCALL_ERRH(2,1,"Error Invoking Compare Meta-Method!")
if(lua_toboolean(L,-1)){
lua_pop(L,2);
lua_seti(L,-3,1+luaL_len(L,-3));
lua_pushinteger(L,idx);
lua_seti(L,-3,1+luaL_len(L,-3));
equal_found=1;
}else
lua_pop(L,3);
}else
lua_pop(L,3);
}else
lua_pop(L,1);
}
if(equal_found)
continue;
else if(lua_geti(L,-3,idx),lua_rawequal(L,2,-1)){
lua_seti(L,-3,1+luaL_len(L,-3));
lua_pushinteger(L,idx);
lua_seti(L,-3,1+luaL_len(L,-3));
}else
lua_pop(L,1);
}
lua_pop(L,1);
if(!luaL_len(L,-1)){
lua_copy(L,2,-1);
lua_seti(L,-2,1+luaL_len(L,-2));
lua_pop(L,1);
lua_getfield(L,-1,"set");
}else{
int casenum=0;
while(casenum+=2,casenum<=luaL_len(L,-1)){
lua_geti(L,-1,casenum);
int equal_found=0,size=luaL_len(L,-2);
for(int idx=1;idx<=size;idx++){
lua_pushinteger(L,idx);
if(!equal_found)
equal_found=lua_rawequal(L,-2,-1);
lua_pop(L,1);
if(equal_found){
if(idx<size){
lua_geti(L,-3,1+idx);
lua_seti(L,-4,idx);
}else{
lua_pushnil(L);
lua_seti(L,-4,idx);
}
}
}
lua_pop(L,1);
}
lua_pushvalue(L,2);
lua_seti(L,-3,1+luaL_len(L,-3));
lua_remove(L,-2);
lua_getfield(L,-2,"set");
for(int idx=1;idx<=luaL_len(L,-2);idx+=2){
lua_geti(L,-2,idx);
lua_pushvalue(L,-1);
lua_pushnil(L);
lua_settable(L,lua_upvalueindex(2));
lua_pushnil(L);
lua_settable(L,-3);
}
lua_remove(L,-2);
}
lua_pushvalue(L,2);
lua_pushvalue(L,2);
if(lua_gettable(L,-3)!=LUA_TNIL){
lua_pushinteger(L,1);
lua_arith(L,LUA_OPADD);
lua_settable(L,-3);
}else{
lua_pop(L,1);
lua_pushinteger(L,1);
lua_settable(L,-3);
}
lua_copy(L,2,-2);
lua_copy(L,-3,-1);
lua_settable(L,lua_upvalueindex(2));
}else{
lua_pop(L,1);
lua_createtable(L,0,2);
lua_newtable(L);
lua_pushvalue(L,2);
lua_pushinteger(L,1);
lua_settable(L,-3);
lua_setfield(L,-2,"set");
lua_newtable(L);
lua_pushvalue(L,2);
lua_seti(L,-2,1);
lua_setfield(L,-2,"list");
lua_pushvalue(L,-2);
lua_insert(L,-2);
lua_settable(L,lua_upvalueindex(5));
lua_pushvalue(L,2);
lua_pushvalue(L,-2);
lua_settable(L,lua_upvalueindex(2));
}
}
return 0;
}

int set_Field(lua_State *L){
lua_settop(L,3);
lua_pushvalue(L,2);
if(lua_gettable(L,lua_upvalueindex(2))!=LUA_TNIL){
if(lua_isnil(L,3)){
lua_pushvalue(L,-1);
lua_gettable(L,lua_upvalueindex(5));
lua_getfield(L,-1,"set");
lua_pushvalue(L,2);
lua_pushvalue(L,3);
lua_settable(L,-3);
lua_pop(L,1);
lua_getfield(L,-1,"list");
int equal_found=0,size=luaL_len(L,-1);
for(int idx=1;idx<=size;idx++){
lua_geti(L,-1,idx);
if(!equal_found)
equal_found=lua_rawequal(L,2,-1);
lua_pop(L,1);
if(equal_found){
if(idx<size){
lua_geti(L,-1,1+idx);
lua_seti(L,-2,idx);
}else{
lua_pushvalue(L,3);
lua_seti(L,-2,idx);
}
}
}
if(!luaL_len(L,-1)){
lua_pushvalue(L,4);
lua_pushvalue(L,3);
lua_settable(L,lua_upvalueindex(5));
}
lua_copy(L,2,-2);
lua_copy(L,3,-1);
lua_settable(L,lua_upvalueindex(2));
}else{
lua_pushvalue(L,-1);
lua_gettable(L,lua_upvalueindex(5));
lua_getfield(L,-1,"set");
lua_pushvalue(L,2);
lua_pushvalue(L,2);
if(lua_gettable(L,-3)!=LUA_TNIL){
lua_pushinteger(L,1);
lua_arith(L,LUA_OPADD);
lua_settable(L,-3);
}else{
lua_pop(L,1);
lua_pushinteger(L,1);
lua_settable(L,-3);
}
lua_pop(L,2);
}
}else if(!lua_isnil(L,3)){
lua_copy(L,lua_upvalueindex(6),-1);
lua_pushvalue(L,2);
PCALL_ERRH(1,1,"Error Applying Hash Function to Key!")
lua_pushvalue(L,-1);
int vtype=lua_gettable(L,lua_upvalueindex(3));
lua_copy(L,-2,-1);
int ktype=lua_gettable(L,lua_upvalueindex(5));
if(vtype!=LUA_TNIL && ktype!=LUA_TNIL){
lua_getfield(L,-1,"list");
lua_newtable(L);
if(lua_getmetatable(L,2)){
lua_getfield(L,-1,"__eq");
lua_remove(L,-2);
}else
lua_pushnil(L);
for(int idx=luaL_len(L,-3);idx>=1;idx--){
_Bool equal_found=0;
if(lua_isfunction(L,-1)){
lua_pushvalue(L,-1);
lua_geti(L,-4,idx);
lua_pushvalue(L,2);
PCALL_ERRH(2,1,"Error Invoking Compare Meta-Method!")
if(lua_toboolean(L,-1)){
lua_pop(L,1);
lua_geti(L,-3,idx);
lua_seti(L,-3,1+luaL_len(L,-3));
lua_pushinteger(L,idx);
lua_seti(L,-3,1+luaL_len(L,-3));
equal_found=1;
}else
lua_pop(L,1);
}
if(!equal_found){
lua_geti(L,-3,idx);
if(lua_getmetatable(L,-1)){
if(lua_getfield(L,-1,"__eq")!=LUA_TNIL){
lua_pushvalue(L,-3);
lua_pushvalue(L,2);
PCALL_ERRH(2,1,"Error Invoking Compare Meta-Method!")
if(lua_toboolean(L,-1)){
lua_pop(L,2);
lua_seti(L,-3,1+luaL_len(L,-3));
lua_pushinteger(L,idx);
lua_seti(L,-3,1+luaL_len(L,-3));
equal_found=1;
}else
lua_pop(L,3);
}else
lua_pop(L,3);
}else
lua_pop(L,1);
}
if(equal_found)
continue;
else if(lua_geti(L,-3,idx),lua_rawequal(L,2,-1)){
lua_seti(L,-3,1+luaL_len(L,-3));
lua_pushinteger(L,idx);
lua_seti(L,-3,1+luaL_len(L,-3));
}else
lua_pop(L,1);
}
lua_pop(L,1);
if(!luaL_len(L,-1)){
lua_copy(L,2,-1);
lua_seti(L,-2,1+luaL_len(L,-2));
lua_pop(L,1);
lua_getfield(L,-1,"set");
}else{
int casenum=0;
while(casenum+=2,casenum<=luaL_len(L,-1)){
lua_geti(L,-1,casenum);
int equal_found=0,size=luaL_len(L,-2);
for(int idx=1;idx<=size;idx++){
lua_pushinteger(L,idx);
if(!equal_found)
equal_found=lua_rawequal(L,-2,-1);
lua_pop(L,1);
if(equal_found){
if(idx<size){
lua_geti(L,-3,1+idx);
lua_seti(L,-4,idx);
}else{
lua_pushnil(L);
lua_seti(L,-4,idx);
}
}
}
lua_pop(L,1);
}
lua_pushvalue(L,2);
lua_seti(L,-3,1+luaL_len(L,-3));
lua_remove(L,-2);
lua_getfield(L,-2,"set");
for(int idx=1;idx<=luaL_len(L,-2);idx+=2){
lua_geti(L,-2,idx);
lua_pushvalue(L,-1);
lua_pushnil(L);
lua_settable(L,lua_upvalueindex(2));
lua_pushnil(L);
lua_settable(L,-3);
}
lua_remove(L,-2);
}
lua_pushvalue(L,2);
lua_pushvalue(L,2);
if(lua_gettable(L,-3)!=LUA_TNIL){
lua_pushinteger(L,1);
lua_arith(L,LUA_OPADD);
lua_settable(L,-3);
}else{
lua_pop(L,1);
lua_pushinteger(L,1);
lua_settable(L,-3);
}
lua_copy(L,2,-2);
lua_copy(L,-3,-1);
lua_settable(L,lua_upvalueindex(2));
}else if(vtype==LUA_TNIL && ktype==LUA_TNIL){
lua_pop(L,1);
lua_createtable(L,0,2);
lua_newtable(L);
lua_pushvalue(L,2);
lua_pushinteger(L,1);
lua_settable(L,-3);
lua_setfield(L,-2,"set");
lua_newtable(L);
lua_pushvalue(L,2);
lua_seti(L,-2,1);
lua_setfield(L,-2,"list");
lua_pushvalue(L,-2);
lua_insert(L,-2);
lua_settable(L,lua_upvalueindex(5));
lua_pushvalue(L,2);
lua_pushvalue(L,-2);
lua_settable(L,lua_upvalueindex(2));
}else
luaL_error(L,"Inconsistent Internals!");
}
lua_pushvalue(L,-1);
int ktype=lua_gettable(L,lua_upvalueindex(5));
lua_copy(L,-2,-1);
int vtype=lua_gettable(L,lua_upvalueindex(3));
if((lua_isnil(L,3)&& ktype==LUA_TNIL)||(!lua_isnil(L,3)&& !lua_rawequal(L,3,-1)&& vtype!=LUA_TNIL)){
lua_pushvalue(L,-1);
if(lua_gettable(L,lua_upvalueindex(4))==LUA_TTABLE &&(lua_pushvalue(L,lua_upvalueindex(7)),lua_gettable(L,-2)==LUA_TSTRING &&(lua_pushstring(L,"Merged Entries"),lua_rawequal(L,-2,-1)))){
lua_pop(L,2);
int equal_found=0,size=luaL_len(L,-1);
for(int idx=1;idx<=size;idx++){
lua_geti(L,-1,idx);
if(!equal_found)
equal_found=lua_rawequal(L,4,-1);
lua_pop(L,1);
if(equal_found){
if(idx<size){
lua_geti(L,-1,1+idx);
lua_seti(L,-2,idx);
}else{
lua_pushnil(L);
lua_seti(L,-2,idx);
}
}
}
if(luaL_len(L,-1)<=1){
lua_geti(L,-1,1);
lua_copy(L,-3,-2);
lua_settable(L,lua_upvalueindex(4));
}else
lua_pop(L,1);
}else{
lua_settop(L,5);
lua_pushvalue(L,-1);
lua_pushnil(L);
lua_settable(L,lua_upvalueindex(4));
}
}
if(!lua_isnil(L,3)&& !lua_rawequal(L,3,-1)){
lua_copy(L,3,-1);
if(lua_gettable(L,lua_upvalueindex(4))==LUA_TNIL){
lua_copy(L,3,-1);
lua_pushvalue(L,-2);
lua_settable(L,lua_upvalueindex(4));
}else if(lua_istable(L,-1)&&(lua_pushvalue(L,lua_upvalueindex(7)),lua_gettable(L,-2)==LUA_TSTRING &&(lua_pushstring(L,"Merged Entries"),lua_rawequal(L,-2,-1)))){
lua_pop(L,1);
lua_copy(L,4,-1);
lua_seti(L,-2,1+luaL_len(L,-2));
lua_pop(L,1);
}else{
lua_settop(L,5);
lua_pushvalue(L,3);
lua_createtable(L,2,1);
lua_pushvalue(L,lua_upvalueindex(7));
lua_pushstring(L,"Merged Entries");
lua_settable(L,-3);
lua_rotate(L,5,-1);
lua_seti(L,-2,1+luaL_len(L,-2));
lua_pushvalue(L,-3);
lua_seti(L,-2,1+luaL_len(L,-2));
lua_settable(L,lua_upvalueindex(4));
}
}
lua_settop(L,4);
lua_pushvalue(L,-1);
if(!(lua_isnil(L,-3)&& lua_gettable(L,lua_upvalueindex(5))!=LUA_TNIL)){
lua_pop(L,1);
lua_insert(L,-2);
lua_settable(L,lua_upvalueindex(3));
}
return 0;
}

int inspect(lua_State *L){
lua_settop(L,2);
lua_getglobal(L,"module_name");
lua_getglobal(L,luaL_checklstring(L,-1,NULL));
lua_getfield(L,-1,"serialise");
lua_remove(L,-2);
lua_remove(L,-2);
lua_pushvalue(L,lua_upvalueindex(2));
lua_pushvalue(L,2);
for(int idx=3;idx<=5;idx++){
luaL_checkstack(L,3,"Unable to Allocate Memory for the Extra Stack Space!");
lua_pushvalue(L,-3);
lua_pushvalue(L,lua_upvalueindex(idx));
lua_pushvalue(L,-3);
}
for(int idx=1;idx<=4;idx++){
PCALL_ERRH(2,1,NULL)
lua_insert(L,3);
}
return 4;
}

int export_Couple(lua_State *L){
lua_settop(L,2);
lua_newtable(L);
lua_pushnil(L);
while(lua_next(L,lua_upvalueindex(2))){
lua_gettable(L,lua_upvalueindex(3));
lua_pushvalue(L,-2);
lua_insert(L,-3);
lua_settable(L,-4);
}
lua_newtable(L);
lua_pushnil(L);
while(lua_next(L,lua_upvalueindex(4))){
if(lua_istable(L,-1) &&(lua_pushvalue(L,lua_upvalueindex(7)),lua_gettable(L,-2)==LUA_TSTRING &&(lua_pushstring(L,"Merged Entries"),lua_rawequal(L,-2,-1)))){
lua_pop(L,2);
lua_newtable(L);
for(int idx=1;idx<=luaL_len(L,-2);idx++){
if(lua_isboolean(L,2)&& lua_toboolean(L,2)){
lua_geti(L,-2,idx);
lua_pushvalue(L,-1);
lua_gettable(L,lua_upvalueindex(5));
lua_settable(L,-3);
}else{
lua_geti(L,-2,idx);
lua_gettable(L,lua_upvalueindex(5));
lua_seti(L,-2,idx);
}
}
lua_remove(L,-2);
}else{
lua_settop(L,6);
if(lua_isboolean(L,2)&& lua_toboolean(L,2)){
lua_createtable(L,0,1);
lua_insert(L,-2);
lua_pushvalue(L,-1);
lua_gettable(L,lua_upvalueindex(5));
lua_settable(L,-3);
}else
lua_gettable(L,lua_upvalueindex(5));
}
lua_pushvalue(L,-2);
lua_insert(L,-3);
lua_settable(L,-4);
}
return 2;
}

int finalise(lua_State *L){
lua_settop(L,1);
if(lua_getmetatable(L,-1)){
lua_getfield(L,-1,"_ref");
luaL_unref(L,LUA_REGISTRYINDEX,lua_tointeger(L,-1));
lua_pop(L,1);
lua_pushnil(L);
lua_replace(L,-2);
lua_setmetatable(L,-2);
}
for(int idx=7;idx>=1;idx--){
lua_pushnil(L);
lua_replace(L,lua_upvalueindex(idx));
}
return 0;
}

int auxiliary_Import_Facility(lua_State *L){
lua_settop(L,1);
lua_pushnil(L);
_Bool empty=1;
while(lua_next(L,lua_upvalueindex(3))){
lua_pushvalue(L,-1);
if(lua_gettable(L,lua_upvalueindex(4))==LUA_TNIL){
lua_copy(L,-3,-1);
lua_settable(L,lua_upvalueindex(4));
}else if(lua_istable(L,-1)&&(lua_pushvalue(L,lua_upvalueindex(7)),lua_gettable(L,-2)==LUA_TSTRING &&(lua_pushstring(L,"Merged Entries"),lua_rawequal(L,-2,-1)))){
lua_pop(L,1);
lua_copy(L,-4,-1);
lua_seti(L,-2,1+luaL_len(L,-2));
lua_pop(L,2);
}else{
lua_settop(L,4);
lua_createtable(L,2,1);
lua_pushvalue(L,lua_upvalueindex(7));
lua_pushstring(L,"Merged Entries");
lua_settable(L,-3);
lua_insert(L,-2);
lua_seti(L,-2,1+luaL_len(L,-2));
lua_pushvalue(L,-3);
lua_seti(L,-2,1+luaL_len(L,-2));
lua_settable(L,lua_upvalueindex(4));
}
if(empty)
empty=0;
}
if(empty)
luaL_error(L,"Enumeration Lacks Criteria!");
return 0;
}

int create_New_Enumerator(lua_State *L){
lua_settop(L,3);
luaL_checktype(L,2,LUA_TTABLE);
for(int idx=1;idx<=4;idx++){
if(idx==2)
lua_pushvalue(L,2);
else
lua_newtable(L);
}
lua_createtable(L,0,1);
lua_pushstring(L,"k");
lua_setfield(L,-2,"__mode");
lua_setmetatable(L,-5);
lua_createtable(L,0,1);
lua_pushstring(L,"v");
lua_setfield(L,-2,"__mode");
lua_setmetatable(L,-2);
if(lua_isfunction(L,3))
lua_rotate(L,3,-1);
else{
lua_remove(L,3);
lua_getglobal(L,"module_name");
lua_getglobal(L,luaL_checklstring(L,-1,NULL));
lua_getfield(L,-1,"meta_Hash");
lua_remove(L,-2);
lua_remove(L,-2);
}
lua_pushcfunction(L,unique_Key);
lua_newuserdatauv(L,sizeof(luaL_Reg),0);
lua_pushvalue(L,-1);
lua_insert(L,-8);
lua_insert(L,-8);
const struct luaL_Reg operations[]={
{"__index",lookUp},
{"inverse_LookUp",inverse_LookUp},
{"__newindex",enumerate},
{"inspect",inspect},
{"export_Couple",export_Couple},
{"__gc",finalise},
{"auxiliary_Import_Facility",auxiliary_Import_Facility},
{"__call",create_New_Enumerator},
{NULL,NULL}
};
luaL_newlibtable(L,operations);
lua_insert(L,-8);
luaL_setfuncs(L,operations,7);
int ref=luaL_ref(L,LUA_REGISTRYINDEX);
lua_geti(L,LUA_REGISTRYINDEX,ref);
lua_pushinteger(L,ref);
lua_setfield(L,-2,"_ref");
lua_setmetatable(L,-2);
lua_getfield(L,-1,"auxiliary_Import_Facility");
lua_pushvalue(L,-2);
PCALL_ERRH(1,0,"Error Importing Enumeration Criteria!")
return 1;
}

int create_New_Hash_Map(lua_State *L){
lua_settop(L,3);
for(int idx=1;idx<=4;idx++){
lua_newtable(L);
}
lua_createtable(L,0,1);
lua_pushstring(L,"k");
lua_setfield(L,-2,"__mode");
lua_setmetatable(L,-5);
lua_createtable(L,0,1);
lua_pushstring(L,"v");
lua_setfield(L,-2,"__mode");
lua_setmetatable(L,-2);
if(lua_isfunction(L,3))
lua_rotate(L,3,-1);
else{
lua_remove(L,3);
lua_getglobal(L,"module_name");
lua_getglobal(L,luaL_checklstring(L,-1,NULL));
lua_getfield(L,-1,"meta_Hash");
lua_remove(L,-2);
lua_remove(L,-2);
}
lua_pushcfunction(L,unique_Key);
lua_newuserdatauv(L,sizeof(luaL_Reg),0);
lua_pushvalue(L,-1);
lua_insert(L,-8);
lua_insert(L,-8);
const struct luaL_Reg operations[]={
{"__index",lookUp},
{"inverse_LookUp",inverse_LookUp},
{"__newindex",set_Field},
{"inspect",inspect},
{"export_Couple",export_Couple},
{"__gc",finalise},
{"__call",create_New_Hash_Map},
{NULL,NULL}
};
luaL_newlibtable(L,operations);
lua_insert(L,-8);
luaL_setfuncs(L,operations,7);
int ref=luaL_ref(L,LUA_REGISTRYINDEX);
lua_geti(L,LUA_REGISTRYINDEX,ref);
lua_pushinteger(L,ref);
lua_setfield(L,-2,"_ref");
lua_setmetatable(L,-2);
if(lua_istable(L,2)){
lua_pushnil(L);
while(lua_next(L,2)){
lua_pushvalue(L,-2);
lua_insert(L,-3);
lua_settable(L,-4);
}
}
return 1;
}

luaL_Reg udc_UpBinds[]={
{"enumerator",create_New_Enumerator},
{"hash_Map",create_New_Hash_Map},
{NULL,NULL}
};

int primality(lua_State *L){
lua_Integer till=luaL_checkinteger(L,1);
lua_Integer from=luaL_checkinteger(L,2);
while(from<till){
++from;
_Bool boolean=1;
for(lua_Integer divider=(lua_Integer)2;divider<=from/divider;divider++){
if(from%divider==(lua_Integer)0){
boolean=0;
break;
}
}
if(boolean){
printf("%lld passed primality test!\n",from);
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

int thread_Consolidator(lua_State *L);

luaL_Reg c_UpBinds[]={
{"thread_Consolidator",thread_Consolidator},
{"prime_Generator",prime_Generator},
{NULL,NULL}
};

#define DOSTR_ERRH(SCRIPT,LABEL) if(luaL_dostring(L,SCRIPT)!=LUA_OK){\
printf("%s",lua_isstring(L,-1)?luaL_checklstring(L,-1,NULL):"Non-String Error Object!");\
lua_pop(L,1);\
goto LABEL;\
}

pthread_mutex_t lock=PTHREAD_MUTEX_INITIALIZER;

struct variable_lengthed_array{
int length;
char *array;
};

struct array_of_arrays{
int length;
struct variable_lengthed_array array[];
};

void* individual_Thread(void *arg){
lua_State *L=luaL_newstate();
luaL_openlibs(L);
lua_pushboolean(L,0);
lua_setglobal(L,"c_thread");
struct array_of_arrays *results=NULL;
char script[]===]..3+script_len..']='..script1..[===[;
pthread_mutex_lock(&lock);
DOSTR_ERRH(script,premature_end)
pthread_mutex_unlock(&lock);
lua_getglobal(L,"module_name");
lua_getglobal(L,luaL_checklstring(L,-1,NULL));
if(luaL_getsubtable(L,-1,"c_UpBinds"))
luaL_error(L,"Field Already Exists!");
lua_remove(L,-2);
lua_remove(L,-2);
int idx=-1;
while(++idx,udc_UpBinds[idx].name || udc_UpBinds[idx].func){
lua_createtable(L,0,1);
lua_pushcfunction(L,udc_UpBinds[idx].func);
lua_setfield(L,-2,"__call");
lua_setfield(L,LUA_REGISTRYINDEX,udc_UpBinds[idx].name);
lua_newuserdatauv(L,sizeof(luaL_Reg),0);
luaL_setmetatable(L,udc_UpBinds[idx].name);
lua_setfield(L,-2,udc_UpBinds[idx].name);
}
idx=-1;
while(++idx,c_UpBinds[idx].name || c_UpBinds[idx].func){
lua_pushcfunction(L,c_UpBinds[idx].func);
lua_setfield(L,-2,c_UpBinds[idx].name);
}
lua_pop(L,1);
int ctop=lua_gettop(L);
DOSTR_ERRH(arg,premature_end)
luaL_checkstack(L,3,"Unable to Allocate Memory for the Extra Stack Space!");
lua_getglobal(L,"module_name");
lua_getglobal(L,luaL_checklstring(L,-1,NULL));
lua_getfield(L,-1,"serialise");
lua_insert(L,1+ctop);
lua_pop(L,2);
results=malloc(sizeof(int)+(lua_gettop(L)-ctop-1)*sizeof(struct variable_lengthed_array));
results->length=lua_gettop(L)-ctop-1;
int count_up=-1;
for(int idx=1+ctop-lua_gettop(L);idx<=-1;idx++){
luaL_checkstack(L,3,"Unable to Allocate Memory for the Extra Stack Space!");
lua_pushvalue(L,1+ctop);
lua_pushvalue(L,idx-1);
lua_pushstring(L,"");
if(lua_pcall(L,2,1,0)!=LUA_OK)
luaL_error(L,"Error Serialising Result!");
size_t len;
const char *cache_result=lua_tolstring(L,-1,&len);
results->array[++count_up].array=malloc(len);
results->array[count_up].length=len;
memset(results->array[count_up].array,0,len);
strncpy(results->array[count_up].array,cache_result,len);
lua_pop(L,1);
}
premature_end:
if(!results)
pthread_mutex_unlock(&lock);
lua_close(L);
return results;
}

int thread_Consolidator(lua_State *L){
lua_settop(L,1);
luaL_checktype(L,-1,LUA_TTABLE);
pthread_t threads[luaL_len(L,-1)];
char *scripts[luaL_len(L,-1)];
for(int idx=0;idx<luaL_len(L,-1);idx++){
lua_geti(L,-1,1+idx);
size_t len;
const char *cache_script=lua_tolstring(L,-1,&len);
scripts[idx]=malloc(1+len);
memset(scripts[idx],0,1+len);
strncpy(scripts[idx],cache_script,1+len);
pthread_create(&threads[idx],NULL,individual_Thread,scripts[idx]);
lua_pop(L,1);
}
struct array_of_arrays *cache_result[luaL_len(L,-1)];
for(int idx=0;idx<luaL_len(L,-1);idx++){
pthread_join(threads[idx],(void*)&cache_result[idx]);
}
lua_createtable(L,luaL_len(L,-1),0);
for(int idx=0;idx<luaL_len(L,1);idx++){
if(cache_result[idx]){
luaL_checkstack(L,1+cache_result[idx]->length,"Unable to Allocate Memory for the Extra Stack Space!");
int count_up=-1;
lua_createtable(L,cache_result[idx]->length,0);
while(++count_up<cache_result[idx]->length){
lua_pushlstring(L,cache_result[idx]->array[count_up].array,cache_result[idx]->array[count_up].length);
lua_seti(L,-2,1+luaL_len(L,-2));
free(cache_result[idx]->array[count_up].array);
}
lua_seti(L,-2,1+luaL_len(L,-2));
free(cache_result[idx]);
}
free(scripts[idx]);
}
return 1;
}

lua_State *L;

struct proto_states{
int progress;
int associative;
int depth;
char tracks[10];
signed char traversal[11];
};

struct proto_states *parse_console_command_options(int nargs,char **args,struct proto_states *states){
if(states->traversal[1+strlen(states->tracks)])
goto successive_delve;
while(++states->progress,states->progress<nargs){
if(strlen(args[states->progress])==10 && !strcmp(args[states->progress],"DUMP STACK")){
printf("------\n");
for(int idx=lua_gettop(L);idx>0;idx--)
printf("%d %s\n",idx,lua_typename(L,lua_type(L,idx)));
printf("------\n");
goto do_nothing;
}else if(strlen(args[states->progress])>10 && !strncmp(args[states->progress],"DUP FRAME ",10)){
lua_pushvalue(L,atoll(&args[states->progress][10]));
goto do_nothing;
}
if(states->associative>0){
states->associative--;
if(states->associative==1 && lua_isnil(L,-2))
lua_remove(L,-2);
}
_Bool script_concluded=0,new_script=0;
int first_assignment=strlen(args[states->progress]);
for(int idx=strlen(args[states->progress])-1;idx>=0;idx--){
if(idx<=0 && args[states->progress][idx]=='=')
first_assignment=idx;
else if(!new_script && args[states->progress][idx]=='<'&&(idx<=0 || args[states->progress][idx-1]=='('|| args[states->progress][idx-1]=='{'|| args[states->progress][idx-1]=='=')){
new_script=1;
first_assignment=strlen(args[states->progress]);
}else if(args[states->progress][idx-1]!='<'&& args[states->progress][idx-1]!='!'&& args[states->progress][idx-1]!='='&& args[states->progress][idx]=='='&& args[states->progress][1+idx]!='='){
if(!script_concluded){
first_assignment=idx;
if(args[states->progress][idx-1]=='>'&& args[states->progress][1+idx]=='<')
script_concluded=1;
}
}
}
if(strrchr(args[states->progress],'>')){
int regress=strlen(args[states->progress]);
while(regress--,regress>=0 &&(args[states->progress][regress]==')'|| args[states->progress][regress]=='}'));
if(regress>=0 && args[states->progress][regress]=='>'&& states->tracks[strlen(states->tracks)-1]>3)
first_assignment=strlen(args[states->progress]);
}
char *key=NULL;
if(first_assignment<strlen(args[states->progress])){
states->associative++;
if(first_assignment>0 && first_assignment<strlen(args[states->progress])){
key=]===]..(os.getenv("ANDROID_ROOT")=="/system"and""or"_")..[===[alloca(3+first_assignment);
memset(key,0,3+first_assignment);
strncpy(key,args[states->progress],first_assignment);
args[states->progress-1]=key;
memset(args[states->progress],0,1+first_assignment);
args[states->progress]+=1+first_assignment;
if(!strchr(args[states->progress],'{')||(strrchr(args[states->progress],'{')>strchr(args[states->progress],'{')))
states->associative++;
states->progress--;
}else if(first_assignment==0){
if(lua_isnil(L,-2))
lua_remove(L,-2);
args[states->progress][0]=0;
args[states->progress]++;
}
}
double_evaluation:
luaL_checkstack(L,3,"Unable to Allocate Memory for the Extra Stack Space!");
if((!strrchr(args[states->progress],'>')||(strrchr(args[states->progress],'<')&& args[states->progress]<strchr(args[states->progress],'<')&& args[states->progress][strlen(args[states->progress])-1]=='>'))&&(strrchr(args[states->progress],'(')|| strrchr(args[states->progress],'{'))){
int count_total=0,count_parentheses=0,last_parenthesis=-1,last_brace=-1,first_brace=strlen(args[states->progress]);
for(int idx=0;idx<strlen(args[states->progress]);idx++){
if(args[states->progress][idx]=='<')
break;
else if(args[states->progress][idx]=='('){
count_parentheses++;
if(count_parentheses<=1){
count_total++;
if(count_total+strlen(states->tracks)>3*states->depth)
luaL_error(L,"Excessive Nesting of Expressions!");
}else if(count_parentheses>2)
luaL_error(L,"Too Many Parentheses at Once!");
last_parenthesis=idx;
if(idx<=0)
states->traversal[count_total+strlen(states->tracks)]=1;
else if(count_parentheses<=1)
states->traversal[count_total+strlen(states->tracks)]=2;
}else if(args[states->progress][idx]=='{'){
count_total++;
if(count_total+strlen(states->tracks)>3*states->depth)
luaL_error(L,"Excessive Nesting of Expressions!");
last_brace=idx;
first_brace=idx<first_brace?idx:first_brace;
states->traversal[count_total+strlen(states->tracks)]=3;
}
}
if(last_parenthesis>=first_brace)
luaL_error(L,"Function Calls Require at Least 1 Argument Ahead!");
char *replica=NULL;
if(last_parenthesis>0){
replica=malloc(3+last_parenthesis);
memset(replica,0,3+last_parenthesis);
strncpy(replica,args[states->progress],last_parenthesis);
}
if((last_brace>last_parenthesis?last_brace:last_parenthesis)<strlen(args[states->progress])-1){
memset(args[states->progress],0,1+(last_brace>last_parenthesis?last_brace:last_parenthesis));
args[states->progress]+=1+(last_brace>last_parenthesis?last_brace:last_parenthesis);
states->progress--;
}
successive_delve:
states->tracks[strlen(states->tracks)]=states->traversal[1+strlen(states->tracks)];
states->traversal[strlen(states->tracks)]=0;
int ctop,nrets;
if(states->tracks[strlen(states->tracks)-1]==3){
if(!states->associative && states->tracks[strlen(states->tracks)-2]==3)
lua_pushnil(L);
lua_newtable(L);
ctop=lua_gettop(L);
if(parse_console_command_options(nargs,args,states)->traversal[strlen(states->tracks)]<0)
luaL_error(L,"Erroneous Return!");
else{
int idx1=0,idx2=0;
while(++idx1,2*idx1-1<=lua_gettop(L)-ctop){
if(lua_isnil(L,2*idx1-1+ctop)){
idx2++;
lua_pushinteger(L,idx2+luaL_len(L,ctop));
lua_replace(L,2*idx1-1+ctop);
}
}
while(lua_gettop(L)>ctop)
lua_settable(L,ctop);
nrets=lua_gettop(L)-ctop;
}
}else if(states->tracks[strlen(states->tracks)-1]==1 || states->tracks[strlen(states->tracks)-1]==2){
char *global_route=(char*)"";
if(replica){
global_route=strtok(replica,".[](");
free(replica);
}
if(lua_getglobal(L,global_route)==LUA_TTABLE){
char temp[3+strlen(replica)];
while((global_route=strtok(NULL,".[]("))){
memset(temp,0,3+strlen(replica));
temp[0]='[';
if(strstr(replica,strcat(strcat(temp,global_route),"]")))
lua_pushinteger(L,atoll(global_route));
else
lua_pushstring(L,global_route);
lua_gettable(L,-2);
lua_remove(L,-2);
}
}
if(lua_isnil(L,-1))
luaL_error(L,"To-be-called Object Unfound!");
else{
lua_insert(L,-2);
ctop=lua_gettop(L);
if(parse_console_command_options(nargs,args,states)->traversal[strlen(states->tracks)]<0)
luaL_error(L,"Erroneous Return!");
else{
if(lua_pcall(L,1+lua_gettop(L)-ctop,states->tracks[strlen(states->tracks)-1]>1?LUA_MULTRET:states->tracks[strlen(states->tracks)-1],0)!=LUA_OK){
printf("%s",lua_isstring(L,-1)?luaL_checklstring(L,-1,NULL):"Non-String Error Object!");
lua_pop(L,1);
goto premature;
}
nrets=2+lua_gettop(L)-ctop;
}
}
}else
luaL_error(L,"System Error!");
states->traversal[strlen(states->tracks)]=0;
states->tracks[strlen(states->tracks)-1]=0;
if(!states->associative && states->tracks[strlen(states->tracks)-1]==3){
for(int idx=-nrets;idx<-1;idx++){
lua_pushnil(L);
lua_insert(L,idx);
}
}else if(states->tracks[strlen(states->tracks)-1]>3){
int cache_progress=states->tracks[strlen(states->tracks)-1];
while(++states->tracks[strlen(states->tracks)-1],states->tracks[strlen(states->tracks)-1]-cache_progress<=nrets){
int serial_len=snprintf(NULL,0,"%d",nrets+1+2*cache_progress-states->tracks[strlen(states->tracks)-1]);
char serial[3+serial_len];
memset(serial,0,3+serial_len);
if(serial_len!=sprintf(serial,"%d",nrets+1+2*cache_progress-states->tracks[strlen(states->tracks)-1]))
luaL_error(L,"System Error!");
char global[25+serial_len];
memset(global,0,25+serial_len);
strcpy(global,"evaluated_console_command");
lua_setglobal(L,strcat(global,serial));
}
states->tracks[strlen(states->tracks)-1]--;
while(++cache_progress,cache_progress<=states->tracks[strlen(states->tracks)-1]){
int serial_len=snprintf(NULL,0,"%d",cache_progress);
char serial[3+serial_len];
memset(serial,0,3+serial_len);
if(serial_len!=sprintf(serial,"%d",cache_progress))
luaL_error(L,"System Error!");
luaL_checkstack(L,3,"Unable to Allocate Memory for the Extra Stack Space!");
lua_pushstring(L,"evaluated_console_command");
lua_pushstring(L,serial);
if(cache_progress<states->tracks[strlen(states->tracks)-1])
lua_pushstring(L,",");
}
}
}else if(args[states->progress][strlen(args[states->progress])-1]==')'|| args[states->progress][strlen(args[states->progress])-1]=='}'){
int regress=strlen(args[states->progress])-1;
while(regress--,regress>=0 &&(args[states->progress][regress]==')'|| args[states->progress][regress]=='}'));
int cache_regress=regress++;
for(int idx=strlen(states->tracks)-1;idx>=-1;idx--){
if(regress>strlen(args[states->progress])-1)
break;
else if(states->tracks[idx]>0 && states->tracks[idx]<=2 && args[states->progress][regress]==')'){
regress++;
if(states->tracks[idx]==1){
if(args[states->progress][regress]==')')
regress++;
else
luaL_error(L,"Imbalanced Parentheses!");
}
states->traversal[1+idx]=states->tracks[idx];
}else if(states->tracks[idx]==3 && args[states->progress][regress]=='}'){
regress++;
states->traversal[1+idx]=states->tracks[idx];
}else if(states->tracks[idx]>3)
continue;
else if(idx<0)
luaL_error(L,"More Terminators than Necessary!");
}
if(cache_regress>=0){
for(int idx=1+cache_regress;idx<strlen(args[states->progress]);idx++)
args[states->progress][idx]=0;
goto double_evaluation;
}
}else{
if(!states->associative && states->tracks[strlen(states->tracks)-1]==3)
lua_pushnil(L);
if(args[states->progress][0]=='<'){
if(args[states->progress][strlen(args[states->progress])-1]=='>'){
const char *script=lua_pushlstring(L,1+args[states->progress],strlen(args[states->progress])-2);
int ctop=lua_gettop(L);
DOSTR_ERRH(script,premature)
if(!states->associative && states->tracks[strlen(states->tracks)-1]==3){
for(int idx=ctop-lua_gettop(L);idx<-1;idx++){
lua_pushnil(L);
lua_insert(L,idx);
}
}
lua_remove(L,ctop);
}else if(strlen(states->tracks)<3*states->depth){
int ctop=lua_gettop(L);
lua_pushstring(L,1+args[states->progress]);
states->tracks[strlen(states->tracks)]=4;
if(parse_console_command_options(nargs,args,states)->traversal[strlen(states->tracks)]<0)
luaL_error(L,"Erroneous Return!");
else{
lua_concat(L,lua_gettop(L)-ctop);
const char *script=lua_tostring(L,-1);
ctop=lua_gettop(L);
DOSTR_ERRH(script,premature)
if(!states->associative && states->tracks[strlen(states->tracks)-2]==3){
for(int idx=ctop-lua_gettop(L);idx<-1;idx++){
lua_pushnil(L);
lua_insert(L,idx);
}
}
lua_remove(L,ctop);
for(int idx=4;idx<=states->tracks[strlen(states->tracks)-1];idx++){
int serial_len=snprintf(NULL,0,"%d",idx);
char serial[3+serial_len];
memset(serial,0,3+serial_len);
if(serial_len!=sprintf(serial,"%d",idx))
luaL_error(L,"System Error!");
char global[25+serial_len];
memset(global,0,25+serial_len);
strcpy(global,"evaluated_console_command");
lua_pushnil(L);
lua_setglobal(L,strcat(global,serial));
}
states->traversal[strlen(states->tracks)]=0;
states->tracks[strlen(states->tracks)-1]=0;
}
}else
luaL_error(L,"Excessive Nesting of Expressions!");
}else if(args[states->progress][strlen(args[states->progress])-1]=='>'){
if(states->tracks[strlen(states->tracks)-1]<4)
luaL_error(L,"Imbalanced Terminators - Script Concluded before Nested Evaluations Return!");
states->traversal[strlen(states->tracks)]=states->tracks[strlen(states->tracks)-1];
lua_pushlstring(L,args[states->progress],strlen(args[states->progress])-1);
}else{
char *int_tailptr=NULL;
char *float_tailptr=NULL;
if(strtoll(args[states->progress],&int_tailptr,0),*int_tailptr=='\0')
lua_pushinteger(L,atoll(args[states->progress]));
else if((getenv("ANDROID_ROOT")&& !strncmp(getenv("ANDROID_ROOT"),"/system",strlen(getenv("ANDROID_ROOT"))))?strtold(args[states->progress],&float_tailptr):strtod(args[states->progress],&float_tailptr),*float_tailptr=='\0')
lua_pushnumber(L,(getenv("ANDROID_ROOT")&& !strncmp(getenv("ANDROID_ROOT"),"/system",strlen(getenv("ANDROID_ROOT"))))?strtold(args[states->progress],NULL):strtod(args[states->progress],NULL));
else if(strlen(args[states->progress])==4 && !strcmp(args[states->progress],"true"))
lua_pushboolean(L,1);
else if(strlen(args[states->progress])==5 && !strcmp(args[states->progress],"false"))
lua_pushboolean(L,0);
else if((strlen(args[states->progress])==3 && !strcmp(args[states->progress],"nil"))||(strlen(args[states->progress])==1 && !strcmp(args[states->progress],"_")))
lua_pushnil(L);
else
lua_pushstring(L,args[states->progress]);
}
}
if(states->traversal[strlen(states->tracks)]>0)
break;
do_nothing:;
}
return states;
premature:
states->traversal[strlen(states->tracks)]=-1;
return states;
}

int main(int n,char *args[]){
struct proto_states *states=(struct proto_states*)]===]..(os.getenv("ANDROID_ROOT")=="/system"and""or"_")..[===[alloca(sizeof(struct proto_states));
states->progress=0;
states->associative=0;
states->depth=3;
memset(states->tracks,0,1+3*states->depth);
memset(states->traversal,0,2+3*states->depth);
L=luaL_newstate();
luaL_openlibs(L);
char script[]===]..3+script_len..']='..script1..[===[;
DOSTR_ERRH(script,premature_end)
lua_getglobal(L,"module_name");
lua_getglobal(L,luaL_checklstring(L,-1,NULL));
if(luaL_getsubtable(L,-1,"c_UpBinds"))
luaL_error(L,"Field Already Exists!");
lua_remove(L,-2);
lua_remove(L,-2);
int idx=-1;
while(++idx,udc_UpBinds[idx].name || udc_UpBinds[idx].func){
lua_createtable(L,0,1);
lua_pushcfunction(L,udc_UpBinds[idx].func);
lua_setfield(L,-2,"__call");
lua_setfield(L,LUA_REGISTRYINDEX,udc_UpBinds[idx].name);
lua_newuserdatauv(L,sizeof(luaL_Reg),0);
luaL_setmetatable(L,udc_UpBinds[idx].name);
lua_setfield(L,-2,udc_UpBinds[idx].name);
}
idx=-1;
while(++idx,c_UpBinds[idx].name || c_UpBinds[idx].func){
lua_pushcfunction(L,c_UpBinds[idx].func);
lua_setfield(L,-2,c_UpBinds[idx].name);
}
lua_pop(L,1);
memset(script,0,sizeof script);
strcpy(script,]===]..script2..[===[);
DOSTR_ERRH(script,premature_end)
if(lua_isstring(L,-1)){
luaL_loadfile(L,luaL_checklstring(L,-1,NULL));
lua_remove(L,-2);
int ctop=lua_gettop(L);
if(parse_console_command_options(n,args,states)->traversal[0]==-1)
goto premature_end;
if(lua_pcall(L,lua_gettop(L)-ctop,LUA_MULTRET,0)!=LUA_OK){
printf("%s",lua_isstring(L,-1)?luaL_checklstring(L,-1,NULL):"Non-String Error Object!");
lua_pop(L,1);
}
}else if(lua_isboolean(L,-1)&& !lua_toboolean(L,-1)){
lua_pop(L,1);
parse_console_command_options(n,args,states);
}
premature_end:
lua_close(L);
return 0;
}]===])
io.close()
if os.getenv("ANDROID_ROOT")~="/system"then
goto not_bother
end
os.execute("rm -rvf $PREFIX/c_M")
os.execute("mkdir -v -m=rwx $PREFIX/c_M")
if os.execute('clang -x c "'..where..keystone(_ENV[...].version,_ENV[...].renewed)..keystone(_ENV[...].renewed,_ENV[...].version)..keystone(status,_ENV[...].renewed)..keystone(status,_ENV[...].version)..'" -fPIC -ggdb -O0 -Wall -o $PREFIX/c_M/lua_Console -llua -lm -pthread')then
os.execute("cat > ~/.bashrc << 'EOF'")
os.execute("echo 'export \"LUA_INIT=@/sdcard/Download/Codes/lua_StandAlone\"' >> ~/.bashrc")
os.execute("echo 'export \"PATH=$PREFIX/c_M:$PREFIX/bin\"' >> ~/.bashrc")
os.execute("source ~/.bashrc")
print("Main Program Ready for Run!")
end
os.remove(where..keystone(_ENV[...].version,_ENV[...].renewed)..keystone(_ENV[...].renewed,_ENV[...].version)..keystone(status,_ENV[...].renewed)..keystone(status,_ENV[...].version))
::not_bother::
status=cstatus
end

--autorun part 2:
if status~="under maintenance"then
local line_number,num_of_delimiters=0,0
local function closet()
for code_line in io.input(find_self):lines("L")do
line_number=1+line_number
local i,_,cap1,cap2=code_line:find("%s-%-%-%s-range%s-%[(%d+)%]%s-%[(%d+)%]%s*$")
if i and i==1 then
num_of_delimiters=tonumber(cap1)>num_of_delimiters and tonumber(cap1)or num_of_delimiters
ranges[tonumber(cap1)]=ranges[tonumber(cap1)]or{}
ranges[tonumber(cap1)][keystone(tonumber(cap1),tonumber(cap2))]=line_number
end
end
end
closet()
status="checksum"
io.output(where..keystone(_ENV[...].version,_ENV[...].renewed)..keystone(_ENV[...].renewed,_ENV[...].version)..keystone(status,_ENV[...].renewed)..keystone(status,_ENV[...].version))
io.write("--range[6][6]\n")
for range,bracket in table_Player(ranges,{i=num_of_delimiters,j=1,dist="-",key_word=6,stateless=true})do
io.input(find_self):seek("set")
line_number=0
for household_line in io.input(find_self):lines("L")do
line_number=1+line_number
if not household_line:match("^%s-%-%-")then
if line_number>=math.min(bracket[keystone(range,6)],bracket[keystone(range,5)])and line_number<=math.max(bracket[keystone(range,6)],bracket[keystone(range,5)])then
if household_line:find("%s-⚙%s*$")==1 then
io.write('--range[6][5]\nlocal status="off maintenance"\nlocal digest=""\n',[===[--range[5][6]
]===])
else
io.write(household_line)
end
end
end
end
end
io.write("--range[5][5]")
io.close()
local household_sum=directory_CheckSum(where..keystone(_ENV[...].version,_ENV[...].renewed)..keystone(_ENV[...].renewed,_ENV[...].version)..keystone(status,_ENV[...].renewed)..keystone(status,_ENV[...].version),where)
if household_sum==tonumber(digest)then
os.remove(where..keystone(_ENV[...].version,_ENV[...].renewed)..keystone(_ENV[...].renewed,_ENV[...].version)..keystone(status,_ENV[...].renewed)..keystone(status,_ENV[...].version))
else
status=cstatus
if status=="ready for run"then
warn("⚠️Crucial chunks of the library have been tampered - deploy, run or whatever at your own risk!")
elseif status=="off maintenance"then
status="checksum"
os.remove(where..keystone(_ENV[...].version,_ENV[...].renewed)..keystone(_ENV[...].renewed,_ENV[...].version)..keystone(status,_ENV[...].renewed)..keystone(status,_ENV[...].version))
line_number,num_of_delimiters,ranges,_ENV[...].version,_ENV[...].renewed=0,0,{},2^(-6)+_ENV[...].version,tonumber(os.date("%Y%m%d"))
io.input(find_self):seek("set")
closet()
io.output(where..keystone(_ENV[...].version,_ENV[...].renewed)..keystone(_ENV[...].renewed,_ENV[...].version)..keystone(status,_ENV[...].renewed)..keystone(status,_ENV[...].version))
io.write("--range[6][6]\n")
for range,bracket in table_Player(ranges,{i=num_of_delimiters,j=1,dist="-",key_word=6,stateless=true})do
io.input(find_self):seek("set")
line_number=0
for household_line in io.input(find_self):lines("L")do
line_number=1+line_number
if not household_line:match("^%s-%-%-")then
if line_number>=math.min(bracket[keystone(range,6)],bracket[keystone(range,5)])and line_number<=math.max(bracket[keystone(range,6)],bracket[keystone(range,5)])then
if household_line:find("%s-version%s-=%s*.-,%s*$")==1 then
io.write((household_line:gsub("%s-(version)%s-(=)%s*.-(,)%s*","%1%2".._ENV[...].version..[===[%3
]===])))
elseif household_line:find("%s-renewed%s-=%s*.-,%s*$")==1 then
io.write((household_line:gsub("%s-(renewed)%s-(=)%s*.-(,)%s*","%1%2".._ENV[...].renewed..[===[%3
]===])))
elseif household_line:find("%s-⚙%s*$")==1 then
io.write('--range[6][5]\nlocal status="off maintenance"\nlocal digest=""\n',[===[--range[5][6]
]===])
else
io.write(household_line)
end
end
end
end
end
io.write("--range[5][5]")
io.close()
household_sum=directory_CheckSum(where..keystone(_ENV[...].version,_ENV[...].renewed)..keystone(_ENV[...].renewed,_ENV[...].version)..keystone(status,_ENV[...].renewed)..keystone(status,_ENV[...].version),where)
io.input(find_self):seek("set")
status="ready for run"
io.output(where..keystone(_ENV[...].version,_ENV[...].renewed)..keystone(_ENV[...].renewed,_ENV[...].version)..keystone(status,_ENV[...].renewed)..keystone(status,_ENV[...].version))
for code_line in io.input(find_self):lines("L")do
if code_line:find("%s-version%s-=%s*.-,%s*$")==1 then
io.write((code_line:gsub("%s-(version)%s-(=)%s*.-(,)%s*","%1%2".._ENV[...].version..[===[%3
]===])))
elseif code_line:find("%s-renewed%s-=%s*.-,%s*$")==1 then
io.write((code_line:gsub("%s-(renewed)%s-(=)%s*.-(,)%s*","%1%2".._ENV[...].renewed..[===[%3
]===])))
elseif code_line:find("%s-local%s-status%s-=%s-\".-\"%s*$")==1 then
io.write((code_line:gsub("%s-(local)%s-(status)%s-(=)%s-(\").-(\")%s*","%1 %2%3%4"..status..[===[%5
]===])))
elseif code_line:find("%s-local%s-digest%s-=%s-\".-\"%s*$")==1 then
io.write((code_line:gsub("%s-(local)%s-(digest)%s-(=)%s-(\").-(\")%s*","%1 %2%3%4"..household_sum..[===[%5
]===])))
else
io.write(code_line)
end
end
io.close()
end
end
io.input(find_self):close()
status=cstatus
end

--final autorun:
do
local satchel={}
for idx,serial,piece in table_Player(_ENV[...],{key_word=false,stateless=true})do
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
for idx,category,count in table_Player(satchel,{j=2,dist="-",key_word=false,stateless=true})do
print(count.." "..category..(count>1 and"s"or"")..",")
end
local tail_category,tail_count=next(satchel)
print(tail_count.." "..tail_category..(tail_count>1 and"s"or"")..' loaded - as module name "'..required_name..'",')
print("Ready to Roll!")
if status=="under maintenance"then
status="debugging"
_ENV[...]=init_Dbg(_ENV[...])
status=cstatus
end
end


::lower_overhead::


local directory_Match=load("local directory=...\n"..dir_mat)
_ENV[...].directory_Match=directory_Match
_ENV[...].meta_Hash=meta_Hash;
(hash_Functions or{}).meta_Hash=meta_Hash
_ENV[...].directory_CheckSum=directory_CheckSum
_ENV[...].init_Dbg=init_Dbg


return _ENV[...]
--range[2][15]