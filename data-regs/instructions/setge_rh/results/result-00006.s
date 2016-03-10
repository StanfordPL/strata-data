  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  setge %dl       #  1     0    3      OPC=setge_r8      
  xorw %ax, %ax   #  2     0x3  3      OPC=xorw_r16_r16  
  xchgb %dl, %ah  #  3     0x6  2      OPC=xchgb_rh_r8   
  retq            #  4     0x8  1      OPC=retq          
                                                         
.size target, .-target
