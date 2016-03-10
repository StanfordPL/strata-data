  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  movzbw %ah, %bp          #  1     0    4      OPC=movzbw_r16_rh  
  xaddb %ah, %bl           #  2     0x4  3      OPC=xaddb_r8_rh    
  callq .read_cf_into_rbx  #  3     0x7  5      OPC=callq_label    
  xchgw %bp, %bx           #  4     0xc  3      OPC=xchgw_r16_r16  
  retq                     #  5     0xf  1      OPC=retq           
                                                                   
.size target, .-target
