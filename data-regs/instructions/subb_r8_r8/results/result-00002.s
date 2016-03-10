  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  xorq %rax, %rax       #  1     0     3      OPC=xorq_r64_r64     
  xorb %cl, %ah         #  2     0x3   2      OPC=xorb_rh_r8       
  popcntl %eax, %r14d   #  3     0x5   5      OPC=popcntl_r32_r32  
  popcntl %r14d, %r10d  #  4     0xa   5      OPC=popcntl_r32_r32  
  cltq                  #  5     0xf   2      OPC=cltq             
  sbbb %ah, %bl         #  6     0x11  2      OPC=sbbb_r8_rh       
  retq                  #  7     0x13  1      OPC=retq             
                                                                   
.size target, .-target
