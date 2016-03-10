  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vcvtps2dq %ymm2, %ymm7                        #  1     0     4      OPC=vcvtps2dq_ymm_ymm        
  vpunpckhdq %ymm2, %ymm2, %ymm1                #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label              
  addpd %xmm7, %xmm7                            #  4     0xd   4      OPC=addpd_xmm_xmm            
  vunpckhpd %ymm7, %ymm2, %ymm8                 #  5     0x11  4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm8, %ymm1               #  6     0x15  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm12_xmm13           #  7     0x19  5      OPC=callq_label              
  callq .move_64_128_xmm12_xmm13_xmm1           #  8     0x1e  5      OPC=callq_label              
  retq                                          #  9     0x23  1      OPC=retq                     
                                                                                                   
.size target, .-target
