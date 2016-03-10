  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  callq .move_64_128_xmm12_xmm13_xmm2   #  2     0x5   5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm2, %ymm15      #  3     0xa   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vfmadd132ss %xmm15, %xmm15, %xmm12    #  4     0xe   5      OPC=vfmadd132ss_xmm_xmm_xmm  
  movdqa %xmm12, %xmm15                 #  5     0x13  5      OPC=movdqa_xmm_xmm           
  vunpckhpd %ymm15, %ymm2, %ymm1        #  6     0x18  5      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target
