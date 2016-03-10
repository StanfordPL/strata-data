  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movslq %ebx, %rsi   #  1     0    3      OPC=movslq_r64_r32   
  cmovnll %ecx, %esi  #  2     0x3  3      OPC=cmovnll_r32_r32  
  movl %esi, %ebx     #  3     0x6  2      OPC=movl_r32_r32     
  retq                #  4     0x8  1      OPC=retq             
                                                                
.size target, .-target
