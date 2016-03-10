  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  setl %dh          #  1     0    3      OPC=setl_rh          
  movzbl %dh, %esi  #  2     0x3  3      OPC=movzbl_r32_rh    
  popcntw %si, %bx  #  3     0x6  5      OPC=popcntw_r16_r16  
  retq              #  4     0xb  1      OPC=retq             
                                                              
.size target, .-target
