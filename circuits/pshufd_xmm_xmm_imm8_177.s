  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm10, %ymm12                     #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vunpcklps %xmm12, %xmm11, %xmm6                 #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm  
  vhsubpd %ymm6, %ymm6, %ymm11                    #  4     0xf   4      OPC=vhsubpd_ymm_ymm_ymm    
  vunpcklps %xmm2, %xmm9, %xmm10                  #  5     0x13  4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  6     0x17  5      OPC=callq_label            
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
