  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  pmovzxdq %xmm1, %xmm1            #  1     0     5      OPC=pmovzxdq_xmm_xmm         
  vbroadcastsd %xmm2, %ymm12       #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %xmm1, %xmm2, %xmm6  #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vunpckhps %xmm12, %xmm6, %xmm4   #  4     0xe   5      OPC=vunpckhps_xmm_xmm_xmm    
  orps %xmm4, %xmm1                #  5     0x13  3      OPC=orps_xmm_xmm             
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
