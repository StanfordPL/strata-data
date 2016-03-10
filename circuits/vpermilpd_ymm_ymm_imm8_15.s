  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vhaddps %xmm10, %xmm2, %xmm6         #  2     0x5   5      OPC=vhaddps_xmm_xmm_xmm      
  vcvtsd2sil %xmm6, %r11d              #  3     0xa   4      OPC=vcvtsd2sil_r32_xmm       
  cvtsi2sdl %r11d, %xmm2               #  4     0xe   5      OPC=cvtsi2sdl_xmm_r32        
  vpunpckhqdq %ymm2, %ymm2, %ymm1      #  5     0x13  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                 #  6     0x17  1      OPC=retq                     
                                                                                          
.size target, .-target
