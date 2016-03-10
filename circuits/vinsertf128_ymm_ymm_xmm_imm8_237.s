  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vpmovzxwd %xmm3, %xmm10               #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  subpd %xmm10, %xmm10                  #  2     0x5   5      OPC=subpd_xmm_xmm      
  movdqa %xmm3, %xmm11                  #  3     0xa   5      OPC=movdqa_xmm_xmm     
  por %xmm2, %xmm10                     #  4     0xf   5      OPC=por_xmm_xmm        
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x14  5      OPC=callq_label        
  retq                                  #  6     0x19  1      OPC=retq               
                                                                                     
.size target, .-target
