  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1  #  2     0x5   5      OPC=callq_label            
  vmovshdup %xmm1, %xmm4          #  3     0xa   4      OPC=vmovshdup_xmm_xmm      
  vunpcklpd %ymm4, %ymm4, %ymm13  #  4     0xe   4      OPC=vunpcklpd_ymm_ymm_ymm  
  vmaxss %xmm4, %xmm13, %xmm9     #  5     0x12  4      OPC=vmaxss_xmm_xmm_xmm     
  vmovhlps %xmm2, %xmm9, %xmm1    #  6     0x16  4      OPC=vmovhlps_xmm_xmm_xmm   
  retq                            #  7     0x1a  1      OPC=retq                   
                                                                                   
.size target, .-target
