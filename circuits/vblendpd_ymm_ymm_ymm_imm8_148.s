  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vmovaps %xmm4, %xmm5                          #  2     0x5   4      OPC=vmovaps_xmm_xmm          
  vpunpcklqdq %ymm3, %ymm5, %ymm8               #  3     0x9   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  punpcklqdq %xmm2, %xmm8                       #  4     0xd   5      OPC=punpcklqdq_xmm_xmm       
  vunpckhpd %ymm2, %ymm8, %ymm1                 #  5     0x12  4      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                                          #  6     0x16  1      OPC=retq                     
                                                                                                   
.size target, .-target
