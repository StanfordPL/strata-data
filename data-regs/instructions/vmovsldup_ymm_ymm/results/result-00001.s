  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmaxss %xmm11, %xmm11, %xmm1          #  2     0x5   5      OPC=vmaxss_xmm_xmm_xmm  
  vmovsldup %xmm1, %xmm11               #  3     0xa   4      OPC=vmovsldup_xmm_xmm   
  vmovsldup %xmm10, %xmm10              #  4     0xe   5      OPC=vmovsldup_xmm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x13  5      OPC=callq_label         
  retq                                  #  6     0x18  1      OPC=retq                
                                                                                      
.size target, .-target
