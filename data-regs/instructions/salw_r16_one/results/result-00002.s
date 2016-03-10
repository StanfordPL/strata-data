  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode             
.target:          #        0    0      OPC=<label>        
  xaddw %bx, %bx  #  1     0    4      OPC=xaddw_r16_r16  
  retq            #  2     0x4  1      OPC=retq           
                                                          
.size target, .-target
