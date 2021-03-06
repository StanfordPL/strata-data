  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm4, %xmm8                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckldq %xmm8, %xmm6, %xmm13               #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpbroadcastq %xmm13, %ymm10                   #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm    
  vmovss %xmm5, %xmm10, %xmm1                   #  5     0x14  4      OPC=vmovss_xmm_xmm_xmm      
  retq                                          #  6     0x18  1      OPC=retq                    
                                                                                                  
.size target, .-target
