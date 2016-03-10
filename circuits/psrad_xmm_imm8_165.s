  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpmovsxdq %xmm1, %ymm14     #  1     0     5      OPC=vpmovsxdq_ymm_xmm   
  vrsqrtps %ymm14, %ymm5      #  2     0x5   5      OPC=vrsqrtps_ymm_ymm    
  vsubpd %ymm5, %ymm5, %ymm3  #  3     0xa   4      OPC=vsubpd_ymm_ymm_ymm  
  vcvtpd2ps %ymm3, %xmm4      #  4     0xe   4      OPC=vcvtpd2ps_xmm_ymm   
  movupd %xmm4, %xmm1         #  5     0x12  4      OPC=movupd_xmm_xmm      
  retq                        #  6     0x16  1      OPC=retq                
                                                                            
.size target, .-target
