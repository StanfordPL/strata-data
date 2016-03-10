  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm2, %xmm8            #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  vpmovzxwd %xmm2, %xmm10               #  2     0x4   5      OPC=vpmovzxwd_xmm_xmm   
  unpckhpd %xmm8, %xmm2                 #  3     0x9   5      OPC=unpckhpd_xmm_xmm    
  vpmovzxwd %xmm2, %xmm11               #  4     0xe   5      OPC=vpmovzxwd_xmm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x13  5      OPC=callq_label         
  retq                                  #  6     0x18  1      OPC=retq                
                                                                                      
.size target, .-target
