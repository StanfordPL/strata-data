  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vbroadcastss %xmm10, %ymm14                     #  2     0x5   5      OPC=vbroadcastss_ymm_xmm    
  vpunpckldq %xmm14, %xmm2, %xmm10                #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vbroadcastss %xmm8, %ymm13                      #  4     0xf   5      OPC=vbroadcastss_ymm_xmm    
  movss %xmm9, %xmm13                             #  5     0x14  5      OPC=movss_xmm_xmm           
  vunpcklps %xmm10, %xmm13, %xmm1                 #  6     0x19  5      OPC=vunpcklps_xmm_xmm_xmm   
  retq                                            #  7     0x1e  1      OPC=retq                    
                                                                                                    
.size target, .-target
