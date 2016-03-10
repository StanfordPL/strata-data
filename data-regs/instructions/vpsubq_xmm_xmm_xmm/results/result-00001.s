  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vcvtps2dq %xmm2, %xmm4            #  1     0     4      OPC=vcvtps2dq_xmm_xmm       
  vpunpckldq %ymm4, %ymm4, %ymm9    #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  callq .move_128_064_xmm3_r10_r11  #  3     0x8   5      OPC=callq_label             
  callq .move_128_064_xmm2_r8_r9    #  4     0xd   5      OPC=callq_label             
  vsubps %ymm4, %ymm9, %ymm1        #  5     0x12  4      OPC=vsubps_ymm_ymm_ymm      
  subq %r11, %r9                    #  6     0x16  3      OPC=subq_r64_r64            
  subq %r10, %r8                    #  7     0x19  3      OPC=subq_r64_r64            
  callq .move_064_128_r8_r9_xmm1    #  8     0x1c  5      OPC=callq_label             
  retq                              #  9     0x21  1      OPC=retq                    
                                                                                      
.size target, .-target
