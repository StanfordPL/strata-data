  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  cmovnll %ecx, %ebx  #  1     0     3      OPC=cmovnll_r32_r32  
  sall $0x1, %ecx     #  2     0x3   2      OPC=sall_r32_one     
  movswl %bx, %r10d   #  3     0x5   4      OPC=movswl_r32_r16   
  orq %rcx, %r10      #  4     0x9   3      OPC=orq_r64_r64      
  rolw $0x1, %cx      #  5     0xc   3      OPC=rolw_r16_one     
  cmoval %ebx, %ebx   #  6     0xf   3      OPC=cmoval_r32_r32   
  retq                #  7     0x12  1      OPC=retq             
                                                                 
.size target, .-target
