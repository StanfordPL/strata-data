  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vunpckhpd %ymm2, %ymm2, %ymm9         #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm    
  vbroadcastsd %xmm9, %ymm5             #  2     0x4   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm5, %ymm9, %ymm1       #  3     0x9   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xd   5      OPC=callq_label              
  movlhps %xmm11, %xmm1                 #  5     0x12  4      OPC=movlhps_xmm_xmm          
  retq                                  #  6     0x16  1      OPC=retq                     
                                                                                           
.size target, .-target
