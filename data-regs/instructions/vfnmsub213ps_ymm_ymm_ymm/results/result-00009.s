  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vfnmsub231ps %ymm1, %ymm2, %ymm3  #  1     0     5      OPC=vfnmsub231ps_ymm_ymm_ymm  
  vpmovzxdq %xmm2, %xmm2            #  2     0x5   5      OPC=vpmovzxdq_xmm_xmm         
  vcvtpd2dq %ymm2, %xmm10           #  3     0xa   4      OPC=vcvtpd2dq_xmm_ymm         
  vsubps %ymm10, %ymm3, %ymm1       #  4     0xe   5      OPC=vsubps_ymm_ymm_ymm        
  retq                              #  5     0x13  1      OPC=retq                      
                                                                                        
.size target, .-target
