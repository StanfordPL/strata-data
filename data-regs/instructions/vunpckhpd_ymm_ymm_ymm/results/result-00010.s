  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vrcpss %xmm10, %xmm3, %xmm9           #  2     0x5   5      OPC=vrcpss_xmm_xmm_xmm  
  punpckhqdq %xmm9, %xmm10              #  3     0xa   5      OPC=punpckhqdq_xmm_xmm  
  callq .move_256_128_ymm3_xmm8_xmm9    #  4     0xf   5      OPC=callq_label         
  unpckhpd %xmm9, %xmm11                #  5     0x14  5      OPC=unpckhpd_xmm_xmm    
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x19  5      OPC=callq_label         
  retq                                  #  7     0x1e  1      OPC=retq                
                                                                                      
.size target, .-target
