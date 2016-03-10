  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  vfnmadd231ss %xmm3, %xmm2, %xmm2                #  1     0     5      OPC=vfnmadd231ss_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label               
  unpcklps %xmm3, %xmm10                          #  3     0xa   4      OPC=unpcklps_xmm_xmm          
  vpbroadcastq %xmm10, %xmm5                      #  4     0xe   5      OPC=vpbroadcastq_xmm_xmm      
  vmovshdup %ymm2, %ymm11                         #  5     0x13  4      OPC=vmovshdup_ymm_ymm         
  vunpckhpd %xmm5, %xmm11, %xmm1                  #  6     0x17  4      OPC=vunpckhpd_xmm_xmm_xmm     
  retq                                            #  7     0x1b  1      OPC=retq                      
                                                                                                      
.size target, .-target
