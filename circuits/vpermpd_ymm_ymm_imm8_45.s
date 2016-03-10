  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vrcpss %xmm2, %xmm11, %xmm13          #  2     0x5   4      OPC=vrcpss_xmm_xmm_xmm     
  vunpcklpd %xmm2, %xmm11, %xmm11       #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xd   5      OPC=callq_label            
  unpckhpd %xmm13, %xmm1                #  5     0x12  5      OPC=unpckhpd_xmm_xmm       
  retq                                  #  6     0x17  1      OPC=retq                   
                                                                                         
.size target, .-target
