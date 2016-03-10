  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movsldup %xmm3, %xmm8           #  1     0     5      OPC=movsldup_xmm_xmm        
  vpmovzxdq %xmm3, %xmm1          #  2     0x5   5      OPC=vpmovzxdq_xmm_xmm       
  movss %xmm1, %xmm2              #  3     0xa   4      OPC=movss_xmm_xmm           
  vpunpckhdq %xmm2, %xmm8, %xmm1  #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsd %xmm2, %xmm1              #  5     0x12  4      OPC=movsd_xmm_xmm           
  retq                            #  6     0x16  1      OPC=retq                    
                                                                                    
.size target, .-target
