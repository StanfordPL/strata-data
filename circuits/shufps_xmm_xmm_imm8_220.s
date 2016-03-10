  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vhsubpd %xmm11, %xmm11, %xmm4                   #  2     0x5   5      OPC=vhsubpd_xmm_xmm_xmm       
  vpbroadcastq %xmm2, %xmm13                      #  3     0xa   5      OPC=vpbroadcastq_xmm_xmm      
  vunpckhps %xmm2, %xmm13, %xmm0                  #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm     
  vfnmsub231ss %xmm8, %xmm1, %xmm2                #  5     0x13  5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  vunpckhps %ymm2, %ymm0, %ymm10                  #  6     0x18  4      OPC=vunpckhps_ymm_ymm_ymm     
  vunpckhps %ymm0, %ymm10, %ymm11                 #  7     0x1c  4      OPC=vunpckhps_ymm_ymm_ymm     
  movaps %xmm4, %xmm9                             #  8     0x20  4      OPC=movaps_xmm_xmm            
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  9     0x24  5      OPC=callq_label               
  retq                                            #  10    0x29  1      OPC=retq                      
                                                                                                      
.size target, .-target
