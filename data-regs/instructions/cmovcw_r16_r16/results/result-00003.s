  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzwq %cx, %rdx    #  1     0    4      OPC=movzwq_r64_r16   
  sbbw %dx, %cx       #  2     0x4  3      OPC=sbbw_r16_r16     
  cmovnzl %edx, %ebx  #  3     0x7  3      OPC=cmovnzl_r32_r32  
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
