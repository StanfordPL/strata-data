  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm8, %xmm7, %xmm9                   #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vmulps %xmm10, %xmm6, %xmm8                     #  4     0xf   5      OPC=vmulps_xmm_xmm_xmm     
  movdqu %xmm9, %xmm10                            #  5     0x14  5      OPC=movdqu_xmm_xmm         
  haddps %xmm4, %xmm8                             #  6     0x19  5      OPC=haddps_xmm_xmm         
  vunpcklpd %ymm8, %ymm8, %ymm11                  #  7     0x1e  5      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x23  5      OPC=callq_label            
  retq                                            #  9     0x28  1      OPC=retq                   
                                                                                                   
.size target, .-target
