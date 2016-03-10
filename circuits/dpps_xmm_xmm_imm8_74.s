  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpxor %ymm0, %ymm0, %ymm11                      #  2     0x5   4      OPC=vpxor_ymm_ymm_ymm        
  vfmsub213ps %xmm8, %xmm1, %xmm2                 #  3     0x9   5      OPC=vfmsub213ps_xmm_xmm_xmm  
  vfmadd231ps %xmm11, %xmm11, %xmm2               #  4     0xe   5      OPC=vfmadd231ps_xmm_xmm_xmm  
  vpunpckhdq %xmm2, %xmm10, %xmm4                 #  5     0x13  4      OPC=vpunpckhdq_xmm_xmm_xmm   
  movddup %xmm4, %xmm1                            #  6     0x17  4      OPC=movddup_xmm_xmm          
  retq                                            #  7     0x1b  1      OPC=retq                     
                                                                                                     
.size target, .-target
