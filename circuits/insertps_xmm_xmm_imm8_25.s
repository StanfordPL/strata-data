  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  movshdup %xmm6, %xmm3                         #  2     0x5   4      OPC=movshdup_xmm_xmm        
  vpunpckldq %xmm2, %xmm3, %xmm3                #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movddup %xmm3, %xmm1                          #  4     0xd   4      OPC=movddup_xmm_xmm         
  punpcklqdq %xmm6, %xmm1                       #  5     0x11  4      OPC=punpcklqdq_xmm_xmm      
  retq                                          #  6     0x15  1      OPC=retq                    
                                                                                                  
.size target, .-target
