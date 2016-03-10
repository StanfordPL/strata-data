  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  cmovnll %ecx, %ebx     #  1     0    3      OPC=cmovnll_r32_r32  
  callq .set_szp_for_bx  #  2     0x3  5      OPC=callq_label      
  cmovll %ebx, %ebx      #  3     0x8  3      OPC=cmovll_r32_r32   
  retq                   #  4     0xb  1      OPC=retq             
                                                                   
.size target, .-target
