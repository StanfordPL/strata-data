  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  movd %ebx, %xmm2                     #  2     0x5   4      OPC=movd_xmm_r32       
  vpmovzxwd %xmm12, %xmm13             #  3     0x9   5      OPC=vpmovzxwd_xmm_xmm  
  sqrtss %xmm13, %xmm1                 #  4     0xe   5      OPC=sqrtss_xmm_xmm     
  movss %xmm2, %xmm1                   #  5     0x13  4      OPC=movss_xmm_xmm      
  retq                                 #  6     0x17  1      OPC=retq               
                                                                                    
.size target, .-target
