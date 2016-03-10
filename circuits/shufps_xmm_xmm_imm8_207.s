  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  movshdup %xmm1, %xmm0                           #  1     0     4      OPC=movshdup_xmm_xmm      
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x4   5      OPC=callq_label           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label           
  vpmovsxdq %xmm4, %xmm6                          #  4     0xe   5      OPC=vpmovsxdq_xmm_xmm     
  vmovhlps %xmm0, %xmm11, %xmm13                  #  5     0x13  4      OPC=vmovhlps_xmm_xmm_xmm  
  vminps %ymm13, %ymm13, %ymm5                    #  6     0x17  5      OPC=vminps_ymm_ymm_ymm    
  movddup %xmm5, %xmm4                            #  7     0x1c  4      OPC=movddup_xmm_xmm       
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  8     0x20  5      OPC=callq_label           
  retq                                            #  9     0x25  1      OPC=retq                  
                                                                                                  
.size target, .-target
