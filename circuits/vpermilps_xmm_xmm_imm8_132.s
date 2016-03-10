  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  movdqu %xmm2, %xmm11              #  1     0     5      OPC=movdqu_xmm_xmm           
  vbroadcastsd %xmm11, %ymm7        #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vunpckhps %xmm2, %xmm7, %xmm11    #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm11, %xmm7, %xmm1  #  4     0xe   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                              #  5     0x13  1      OPC=retq                     
                                                                                       
.size target, .-target
