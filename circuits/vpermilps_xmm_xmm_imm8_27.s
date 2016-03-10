  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  movapd %xmm10, %xmm1                            #  2     0x5   5      OPC=movapd_xmm_xmm      
  unpcklps %xmm8, %xmm1                           #  3     0xa   4      OPC=unpcklps_xmm_xmm    
  punpckldq %xmm1, %xmm2                          #  4     0xe   4      OPC=punpckldq_xmm_xmm   
  vmovss %xmm11, %xmm2, %xmm1                     #  5     0x12  5      OPC=vmovss_xmm_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq                
                                                                                                
.size target, .-target
