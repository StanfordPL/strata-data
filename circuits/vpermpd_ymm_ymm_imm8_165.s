  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vmaxpd %xmm13, %xmm13, %xmm0         #  2     0x5   5      OPC=vmaxpd_xmm_xmm_xmm  
  vmovddup %ymm2, %ymm1                #  3     0xa   4      OPC=vmovddup_ymm_ymm    
  movupd %xmm0, %xmm12                 #  4     0xe   5      OPC=movupd_xmm_xmm      
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x13  5      OPC=callq_label         
  retq                                 #  6     0x18  1      OPC=retq                
                                                                                     
.size target, .-target
