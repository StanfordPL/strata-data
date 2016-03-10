  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vpaddq %xmm3, %xmm7, %xmm7                    #  2     0x5   4      OPC=vpaddq_xmm_xmm_xmm  
  vmovsldup %ymm7, %ymm5                        #  3     0x9   4      OPC=vmovsldup_ymm_ymm   
  unpckhps %xmm2, %xmm5                         #  4     0xd   3      OPC=unpckhps_xmm_xmm    
  vmovsd %xmm2, %xmm5, %xmm1                    #  5     0x10  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                                          #  6     0x14  1      OPC=retq                
                                                                                              
.size target, .-target
