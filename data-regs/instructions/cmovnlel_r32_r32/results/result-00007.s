  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovll %ebx, %ecx   #  1     0    3      OPC=cmovll_r32_r32   
  cmovnew %bx, %bx    #  2     0x3  4      OPC=cmovnew_r16_r16  
  cmovnel %ecx, %ebx  #  3     0x7  3      OPC=cmovnel_r32_r32  
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
