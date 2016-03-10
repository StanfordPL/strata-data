  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vhaddpd %xmm8, %xmm11, %xmm1                    #  2     0x5   5      OPC=vhaddpd_xmm_xmm_xmm    
  vsqrtpd %ymm1, %ymm11                           #  3     0xa   4      OPC=vsqrtpd_ymm_ymm        
  vmovlhps %xmm10, %xmm11, %xmm6                  #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm   
  vunpckhps %xmm6, %xmm1, %xmm15                  #  5     0x13  4      OPC=vunpckhps_xmm_xmm_xmm  
  vphaddd %xmm11, %xmm1, %xmm1                    #  6     0x17  5      OPC=vphaddd_xmm_xmm_xmm    
  unpcklpd %xmm15, %xmm1                          #  7     0x1c  5      OPC=unpcklpd_xmm_xmm       
  retq                                            #  8     0x21  1      OPC=retq                   
                                                                                                   
.size target, .-target
