  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                      #  Line  RIP   Bytes  Opcode                 
.target:                    #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm12   #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm12, %ymm15  #  2     0x5   5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm15, %xmm15  #  3     0xa   5      OPC=vcvtpd2ps_xmm_ymm  
  vmovupd %xmm15, %xmm5     #  4     0xf   5      OPC=vmovupd_xmm_xmm    
  movdqu %xmm5, %xmm1       #  5     0x14  4      OPC=movdqu_xmm_xmm     
  retq                      #  6     0x18  1      OPC=retq               
                                                                         
.size target, .-target
