  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm10          #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm2, %ymm10, %ymm1      #  2     0x5   4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmaxps %xmm2, %xmm2, %xmm6          #  3     0x9   4      OPC=vmaxps_xmm_xmm_xmm     
  callq .move_256_128_ymm2_xmm8_xmm9  #  4     0xd   5      OPC=callq_label            
  unpckhpd %xmm6, %xmm1               #  5     0x12  4      OPC=unpckhpd_xmm_xmm       
  punpcklqdq %xmm9, %xmm1             #  6     0x16  5      OPC=punpcklqdq_xmm_xmm     
  retq                                #  7     0x1b  1      OPC=retq                   
                                                                                       
.size target, .-target
