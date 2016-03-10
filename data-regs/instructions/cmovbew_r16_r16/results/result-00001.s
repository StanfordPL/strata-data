  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movswl %cx, %esi   #  1     0     3      OPC=movswl_r32_r16  
  movzwq %cx, %rdx   #  2     0x3   4      OPC=movzwq_r64_r16  
  cmovzl %esi, %ebx  #  3     0x7   3      OPC=cmovzl_r32_r32  
  sbbw %si, %cx      #  4     0xa   3      OPC=sbbw_r16_r16    
  cmovll %edx, %ebx  #  5     0xd   3      OPC=cmovll_r32_r32  
  retq               #  6     0x10  1      OPC=retq            
                                                               
.size target, .-target
