  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vfnmsub132ps %xmm3, %xmm11, %xmm11              #  2     0x5   5      OPC=vfnmsub132ps_xmm_xmm_xmm  
  vpor %ymm3, %ymm3, %ymm13                       #  3     0xa   4      OPC=vpor_ymm_ymm_ymm          
  vaddps %xmm13, %xmm11, %xmm6                    #  4     0xe   5      OPC=vaddps_xmm_xmm_xmm        
  movss %xmm6, %xmm2                              #  5     0x13  4      OPC=movss_xmm_xmm             
  vunpckhps %ymm3, %ymm2, %ymm1                   #  6     0x17  4      OPC=vunpckhps_ymm_ymm_ymm     
  retq                                            #  7     0x1b  1      OPC=retq                      
                                                                                                      
.size target, .-target
