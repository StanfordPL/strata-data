  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm10_xmm11           #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label              
  vpunpcklqdq %xmm6, %xmm10, %xmm13             #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vunpckhpd %xmm4, %xmm3, %xmm1                 #  4     0xe   4      OPC=vunpckhpd_xmm_xmm_xmm    
  punpckhdq %xmm13, %xmm1                       #  5     0x12  5      OPC=punpckhdq_xmm_xmm        
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
