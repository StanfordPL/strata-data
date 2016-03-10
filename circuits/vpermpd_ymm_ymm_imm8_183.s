  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  punpckhqdq %xmm8, %xmm2             #  2     0x5   5      OPC=punpckhqdq_xmm_xmm       
  vunpckhpd %xmm8, %xmm9, %xmm13      #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm    
  vbroadcastsd %xmm13, %ymm9          #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm2, %ymm9, %ymm1     #  5     0x14  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                #  6     0x18  1      OPC=retq                     
                                                                                         
.size target, .-target
