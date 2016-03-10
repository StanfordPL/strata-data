  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovss %xmm8, %xmm3, %xmm1                      #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm       
  vunpckhps %xmm3, %xmm1, %xmm14                  #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhdq %xmm14, %xmm2, %xmm6                 #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpcklqdq %xmm6, %xmm1, %xmm1                 #  5     0x13  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq                     
                                                                                                     
.size target, .-target
