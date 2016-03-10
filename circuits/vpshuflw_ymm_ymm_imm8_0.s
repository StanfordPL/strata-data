  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpbroadcastw %xmm2, %ymm5             #  2     0x5   5      OPC=vpbroadcastw_ymm_xmm   
  vpbroadcastw %xmm11, %ymm13           #  3     0xa   5      OPC=vpbroadcastw_ymm_xmm   
  movdqu %xmm5, %xmm13                  #  4     0xf   5      OPC=movdqu_xmm_xmm         
  vunpckhpd %ymm2, %ymm13, %ymm1        #  5     0x14  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                  #  6     0x18  1      OPC=retq                   
                                                                                         
.size target, .-target
