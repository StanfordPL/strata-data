  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  unpcklpd %xmm9, %xmm8                           #  2     0x5   5      OPC=unpcklpd_xmm_xmm       
  vunpcklpd %xmm11, %xmm2, %xmm9                  #  3     0xa   5      OPC=vunpcklpd_xmm_xmm_xmm  
  movsd %xmm10, %xmm9                             #  4     0xf   5      OPC=movsd_xmm_xmm          
  callq .move_128_256_xmm8_xmm9_ymm1              #  5     0x14  5      OPC=callq_label            
  retq                                            #  6     0x19  1      OPC=retq                   
                                                                                                   
.size target, .-target
