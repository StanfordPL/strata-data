  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  movsbw %cl, %ax   #  1     0    4      OPC=movsbw_r16_r8    
  cmovaw %ax, %cx   #  2     0x4  4      OPC=cmovaw_r16_r16   
  cmovbew %cx, %bx  #  3     0x8  4      OPC=cmovbew_r16_r16  
  retq              #  4     0xc  1      OPC=retq             
                                                              
.size target, .-target
