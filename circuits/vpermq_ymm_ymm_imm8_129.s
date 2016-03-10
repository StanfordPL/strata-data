  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm12, %ymm3           #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  movdqu %xmm13, %xmm3                 #  3     0xa   5      OPC=movdqu_xmm_xmm         
  vunpcklpd %ymm2, %ymm3, %ymm1        #  4     0xf   4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
