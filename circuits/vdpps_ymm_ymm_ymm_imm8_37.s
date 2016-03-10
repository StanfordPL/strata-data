  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vmulps %ymm3, %ymm2, %ymm2                      #  1     0     4      OPC=vmulps_ymm_ymm_ymm       
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vsqrtps %xmm9, %xmm7                            #  3     0x9   5      OPC=vsqrtps_xmm_xmm          
  vpunpckldq %ymm7, %ymm2, %ymm15                 #  4     0xe   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckhqdq %ymm15, %ymm15, %ymm12              #  5     0x12  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vcvtpd2ps %xmm8, %xmm10                         #  6     0x17  5      OPC=vcvtpd2ps_xmm_xmm        
  vaddps %ymm10, %ymm12, %ymm1                    #  7     0x1c  5      OPC=vaddps_ymm_ymm_ymm       
  retq                                            #  8     0x21  1      OPC=retq                     
                                                                                                     
.size target, .-target
