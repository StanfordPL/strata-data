  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9   #  1     0     5      OPC=callq_label              
  vzeroall                         #  2     0x5   3      OPC=vzeroall                 
  callq .move_064_128_r8_r9_xmm3   #  3     0x8   5      OPC=callq_label              
  movd %ebx, %xmm12                #  4     0xd   5      OPC=movd_xmm_r32             
  movd %r9d, %xmm9                 #  5     0x12  5      OPC=movd_xmm_r32             
  vpunpckldq %ymm12, %ymm9, %ymm4  #  6     0x17  5      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpcklqdq %xmm4, %xmm3, %xmm1  #  7     0x1c  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  8     0x20  1      OPC=retq                     
                                                                                      
.size target, .-target
