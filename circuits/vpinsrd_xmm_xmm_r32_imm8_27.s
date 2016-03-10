  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r12_r13     #  1     0     5      OPC=callq_label            
  vzeroall                             #  2     0x5   3      OPC=vzeroall               
  movd %ebx, %xmm13                    #  3     0x8   5      OPC=movd_xmm_r32           
  callq .move_064_128_r12_r13_xmm3     #  4     0xd   5      OPC=callq_label            
  callq .move_128_64_xmm3_xmm10_xmm11  #  5     0x12  5      OPC=callq_label            
  vunpcklps %ymm13, %ymm11, %ymm11     #  6     0x17  5      OPC=vunpcklps_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm2  #  7     0x1c  5      OPC=callq_label            
  vpor %xmm2, %xmm1, %xmm1             #  8     0x21  4      OPC=vpor_xmm_xmm_xmm       
  retq                                 #  9     0x25  1      OPC=retq                   
                                                                                        
.size target, .-target
