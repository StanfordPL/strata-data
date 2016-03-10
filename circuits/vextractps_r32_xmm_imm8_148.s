  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  vpmovzxdq %xmm1, %ymm2             #  1     0     5      OPC=vpmovzxdq_ymm_xmm  
  callq .move_128_064_xmm2_r12_r13   #  2     0x5   5      OPC=callq_label        
  callq .move_032_064_r12d_r13d_rbx  #  3     0xa   5      OPC=callq_label        
  orl %ebx, %ebx                     #  4     0xf   2      OPC=orl_r32_r32        
  retq                               #  5     0x11  1      OPC=retq               
                                                                                  
.size target, .-target
