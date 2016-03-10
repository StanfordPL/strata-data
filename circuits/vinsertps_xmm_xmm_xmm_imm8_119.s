  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vcvtsd2ss %xmm9, %xmm3, %xmm1                   #  2     0x5   5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  cvtps2pd %xmm8, %xmm6                           #  3     0xa   4      OPC=cvtps2pd_xmm_xmm       
  pmovsxwq %xmm6, %xmm6                           #  4     0xe   5      OPC=pmovsxwq_xmm_xmm       
  vunpcklpd %xmm1, %xmm6, %xmm6                   #  5     0x13  4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovupd %ymm6, %ymm1                            #  6     0x17  4      OPC=vmovupd_ymm_ymm        
  retq                                            #  7     0x1b  1      OPC=retq                   
                                                                                                   
.size target, .-target
