  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vmovq %xmm1, %xmm3                              #  1     0     4      OPC=vmovq_xmm_xmm       
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  vmulpd %xmm2, %xmm1, %xmm6                      #  3     0x9   4      OPC=vmulpd_xmm_xmm_xmm  
  pmovsxdq %xmm11, %xmm1                          #  4     0xd   6      OPC=pmovsxdq_xmm_xmm    
  haddpd %xmm6, %xmm1                             #  5     0x13  4      OPC=haddpd_xmm_xmm      
  retq                                            #  6     0x17  1      OPC=retq                
                                                                                                
.size target, .-target
