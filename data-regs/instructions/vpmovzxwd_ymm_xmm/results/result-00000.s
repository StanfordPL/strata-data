  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label         
  vpmovzxwd %xmm11, %xmm1               #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm   
  vpmovzxwd %xmm2, %xmm9                #  3     0xa   5      OPC=vpmovzxwd_xmm_xmm   
  punpckhdq %xmm11, %xmm10              #  4     0xf   5      OPC=punpckhdq_xmm_xmm   
  vorpd %xmm1, %xmm1, %xmm11            #  5     0x14  4      OPC=vorpd_xmm_xmm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm3  #  6     0x18  5      OPC=callq_label         
  vmaxpd %ymm3, %ymm9, %ymm1            #  7     0x1d  4      OPC=vmaxpd_ymm_ymm_ymm  
  retq                                  #  8     0x21  1      OPC=retq                
                                                                                      
.size target, .-target
