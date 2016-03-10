  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm13                   #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  movdqu %xmm13, %xmm4                          #  3     0x9   5      OPC=movdqu_xmm_xmm      
  haddpd %xmm4, %xmm1                           #  4     0xe   4      OPC=haddpd_xmm_xmm      
  movhlps %xmm6, %xmm1                          #  5     0x12  3      OPC=movhlps_xmm_xmm     
  retq                                          #  6     0x15  1      OPC=retq                
                                                                                              
.size target, .-target
