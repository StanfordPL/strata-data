  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovss %xmm9, %xmm10, %xmm7                     #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm       
  vfmsub213sd %xmm2, %xmm8, %xmm9                 #  3     0xa   5      OPC=vfmsub213sd_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm3              #  4     0xf   5      OPC=callq_label              
  vunpcklps %ymm3, %ymm7, %ymm10                  #  5     0x14  4      OPC=vunpcklps_ymm_ymm_ymm    
  movaps %xmm2, %xmm11                            #  6     0x18  4      OPC=movaps_xmm_xmm           
  callq .move_64_128_xmm10_xmm11_xmm1             #  7     0x1c  5      OPC=callq_label              
  retq                                            #  8     0x21  1      OPC=retq                     
                                                                                                     
.size target, .-target
