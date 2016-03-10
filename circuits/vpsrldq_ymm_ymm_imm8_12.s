  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vunpcklps %xmm11, %xmm10, %xmm7                 #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm   
  vpaddd %xmm9, %xmm10, %xmm9                     #  3     0xa   5      OPC=vpaddd_xmm_xmm_xmm      
  vunpckhps %ymm9, %ymm2, %ymm15                  #  4     0xf   5      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckhdq %ymm7, %ymm15, %ymm1                 #  5     0x14  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
