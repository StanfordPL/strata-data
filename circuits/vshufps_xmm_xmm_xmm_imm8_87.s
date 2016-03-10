  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm3, %xmm3, %xmm1                  #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovss %xmm11, %xmm2, %xmm2                     #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm      
  movsd %xmm2, %xmm1                              #  4     0xe   4      OPC=movsd_xmm_xmm           
  retq                                            #  5     0x12  1      OPC=retq                    
                                                                                                    
.size target, .-target
