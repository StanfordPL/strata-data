  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm10_xmm11           #  2     0x5   5      OPC=callq_label            
  unpcklps %xmm11, %xmm7                        #  3     0xa   4      OPC=unpcklps_xmm_xmm       
  movaps %xmm7, %xmm5                           #  4     0xe   3      OPC=movaps_xmm_xmm         
  vunpcklpd %xmm10, %xmm5, %xmm1                #  5     0x11  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
