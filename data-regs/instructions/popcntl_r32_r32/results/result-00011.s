  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP   Bytes  Opcode               
.target:               #        0     0      OPC=<label>          
  orl %ecx, %ecx       #  1     0     2      OPC=orl_r32_r32      
  xchgl %ecx, %ecx     #  2     0x2   2      OPC=xchgl_r32_r32    
  popcntq %rcx, %rbx   #  3     0x4   5      OPC=popcntq_r64_r64  
  movq %rbx, %r9       #  4     0x9   3      OPC=movq_r64_r64     
  popcntw %r9w, %r10w  #  5     0xc   6      OPC=popcntw_r16_r16  
  retq                 #  6     0x12  1      OPC=retq             
                                                                  
.size target, .-target
