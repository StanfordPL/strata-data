  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_eax_edx_r8d_r9d        #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  vcvtsi2ssl %r8d, %xmm3, %xmm1                   #  3     0xa   5      OPC=vcvtsi2ssl_xmm_xmm_r32  
  callq .move_r9b_to_byte_8_of_ymm1               #  4     0xf   5      OPC=callq_label             
  movss %xmm9, %xmm1                              #  5     0x14  5      OPC=movss_xmm_xmm           
  unpcklps %xmm3, %xmm2                           #  6     0x19  3      OPC=unpcklps_xmm_xmm        
  punpckldq %xmm2, %xmm1                          #  7     0x1c  4      OPC=punpckldq_xmm_xmm       
  retq                                            #  8     0x20  1      OPC=retq                    
                                                                                                    
.size target, .-target
