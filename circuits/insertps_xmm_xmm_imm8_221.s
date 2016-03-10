  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm7, %xmm8                     #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm  
  vaddss %xmm8, %xmm7, %xmm15                   #  3     0xa   5      OPC=vaddss_xmm_xmm_xmm    
  unpckhpd %xmm15, %xmm1                        #  4     0xf   5      OPC=unpckhpd_xmm_xmm      
  unpckhps %xmm8, %xmm1                         #  5     0x14  4      OPC=unpckhps_xmm_xmm      
  retq                                          #  6     0x18  1      OPC=retq                  
                                                                                                
.size target, .-target
