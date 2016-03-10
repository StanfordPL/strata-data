  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  movsbw %ah, %sp   #  1     0    4      OPC=movsbw_r16_rh    
  popcntw %sp, %dx  #  2     0x4  5      OPC=popcntw_r16_r16  
  sbbb %bh, %ah     #  3     0x9  2      OPC=sbbb_rh_rh       
  retq              #  4     0xb  1      OPC=retq             
                                                              
.size target, .-target
