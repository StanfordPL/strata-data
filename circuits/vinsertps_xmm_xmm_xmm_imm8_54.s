  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vmovlhps %xmm3, %xmm7, %xmm10                 #  2     0x5   4      OPC=vmovlhps_xmm_xmm_xmm    
  vcvttpd2dq %ymm10, %xmm3                      #  3     0x9   5      OPC=vcvttpd2dq_xmm_ymm      
  vunpckhps %ymm10, %ymm3, %ymm0                #  4     0xe   5      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %xmm0, %xmm4, %xmm1                #  5     0x13  4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
