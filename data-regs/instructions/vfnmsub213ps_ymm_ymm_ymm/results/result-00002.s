  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vmovdqa %ymm3, %ymm5              #  1     0     4      OPC=vmovdqa_ymm_ymm           
  vfnmsub231ps %ymm1, %ymm2, %ymm5  #  2     0x4   5      OPC=vfnmsub231ps_ymm_ymm_ymm  
  vmovdqu %ymm5, %ymm15             #  3     0x9   4      OPC=vmovdqu_ymm_ymm           
  vmaxps %ymm5, %ymm15, %ymm1       #  4     0xd   4      OPC=vmaxps_ymm_ymm_ymm        
  retq                              #  5     0x11  1      OPC=retq                      
                                                                                        
.size target, .-target
