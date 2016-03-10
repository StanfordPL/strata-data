  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vpand %xmm12, %xmm12, %xmm10          #  2     0x5   5      OPC=vpand_xmm_xmm_xmm   
  vmovss %xmm3, %xmm3, %xmm11           #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm2  #  4     0xe   5      OPC=callq_label         
  vminps %ymm2, %ymm2, %ymm1            #  5     0x13  4      OPC=vminps_ymm_ymm_ymm  
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
