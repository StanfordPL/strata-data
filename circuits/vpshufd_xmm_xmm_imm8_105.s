  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm6, %xmm5, %xmm7                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsldup %ymm7, %ymm12                       #  3     0x9   4      OPC=vmovsldup_ymm_ymm       
  vaddsd %xmm12, %xmm7, %xmm1                   #  4     0xd   5      OPC=vaddsd_xmm_xmm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label             
  movsd %xmm7, %xmm1                            #  6     0x17  4      OPC=movsd_xmm_xmm           
  retq                                          #  7     0x1b  1      OPC=retq                    
                                                                                                  
.size target, .-target
