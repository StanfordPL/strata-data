  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vcvttps2dq %ymm2, %ymm0            #  1     0     4      OPC=vcvttps2dq_ymm_ymm       
  vpunpckhqdq %ymm0, %ymm2, %ymm13   #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovddup %ymm2, %ymm15             #  3     0x8   4      OPC=vmovddup_ymm_ymm         
  vpunpcklqdq %ymm15, %ymm13, %ymm1  #  4     0xc   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                               #  5     0x11  1      OPC=retq                     
                                                                                        
.size target, .-target
