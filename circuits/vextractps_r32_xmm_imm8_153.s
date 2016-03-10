  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm13  #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  vmovshdup %xmm13, %xmm0     #  2     0x5   5      OPC=vmovshdup_xmm_xmm     
  vmovsldup %xmm0, %xmm7      #  3     0xa   4      OPC=vmovsldup_xmm_xmm     
  movd %xmm7, %ebx            #  4     0xe   4      OPC=movd_r32_xmm          
  retq                        #  5     0x12  1      OPC=retq                  
                                                                              
.size target, .-target
