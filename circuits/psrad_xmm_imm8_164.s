  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                      #  Line  RIP   Bytes  Opcode                 
.target:                    #        0     0      OPC=<label>            
  vrsqrtps %xmm1, %xmm3     #  1     0     4      OPC=vrsqrtps_xmm_xmm   
  vpmovsxdq %xmm3, %ymm14   #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm14, %xmm14  #  3     0x9   5      OPC=vcvtpd2ps_xmm_ymm  
  movupd %xmm14, %xmm1      #  4     0xe   5      OPC=movupd_xmm_xmm     
  retq                      #  5     0x13  1      OPC=retq               
                                                                         
.size target, .-target
