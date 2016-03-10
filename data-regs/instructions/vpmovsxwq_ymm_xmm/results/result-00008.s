  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vpmovsxwd %xmm2, %ymm3            #  1     0     5      OPC=vpmovsxwd_ymm_xmm         
  vpmovsxwd %xmm3, %ymm8            #  2     0x5   5      OPC=vpmovsxwd_ymm_xmm         
  vpmovzxwq %xmm2, %ymm1            #  3     0xa   5      OPC=vpmovzxwq_ymm_xmm         
  vfnmadd231pd %ymm1, %ymm8, %ymm1  #  4     0xf   5      OPC=vfnmadd231pd_ymm_ymm_ymm  
  vmovdqa %ymm1, %ymm1              #  5     0x14  4      OPC=vmovdqa_ymm_ymm           
  retq                              #  6     0x18  1      OPC=retq                      
                                                                                        
.size target, .-target
