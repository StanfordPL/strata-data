  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  vmovshdup %xmm2, %xmm10             #  1     0     4      OPC=vmovshdup_xmm_xmm       
  movsldup %xmm2, %xmm9               #  2     0x4   5      OPC=movsldup_xmm_xmm        
  vunpckhps %xmm2, %xmm10, %xmm1      #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckldq %xmm9, %xmm1, %xmm11     #  4     0xd   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_byte_24_of_ymm1_to_r9b  #  5     0x12  5      OPC=callq_label             
  callq .move_r9b_to_byte_10_of_ymm1  #  6     0x17  5      OPC=callq_label             
  vmovsd %xmm1, %xmm11, %xmm1         #  7     0x1c  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                                #  8     0x20  1      OPC=retq                    
                                                                                        
.size target, .-target
