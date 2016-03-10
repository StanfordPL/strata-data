  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vbroadcastss %xmm2, %ymm7         #  1     0     5      OPC=vbroadcastss_ymm_xmm     
  vpunpckhqdq %xmm7, %xmm2, %xmm8   #  2     0x5   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  punpckldq %xmm8, %xmm2            #  3     0x9   5      OPC=punpckldq_xmm_xmm        
  vpunpckhqdq %xmm8, %xmm2, %xmm15  #  4     0xe   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movupd %xmm15, %xmm1              #  5     0x13  5      OPC=movupd_xmm_xmm           
  retq                              #  6     0x18  1      OPC=retq                     
                                                                                       
.size target, .-target
