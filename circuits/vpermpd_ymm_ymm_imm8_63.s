  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm1             #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm11, %xmm11, %xmm6       #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vunpckhpd %ymm1, %ymm2, %ymm1         #  4     0xf   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movaps %xmm6, %xmm1                   #  5     0x13  3      OPC=movaps_xmm_xmm         
  retq                                  #  6     0x16  1      OPC=retq                   
                                                                                         
.size target, .-target
