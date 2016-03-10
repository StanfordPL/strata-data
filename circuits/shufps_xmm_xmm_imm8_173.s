  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  punpckldq %xmm11, %xmm9                         #  2     0x5   5      OPC=punpckldq_xmm_xmm  
  movsldup %xmm2, %xmm1                           #  3     0xa   4      OPC=movsldup_xmm_xmm   
  movsd %xmm9, %xmm1                              #  4     0xe   5      OPC=movsd_xmm_xmm      
  retq                                            #  5     0x13  1      OPC=retq               
                                                                                               
.size target, .-target
