  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovaps %xmm2, %xmm13                           #  1     0     4      OPC=vmovaps_xmm_xmm         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vbroadcastss %xmm2, %xmm0                       #  3     0x9   5      OPC=vbroadcastss_xmm_xmm    
  punpckldq %xmm0, %xmm13                         #  4     0xe   5      OPC=punpckldq_xmm_xmm       
  vunpckhpd %xmm2, %xmm13, %xmm9                  #  5     0x13  4      OPC=vunpckhpd_xmm_xmm_xmm   
  vpunpckldq %xmm10, %xmm8, %xmm8                 #  6     0x17  5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  7     0x1c  5      OPC=callq_label             
  retq                                            #  8     0x21  1      OPC=retq                    
                                                                                                    
.size target, .-target
