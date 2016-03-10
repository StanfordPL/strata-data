  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm4  #  1     0    5      OPC=vpmovzxwd_ymm_xmm  
  cvtpd2ps %xmm4, %xmm1   #  2     0x5  4      OPC=cvtpd2ps_xmm_xmm   
  subsd %xmm1, %xmm1      #  3     0x9  4      OPC=subsd_xmm_xmm      
  retq                    #  4     0xd  1      OPC=retq               
                                                                      
.size target, .-target
