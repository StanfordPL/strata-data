  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                      
.target:                                #        0     0      OPC=<label>                 
  vpunpckldq %xmm1, %xmm1, %xmm13       #  1     0     4      OPC=vpunpckldq_xmm_xmm_xmm  
  vminpd %xmm13, %xmm13, %xmm12         #  2     0x4   5      OPC=vminpd_xmm_xmm_xmm      
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x9   5      OPC=callq_label             
  callq .move_128_064_xmm1_r8_r9        #  4     0xe   5      OPC=callq_label             
  callq .move_032_064_r8d_r9d_rbx       #  5     0x13  5      OPC=callq_label             
  retq                                  #  6     0x18  1      OPC=retq                    
                                                                                          
.size target, .-target
