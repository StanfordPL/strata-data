  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vandpd %xmm1, %xmm1, %xmm9           #  1     0     4      OPC=vandpd_xmm_xmm_xmm      
  vpunpckhdq %xmm2, %xmm9, %xmm0       #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0x8   5      OPC=callq_label             
  vpunpckldq %xmm13, %xmm0, %xmm9      #  4     0xd   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhpd %xmm2, %xmm9, %xmm9        #  5     0x12  4      OPC=vunpckhpd_xmm_xmm_xmm   
  movddup %xmm2, %xmm8                 #  6     0x16  5      OPC=movddup_xmm_xmm         
  callq .move_64_128_xmm8_xmm9_xmm1    #  7     0x1b  5      OPC=callq_label             
  retq                                 #  8     0x20  1      OPC=retq                    
                                                                                         
.size target, .-target
