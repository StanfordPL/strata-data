  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                  
.target:                   #        0     0      OPC=<label>             
  vpmovzxwq %xmm1, %ymm12  #  1     0     5      OPC=vpmovzxwq_ymm_xmm   
  vcvtpd2ps %xmm1, %xmm7   #  2     0x5   4      OPC=vcvtpd2ps_xmm_xmm   
  pmovzxbd %xmm12, %xmm1   #  3     0x9   6      OPC=pmovzxbd_xmm_xmm    
  punpckhqdq %xmm7, %xmm1  #  4     0xf   4      OPC=punpckhqdq_xmm_xmm  
  retq                     #  5     0x13  1      OPC=retq                
                                                                         
.size target, .-target
