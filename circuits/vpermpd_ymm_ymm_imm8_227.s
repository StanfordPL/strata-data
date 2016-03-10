  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklpd %xmm2, %xmm11, %xmm9        #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vdivss %xmm2, %xmm9, %xmm15           #  3     0x9   4      OPC=vdivss_xmm_xmm_xmm     
  vunpckhpd %xmm15, %xmm11, %xmm10      #  4     0xd   5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x12  5      OPC=callq_label            
  retq                                  #  6     0x17  1      OPC=retq                   
                                                                                         
.size target, .-target
