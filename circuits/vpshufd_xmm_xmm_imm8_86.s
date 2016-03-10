  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label            
  vpmovzxdq %xmm2, %xmm10                       #  2     0x5   5      OPC=vpmovzxdq_xmm_xmm      
  vunpckhps %xmm10, %xmm2, %xmm14               #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  movd %r11d, %xmm2                             #  4     0xf   5      OPC=movd_xmm_r32           
  vpbroadcastd %xmm2, %ymm2                     #  5     0x14  5      OPC=vpbroadcastd_ymm_xmm   
  vunpcklps %xmm2, %xmm14, %xmm1                #  6     0x19  4      OPC=vunpcklps_xmm_xmm_xmm  
  retq                                          #  7     0x1d  1      OPC=retq                   
                                                                                                 
.size target, .-target
