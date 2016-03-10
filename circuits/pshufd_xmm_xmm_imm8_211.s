  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  movddup %xmm2, %xmm1                            #  1     0     4      OPC=movddup_xmm_xmm         
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vpunpckldq %xmm1, %xmm11, %xmm4                 #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13             #  4     0xd   5      OPC=callq_label             
  unpcklps %xmm13, %xmm1                          #  5     0x12  4      OPC=unpcklps_xmm_xmm        
  movsd %xmm4, %xmm1                              #  6     0x16  4      OPC=movsd_xmm_xmm           
  retq                                            #  7     0x1a  1      OPC=retq                    
                                                                                                    
.size target, .-target
