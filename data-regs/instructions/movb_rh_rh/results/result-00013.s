  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xorw %ax, %ax    #  1     0    3      OPC=xorw_r16_r16   
  movsbw %bh, %cx  #  2     0x3  4      OPC=movsbw_r16_rh  
  xaddb %ah, %cl   #  3     0x7  3      OPC=xaddb_r8_rh    
  retq             #  4     0xa  1      OPC=retq           
                                                           
.size target, .-target
