  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  vunpcklpd %xmm8, %xmm8, %xmm14       #  2     0x5   5      OPC=vunpcklpd_xmm_xmm_xmm  
  vcvttps2dq %ymm14, %ymm8             #  3     0xa   5      OPC=vcvttps2dq_ymm_ymm     
  callq .move_128_256_xmm8_xmm9_ymm1   #  4     0xf   5      OPC=callq_label            
  callq .move_128_64_xmm1_xmm12_xmm13  #  5     0x14  5      OPC=callq_label            
  movd %xmm13, %ebx                    #  6     0x19  5      OPC=movd_r32_xmm           
  retq                                 #  7     0x1e  1      OPC=retq                   
                                                                                        
.size target, .-target
