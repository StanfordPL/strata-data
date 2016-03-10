  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm11, %ymm1            #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vunpckhpd %ymm1, %ymm2, %ymm13        #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm13, %ymm1      #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movhlps %xmm10, %xmm1                 #  5     0x12  4      OPC=movhlps_xmm_xmm          
  retq                                  #  6     0x16  1      OPC=retq                     
                                                                                           
.size target, .-target
