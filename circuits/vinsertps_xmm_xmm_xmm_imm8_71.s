  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vandnpd %xmm7, %xmm4, %xmm13                  #  2     0x5   4      OPC=vandnpd_xmm_xmm_xmm    
  vunpckhps %xmm2, %xmm13, %xmm9                #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpckhps %xmm9, %xmm4, %xmm1                 #  4     0xd   5      OPC=vunpckhps_xmm_xmm_xmm  
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target
