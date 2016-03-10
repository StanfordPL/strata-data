  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmovd %ebx, %xmm7                             #  2     0x5   4      OPC=vmovd_xmm_r32       
  vxorpd %ymm5, %ymm5, %ymm0                    #  3     0x9   4      OPC=vxorpd_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  4     0xd   5      OPC=callq_label         
  vpsubq %xmm0, %xmm3, %xmm1                    #  5     0x12  4      OPC=vpsubq_xmm_xmm_xmm  
  retq                                          #  6     0x16  1      OPC=retq                
                                                                                              
.size target, .-target
