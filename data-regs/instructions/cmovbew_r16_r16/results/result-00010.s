  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswl %cx, %ebp    #  1     0    3      OPC=movswl_r32_r16   
  cmovzw %bp, %bp     #  2     0x3  4      OPC=cmovzw_r16_r16   
  cmovbel %ebp, %ebx  #  3     0x7  3      OPC=cmovbel_r32_r32  
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
