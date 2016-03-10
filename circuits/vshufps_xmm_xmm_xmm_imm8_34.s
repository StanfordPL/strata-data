  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vunpckhps %xmm3, %xmm2, %xmm1                   #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm   
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  punpckldq %xmm8, %xmm2                          #  3     0x9   5      OPC=punpckldq_xmm_xmm       
  vpunpckldq %xmm2, %xmm1, %xmm1                  #  4     0xe   4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                            #  5     0x12  1      OPC=retq                    
                                                                                                    
.size target, .-target
