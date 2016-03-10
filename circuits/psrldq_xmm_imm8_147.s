  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vsubpd %xmm1, %xmm1, %xmm2  #  1     0     4      OPC=vsubpd_xmm_xmm_xmm  
  pmovzxwd %xmm2, %xmm11      #  2     0x4   6      OPC=pmovzxwd_xmm_xmm    
  vcvttpd2dq %xmm11, %xmm13   #  3     0xa   5      OPC=vcvttpd2dq_xmm_xmm  
  movddup %xmm13, %xmm1       #  4     0xf   5      OPC=movddup_xmm_xmm     
  retq                        #  5     0x14  1      OPC=retq                
                                                                            
.size target, .-target
