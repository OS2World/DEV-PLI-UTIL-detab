/*******************************************************************/                                         
/* Rexx cmd file to compile          a PL/I program                */
/* modified from pliclg.cmd by peter flass, Aug, 2001              */
/*                                                                 */                                         
/*(C) Copyright IBM Corp. 1992.  All Rights Reserved.              */                                         
/*US Government Users Restricted Rights--Use, duplication or       */                                         
/*disclosure restricted by GSA ADP Schedule Contract with IBM Corp.*/                                         
/*******************************************************************/                                         
parse arg names '(' opts                                                                                      
                                                                                                              
crc = 0                                                                                                       
lnames=''                                                                                                     
                                                                                                              
lpath=value('IBM.OBJECT',,'OS2ENVIRONMENT')                                                                   
lpath=strip(left(lpath,length(lpath)-verify(reverse(lpath), '; ')+1))                                         
if right(lpath,1) = '\' | lpath='' then                                                                       
  ldir=lpath                                                                                                  
else                                                                                                          
  ldir=lpath'\'                                                                                               
                                                                                                              
if opts='' then                                                                                               
  nop                                                                                                         
else                                                                                                          
  opts='('opts                                                                                                
                                                                                                              
do i = 1 to words(names)                                                                                      
  name = word(names,i)                                                                                        
  '@pli' name opts                                                                                             
  crc=max(rc, crc)                                                                                            
  parse value filespec('name',name) with n'.'                                                                 
  lnames=lnames ldir||n                                                                                       
  if i=1 then ename=n                                                                                         
end                                                                                                           

/* Translate RC 4 to 0 for make */
if crc=4 then crc=0

exit crc                                                                                                      
