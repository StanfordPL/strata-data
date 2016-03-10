  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm10, %ymm6                      #  2     0x5   5      OPC=vbroadcastss_ymm_xmm   
  vmovss %xmm6, %xmm2, %xmm8                      #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label            
  vunpcklps %xmm11, %xmm10, %xmm12                #  5     0x13  5      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklps %xmm12, %xmm1                          #  6     0x18  4      OPC=unpcklps_xmm_xmm       
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
