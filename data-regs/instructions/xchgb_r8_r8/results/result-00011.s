  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP   Bytes  Opcode             
.target:          #        0     0      OPC=<label>        
  clc             #  1     0     1      OPC=clc            
  setnae %bh      #  2     0x1   3      OPC=setnae_rh      
  xaddb %bh, %cl  #  3     0x4   3      OPC=xaddb_r8_rh    
  setno %ch       #  4     0x7   3      OPC=setno_rh       
  xchgw %cx, %bx  #  5     0xa   3      OPC=xchgw_r16_r16  
  movw %cx, %cx   #  6     0xd   3      OPC=movw_r16_r16   
  retq            #  7     0x10  1      OPC=retq           
                                                           
.size target, .-target
