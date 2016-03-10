  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vcvttps2dq %ymm2, %ymm6           #  1     0     4      OPC=vcvttps2dq_ymm_ymm       
  vpand %ymm2, %ymm2, %ymm1         #  2     0x4   4      OPC=vpand_ymm_ymm_ymm        
  vpunpcklqdq %ymm1, %ymm6, %ymm4   #  3     0x8   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vmovsldup %ymm2, %ymm12           #  4     0xc   4      OPC=vmovsldup_ymm_ymm        
  vpunpckhdq %ymm2, %ymm4, %ymm15   #  5     0x10  4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhdq %ymm15, %ymm12, %ymm1  #  6     0x14  5      OPC=vpunpckhdq_ymm_ymm_ymm   
  retq                              #  7     0x19  1      OPC=retq                     
                                                                                       
.size target, .-target
