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
  vunpckhpd %ymm2, %ymm1, %ymm15        #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm  
  unpckhpd %xmm15, %xmm1                #  4     0xe   5      OPC=unpckhpd_xmm_xmm       
  retq                                  #  5     0x13  1      OPC=retq                   
                                                                                         
.size target, .-target
