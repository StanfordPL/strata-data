  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                   
.target:                          #        0     0      OPC=<label>              
  vpmovzxbq %xmm1, %ymm14         #  1     0     5      OPC=vpmovzxbq_ymm_xmm    
  vandnps %ymm14, %ymm14, %ymm14  #  2     0x5   5      OPC=vandnps_ymm_ymm_ymm  
  cvtss2sd %xmm14, %xmm14         #  3     0xa   5      OPC=cvtss2sd_xmm_xmm     
  pmovzxwd %xmm14, %xmm1          #  4     0xf   6      OPC=pmovzxwd_xmm_xmm     
  retq                            #  5     0x15  1      OPC=retq                 
                                                                                 
.size target, .-target
