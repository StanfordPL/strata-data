  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovups %ymm2, %ymm6              #  1     0     4      OPC=vmovups_ymm_ymm          
  vpunpckhdq %ymm6, %ymm2, %ymm11   #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckldq %ymm11, %ymm2, %ymm5   #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckhqdq %ymm5, %ymm6, %ymm12  #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovdqu %ymm12, %ymm1             #  5     0x11  5      OPC=vmovdqu_ymm_ymm          
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target
