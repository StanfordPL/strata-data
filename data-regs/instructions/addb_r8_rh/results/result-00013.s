  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8   
  xaddb %al, %bl  #  2     0x2  3      OPC=xaddb_r8_r8  
  xchgb %al, %bl  #  3     0x5  2      OPC=xchgb_r8_r8  
  adcb %ah, %bl   #  4     0x7  2      OPC=adcb_r8_rh   
  retq            #  5     0x9  1      OPC=retq         
                                                        
.size target, .-target
