  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  movzbl %bh, %ecx  #  1     0    3      OPC=movzbl_r32_rh    
  popcntw %cx, %ax  #  2     0x3  5      OPC=popcntw_r16_r16  
  addb %cl, %ah     #  3     0x8  2      OPC=addb_rh_r8       
  retq              #  4     0xa  1      OPC=retq             
                                                              
.size target, .-target
