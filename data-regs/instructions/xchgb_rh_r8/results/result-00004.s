  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  xchgb %ah, %bl  #  1     0    2      OPC=xchgb_r8_rh  
  clc             #  2     0x2  1      OPC=clc          
  setc %bh        #  3     0x3  3      OPC=setc_rh      
  xorb %bh, %bl   #  4     0x6  2      OPC=xorb_r8_rh   
  retq            #  5     0x8  1      OPC=retq         
                                                        
.size target, .-target
