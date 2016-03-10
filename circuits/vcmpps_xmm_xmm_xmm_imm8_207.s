  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vzeroall                          #  1     0     3      OPC=vzeroall                  
  vfnmsub231ps %xmm2, %xmm3, %xmm7  #  2     0x3   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  pmovsxdq %xmm7, %xmm12            #  3     0x8   6      OPC=pmovsxdq_xmm_xmm          
  movshdup %xmm12, %xmm1            #  4     0xe   5      OPC=movshdup_xmm_xmm          
  retq                              #  5     0x13  1      OPC=retq                      
                                                                                        
.size target, .-target
