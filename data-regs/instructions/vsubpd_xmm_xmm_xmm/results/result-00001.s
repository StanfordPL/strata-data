  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmaxps %xmm2, %xmm2, %xmm8                    #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  vmovdqa %ymm8, %ymm1                          #  2     0x4   5      OPC=vmovdqa_ymm_ymm     
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label         
  vxorps %xmm4, %xmm3, %xmm6                    #  4     0xe   4      OPC=vxorps_xmm_xmm_xmm  
  pxor %xmm4, %xmm6                             #  5     0x12  4      OPC=pxor_xmm_xmm        
  vsubpd %ymm6, %ymm1, %ymm1                    #  6     0x16  4      OPC=vsubpd_ymm_ymm_ymm  
  retq                                          #  7     0x1a  1      OPC=retq                
                                                                                              
.size target, .-target
