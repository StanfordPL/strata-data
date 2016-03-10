  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                        
.target:                            #        0    0      OPC=<label>                   
  vpmovzxwq %xmm1, %ymm8            #  1     0    5      OPC=vpmovzxwq_ymm_xmm         
  vfnmsub231ss %xmm3, %xmm8, %xmm3  #  2     0x5  5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  vfmadd231ss %xmm3, %xmm2, %xmm1   #  3     0xa  5      OPC=vfmadd231ss_xmm_xmm_xmm   
  retq                              #  4     0xf  1      OPC=retq                      
                                                                                       
.size target, .-target
