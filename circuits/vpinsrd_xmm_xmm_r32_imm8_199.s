  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9               #  1     0     5      OPC=callq_label             
  vmovshdup %xmm2, %xmm10                         #  2     0x5   4      OPC=vmovshdup_xmm_xmm       
  movd %ebx, %xmm12                               #  3     0x9   5      OPC=movd_xmm_r32            
  vpunpckldq %xmm12, %xmm10, %xmm3                #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_64_xmm3_xmm10_xmm11             #  5     0x13  5      OPC=callq_label             
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  6     0x18  5      OPC=callq_label             
  vunpcklps %xmm3, %xmm2, %xmm1                   #  7     0x1d  4      OPC=vunpcklps_xmm_xmm_xmm   
  retq                                            #  8     0x21  1      OPC=retq                    
                                                                                                    
.size target, .-target
