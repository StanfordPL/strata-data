  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  rsqrtps %xmm1, %xmm2    #  1     0    3      OPC=rsqrtps_xmm_xmm    
  vpmovsxdq %xmm2, %ymm4  #  2     0x3  5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm4, %xmm2  #  3     0x8  4      OPC=vcvtpd2ps_xmm_ymm  
  movaps %xmm2, %xmm1     #  4     0xc  3      OPC=movaps_xmm_xmm     
  retq                    #  5     0xf  1      OPC=retq               
                                                                      
.size target, .-target
