  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  callq .move_64_128_xmm12_xmm13_xmm2  #  2     0x5   5      OPC=callq_label         
  vmovsd %xmm12, %xmm2, %xmm1          #  3     0xa   5      OPC=vmovsd_xmm_xmm_xmm  
  vmovddup %ymm2, %ymm13               #  4     0xf   4      OPC=vmovddup_ymm_ymm    
  movaps %xmm1, %xmm13                 #  5     0x13  4      OPC=movaps_xmm_xmm      
  vpor %ymm13, %ymm13, %ymm1           #  6     0x17  5      OPC=vpor_ymm_ymm_ymm    
  retq                                 #  7     0x1c  1      OPC=retq                
                                                                                     
.size target, .-target
