  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklpd %xmm2, %xmm2, %xmm12        #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovss %xmm11, %xmm11, %xmm13         #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm     
  movhlps %xmm10, %xmm13                #  4     0xe   4      OPC=movhlps_xmm_xmm        
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x12  5      OPC=callq_label            
  unpcklpd %xmm2, %xmm1                 #  6     0x17  4      OPC=unpcklpd_xmm_xmm       
  retq                                  #  7     0x1b  1      OPC=retq                   
                                                                                         
.size target, .-target
