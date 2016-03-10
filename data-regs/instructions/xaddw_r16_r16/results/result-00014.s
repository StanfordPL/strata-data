  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  movw %bx, %ax            #  1     0     3      OPC=movw_r16_r16   
  xchgw %cx, %ax           #  2     0x3   3      OPC=xchgw_r16_r16  
  addw %bx, %bx            #  3     0x6   3      OPC=addw_r16_r16   
  callq .read_cf_into_rbx  #  4     0x9   5      OPC=callq_label    
  addw %cx, %ax            #  5     0xe   3      OPC=addw_r16_r16   
  xchgw %ax, %bx           #  6     0x11  2      OPC=xchgw_r16_ax   
  retq                     #  7     0x13  1      OPC=retq           
                                                                    
.size target, .-target
