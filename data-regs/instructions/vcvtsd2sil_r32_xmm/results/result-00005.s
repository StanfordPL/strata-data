  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm11  #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  vcvtpd2dq %ymm11, %xmm6     #  2     0x5  5      OPC=vcvtpd2dq_xmm_ymm     
  movd %xmm6, %ebx            #  3     0xa  4      OPC=movd_r32_xmm          
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
