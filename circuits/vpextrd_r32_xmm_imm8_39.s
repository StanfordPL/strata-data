  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vpmovzxwq %xmm1, %xmm12            #  1     0     5      OPC=vpmovzxwq_xmm_xmm         
  vfnmsub231ss %xmm1, %xmm12, %xmm1  #  2     0x5   5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  vmovhlps %xmm1, %xmm12, %xmm10     #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm      
  vmovshdup %ymm10, %ymm1            #  4     0xe   5      OPC=vmovshdup_ymm_ymm         
  movd %xmm1, %ebx                   #  5     0x13  4      OPC=movd_r32_xmm              
  retq                               #  6     0x17  1      OPC=retq                      
                                                                                         
.size target, .-target
