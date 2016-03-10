  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vcvttpd2dq %xmm2, %xmm1             #  1     0     4      OPC=vcvttpd2dq_xmm_xmm     
  callq .move_256_128_ymm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label            
  callq .move_128_064_xmm2_r10_r11    #  3     0x9   5      OPC=callq_label            
  movd %r11d, %xmm7                   #  4     0xe   5      OPC=movd_xmm_r32           
  vunpcklpd %xmm7, %xmm9, %xmm1       #  5     0x13  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                #  6     0x17  1      OPC=retq                   
                                                                                       
.size target, .-target
