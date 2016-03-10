  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  punpckldq %xmm4, %xmm7                        #  2     0x5   4      OPC=punpckldq_xmm_xmm  
  movddup %xmm7, %xmm1                          #  3     0x9   4      OPC=movddup_xmm_xmm    
  vmovsldup %xmm2, %xmm2                        #  4     0xd   4      OPC=vmovsldup_xmm_xmm  
  unpckhpd %xmm2, %xmm1                         #  5     0x11  4      OPC=unpckhpd_xmm_xmm   
  retq                                          #  6     0x15  1      OPC=retq               
                                                                                             
.size target, .-target
