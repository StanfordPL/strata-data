  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm5, %xmm6, %xmm11               #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vhsubpd %ymm11, %ymm11, %ymm13                #  3     0x9   5      OPC=vhsubpd_ymm_ymm_ymm     
  vpmovsxbq %xmm6, %ymm8                        #  4     0xe   5      OPC=vpmovsxbq_ymm_xmm       
  vmovhlps %xmm13, %xmm8, %xmm10                #  5     0x13  5      OPC=vmovhlps_xmm_xmm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm1           #  6     0x18  5      OPC=callq_label             
  retq                                          #  7     0x1d  1      OPC=retq                    
                                                                                                  
.size target, .-target
