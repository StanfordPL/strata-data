  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vorpd %xmm2, %xmm2, %xmm13            #  1     0     4      OPC=vorpd_xmm_xmm_xmm     
  callq .move_256_128_ymm2_xmm8_xmm9    #  2     0x4   5      OPC=callq_label           
  vmovhlps %xmm8, %xmm9, %xmm12         #  3     0x9   5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm3  #  4     0xe   5      OPC=callq_label           
  vmovq %xmm12, %xmm14                  #  5     0x13  5      OPC=vmovq_xmm_xmm         
  vpor %ymm14, %ymm3, %ymm1             #  6     0x18  5      OPC=vpor_ymm_ymm_ymm      
  retq                                  #  7     0x1d  1      OPC=retq                  
                                                                                        
.size target, .-target
