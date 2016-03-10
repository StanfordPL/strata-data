  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_064_xmm3_r12_r13              #  1     0     5      OPC=callq_label             
  vmovddup %xmm3, %xmm1                         #  2     0x5   4      OPC=vmovddup_xmm_xmm        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label             
  vpaddq %xmm2, %xmm6, %xmm14                   #  4     0xe   4      OPC=vpaddq_xmm_xmm_xmm      
  callq .move_064_128_r12_r13_xmm1              #  5     0x12  5      OPC=callq_label             
  vpunpckhwd %ymm1, %ymm14, %ymm1               #  6     0x17  4      OPC=vpunpckhwd_ymm_ymm_ymm  
  retq                                          #  7     0x1b  1      OPC=retq                    
                                                                                                  
.size target, .-target
