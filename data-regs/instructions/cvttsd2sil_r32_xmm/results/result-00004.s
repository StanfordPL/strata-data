  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm11  #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  vcvttpd2dq %ymm11, %xmm3    #  2     0x5  5      OPC=vcvttpd2dq_xmm_ymm    
  vmovd %xmm3, %ebx           #  3     0xa  4      OPC=vmovd_r32_xmm         
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
