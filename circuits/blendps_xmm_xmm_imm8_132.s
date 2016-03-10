  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movddup %xmm7, %xmm12                         #  2     0x5   5      OPC=movddup_xmm_xmm    
  punpckhdq %xmm12, %xmm2                       #  3     0xa   5      OPC=punpckhdq_xmm_xmm  
  unpcklpd %xmm2, %xmm1                         #  4     0xf   4      OPC=unpcklpd_xmm_xmm   
  retq                                          #  5     0x13  1      OPC=retq               
                                                                                             
.size target, .-target
