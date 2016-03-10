  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vunpcklpd %xmm2, %xmm9, %xmm0                   #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm   
  vpunpckhdq %xmm2, %xmm0, %xmm1                  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovlhps %xmm1, %xmm10, %xmm13                  #  4     0xd   4      OPC=vmovlhps_xmm_xmm_xmm    
  unpckhps %xmm13, %xmm1                          #  5     0x11  4      OPC=unpckhps_xmm_xmm        
  retq                                            #  6     0x15  1      OPC=retq                    
                                                                                                    
.size target, .-target
