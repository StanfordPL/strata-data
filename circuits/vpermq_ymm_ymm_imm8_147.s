  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label              
  pmovzxwd %xmm12, %xmm10               #  3     0xa   6      OPC=pmovzxwd_xmm_xmm         
  vmovhlps %xmm12, %xmm2, %xmm13        #  4     0x10  5      OPC=vmovhlps_xmm_xmm_xmm     
  vunpckhpd %xmm10, %xmm9, %xmm12       #  5     0x15  5      OPC=vunpckhpd_xmm_xmm_xmm    
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x1a  5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm1, %ymm1       #  7     0x1f  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                  #  8     0x23  1      OPC=retq                     
                                                                                           
.size target, .-target
