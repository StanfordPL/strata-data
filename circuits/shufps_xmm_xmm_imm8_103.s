  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vpmovzxdq %xmm2, %ymm10                         #  1     0     5      OPC=vpmovzxdq_ymm_xmm       
  vpunpckhdq %xmm10, %xmm2, %xmm15                #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label             
  punpcklqdq %xmm15, %xmm1                        #  4     0xf   5      OPC=punpcklqdq_xmm_xmm      
  movss %xmm11, %xmm1                             #  5     0x14  5      OPC=movss_xmm_xmm           
  retq                                            #  6     0x19  1      OPC=retq                    
                                                                                                    
.size target, .-target
