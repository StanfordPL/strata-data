  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label             
  movd %r13d, %xmm1                             #  2     0x5   5      OPC=movd_xmm_r32            
  unpcklps %xmm2, %xmm1                         #  3     0xa   3      OPC=unpcklps_xmm_xmm        
  vpbroadcastd %xmm2, %xmm13                    #  4     0xd   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckldq %xmm13, %xmm1, %xmm1               #  5     0x12  5      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
