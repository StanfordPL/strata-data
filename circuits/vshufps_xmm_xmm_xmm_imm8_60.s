  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm7, %xmm2, %xmm12               #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpbroadcastd %xmm3, %ymm9                     #  3     0x9   5      OPC=vpbroadcastd_ymm_xmm    
  unpckhps %xmm9, %xmm3                         #  4     0xe   4      OPC=unpckhps_xmm_xmm        
  vmovsd %xmm12, %xmm3, %xmm1                   #  5     0x12  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
