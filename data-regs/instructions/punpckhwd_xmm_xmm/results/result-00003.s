  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  callq .move_128_64_xmm2_xmm12_xmm13             #  2     0x5   5      OPC=callq_label        
  unpckhpd %xmm10, %xmm2                          #  3     0xa   5      OPC=unpckhpd_xmm_xmm   
  movlhps %xmm11, %xmm13                          #  4     0xf   4      OPC=movlhps_xmm_xmm    
  punpckhdq %xmm13, %xmm1                         #  5     0x13  5      OPC=punpckhdq_xmm_xmm  
  punpcklwd %xmm2, %xmm1                          #  6     0x18  4      OPC=punpcklwd_xmm_xmm  
  retq                                            #  7     0x1c  1      OPC=retq               
                                                                                               
.size target, .-target
