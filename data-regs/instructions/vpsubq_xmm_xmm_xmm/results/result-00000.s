  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm3_r8_r9  #  1     0     5      OPC=callq_label         
  negq %r8                        #  2     0x5   3      OPC=negq_r64            
  negq %r9                        #  3     0x8   3      OPC=negq_r64            
  callq .move_064_128_r8_r9_xmm3  #  4     0xb   5      OPC=callq_label         
  vpaddq %xmm2, %xmm3, %xmm10     #  5     0x10  4      OPC=vpaddq_xmm_xmm_xmm  
  vmaxpd %ymm10, %ymm10, %ymm1    #  6     0x14  5      OPC=vmaxpd_ymm_ymm_ymm  
  retq                            #  7     0x19  1      OPC=retq                
                                                                                
.size target, .-target
