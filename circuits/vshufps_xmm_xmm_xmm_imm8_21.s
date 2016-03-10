  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  movsldup %xmm3, %xmm14                        #  1     0     5      OPC=movsldup_xmm_xmm        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm14, %xmm3, %xmm1               #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpbroadcastd %xmm5, %ymm10                    #  4     0xf   5      OPC=vpbroadcastd_ymm_xmm    
  movsd %xmm10, %xmm1                           #  5     0x14  5      OPC=movsd_xmm_xmm           
  retq                                          #  6     0x19  1      OPC=retq                    
                                                                                                  
.size target, .-target
