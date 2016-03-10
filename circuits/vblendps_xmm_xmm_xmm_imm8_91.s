  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vsqrtpd %xmm3, %xmm1                            #  1     0     4      OPC=vsqrtpd_xmm_xmm         
  vmovsldup %xmm2, %xmm0                          #  2     0x4   4      OPC=vmovsldup_xmm_xmm       
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm0, %xmm10                 #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_byte_29_of_ymm1_to_r8b              #  5     0x11  5      OPC=callq_label             
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x16  5      OPC=callq_label             
  callq .move_r8b_to_byte_31_of_ymm1              #  7     0x1b  5      OPC=callq_label             
  retq                                            #  8     0x20  1      OPC=retq                    
                                                                                                    
.size target, .-target
