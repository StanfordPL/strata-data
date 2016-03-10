  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm2, %xmm2, %xmm1                 #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  pmovsxdq %xmm4, %xmm9                         #  3     0x9   6      OPC=pmovsxdq_xmm_xmm       
  vmovss %xmm9, %xmm1, %xmm1                    #  4     0xf   5      OPC=vmovss_xmm_xmm_xmm     
  retq                                          #  5     0x14  1      OPC=retq                   
                                                                                                 
.size target, .-target
