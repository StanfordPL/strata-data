  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  vmulps %xmm9, %xmm5, %xmm5                      #  3     0xa   5      OPC=vmulps_xmm_xmm_xmm  
  rcpss %xmm10, %xmm11                            #  4     0xf   5      OPC=rcpss_xmm_xmm       
  movshdup %xmm11, %xmm1                          #  5     0x14  5      OPC=movshdup_xmm_xmm    
  addss %xmm5, %xmm1                              #  6     0x19  4      OPC=addss_xmm_xmm       
  retq                                            #  7     0x1d  1      OPC=retq                
                                                                                                
.size target, .-target
