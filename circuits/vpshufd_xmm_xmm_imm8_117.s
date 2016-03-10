  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovlhps %xmm11, %xmm11, %xmm3                  #  2     0x5   5      OPC=vmovlhps_xmm_xmm_xmm   
  vmovss %xmm3, %xmm2, %xmm8                      #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm     
  vmovshdup %xmm2, %xmm13                         #  4     0xe   4      OPC=vmovshdup_xmm_xmm      
  vunpcklpd %ymm8, %ymm13, %ymm1                  #  5     0x12  5      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
