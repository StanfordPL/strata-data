  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovdqu %ymm2, %ymm12             #  1     0     4      OPC=vmovdqu_ymm_ymm          
  vunpckhpd %ymm12, %ymm2, %ymm5    #  2     0x4   5      OPC=vunpckhpd_ymm_ymm_ymm    
  movdqu %xmm12, %xmm5              #  3     0x9   5      OPC=movdqu_xmm_xmm           
  vmovups %ymm3, %ymm10             #  4     0xe   4      OPC=vmovups_ymm_ymm          
  vpunpcklqdq %ymm10, %ymm5, %ymm1  #  5     0x12  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  6     0x17  1      OPC=retq                     
                                                                                       
.size target, .-target
