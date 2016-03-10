  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vaddps %xmm8, %xmm1, %xmm12                     #  2     0x5   5      OPC=vaddps_xmm_xmm_xmm  
  vmaxps %xmm12, %xmm12, %xmm2                    #  3     0xa   5      OPC=vmaxps_xmm_xmm_xmm  
  movss %xmm2, %xmm1                              #  4     0xf   4      OPC=movss_xmm_xmm       
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
