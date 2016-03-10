  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastw %xmm11, %xmm14                     #  2     0x5   5      OPC=vpbroadcastw_xmm_xmm  
  pmovzxwd %xmm14, %xmm15                         #  3     0xa   6      OPC=pmovzxwd_xmm_xmm      
  vpmovzxwq %xmm10, %ymm2                         #  4     0x10  5      OPC=vpmovzxwq_ymm_xmm     
  unpckhpd %xmm2, %xmm2                           #  5     0x15  4      OPC=unpckhpd_xmm_xmm      
  psubd %xmm15, %xmm14                            #  6     0x19  5      OPC=psubd_xmm_xmm         
  vpaddd %xmm2, %xmm14, %xmm10                    #  7     0x1e  4      OPC=vpaddd_xmm_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x22  5      OPC=callq_label           
  retq                                            #  9     0x27  1      OPC=retq                  
                                                                                                  
.size target, .-target
