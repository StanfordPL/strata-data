  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vcvtps2pd %xmm3, %ymm8                #  1     0     4      OPC=vcvtps2pd_ymm_xmm        
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  vandnpd %xmm8, %xmm12, %xmm4          #  3     0x9   5      OPC=vandnpd_xmm_xmm_xmm      
  unpckhpd %xmm3, %xmm3                 #  4     0xe   4      OPC=unpckhpd_xmm_xmm         
  vunpckhpd %ymm4, %ymm2, %ymm15        #  5     0x12  4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm3, %ymm15, %ymm1      #  6     0x16  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                  #  7     0x1a  1      OPC=retq                     
                                                                                           
.size target, .-target
