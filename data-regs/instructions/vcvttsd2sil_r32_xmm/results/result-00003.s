  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm12  #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vcvttpd2dq %ymm12, %xmm0    #  2     0x5   5      OPC=vcvttpd2dq_xmm_ymm    
  vmovupd %xmm0, %xmm13       #  3     0xa   4      OPC=vmovupd_xmm_xmm       
  movd %xmm13, %ebx           #  4     0xe   5      OPC=movd_r32_xmm          
  retq                        #  5     0x13  1      OPC=retq                  
                                                                              
.size target, .-target
