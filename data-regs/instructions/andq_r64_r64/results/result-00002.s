  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vmovq %rbx, %xmm7            #  1     0     5      OPC=vmovq_xmm_r64        
  andnq %rcx, %rbx, %r12       #  2     0x5   5      OPC=andnq_r64_r64_r64    
  vhaddps %ymm7, %ymm7, %ymm7  #  3     0xa   4      OPC=vhaddps_ymm_ymm_ymm  
  andnq %rcx, %r12, %rsi       #  4     0xe   5      OPC=andnq_r64_r64_r64    
  cvttsd2sil %xmm7, %ebx       #  5     0x13  4      OPC=cvttsd2sil_r32_xmm   
  xorq %rsi, %rbx              #  6     0x17  3      OPC=xorq_r64_r64         
  retq                         #  7     0x1a  1      OPC=retq                 
                                                                              
.size target, .-target
