  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9             #  1     0     5      OPC=callq_label             
  movss %xmm8, %xmm1                            #  2     0x5   5      OPC=movss_xmm_xmm           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label             
  vpunpckhdq %xmm7, %xmm2, %xmm0                #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmulps %xmm1, %xmm7, %xmm10                   #  5     0x13  4      OPC=vmulps_xmm_xmm_xmm      
  vmulps %xmm10, %xmm8, %xmm11                  #  6     0x17  5      OPC=vmulps_xmm_xmm_xmm      
  vpunpckhdq %ymm11, %ymm0, %ymm7               #  7     0x1c  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x21  5      OPC=callq_label             
  retq                                          #  9     0x26  1      OPC=retq                    
                                                                                                  
.size target, .-target
