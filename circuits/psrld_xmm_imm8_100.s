  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmaxss %xmm1, %xmm1, %xmm8  #  1     0     4      OPC=vmaxss_xmm_xmm_xmm  
  cvtpd2dq %xmm8, %xmm9       #  2     0x4   5      OPC=cvtpd2dq_xmm_xmm    
  punpckhqdq %xmm8, %xmm9     #  3     0x9   5      OPC=punpckhqdq_xmm_xmm  
  vpmovzxbq %xmm9, %ymm13     #  4     0xe   5      OPC=vpmovzxbq_ymm_xmm   
  movsldup %xmm13, %xmm1      #  5     0x13  5      OPC=movsldup_xmm_xmm    
  retq                        #  6     0x18  1      OPC=retq                
                                                                            
.size target, .-target
