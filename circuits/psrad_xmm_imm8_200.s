  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                          
.target:                               #        0     0      OPC=<label>                     
  vrsqrtps %xmm1, %xmm15               #  1     0     4      OPC=vrsqrtps_xmm_xmm            
  addsubps %xmm15, %xmm1               #  2     0x4   5      OPC=addsubps_xmm_xmm            
  vpmovsxdq %xmm15, %ymm6              #  3     0x9   5      OPC=vpmovsxdq_ymm_xmm           
  pmovzxwq %xmm1, %xmm7                #  4     0xe   5      OPC=pmovzxwq_xmm_xmm            
  vcvtpd2ps %ymm6, %xmm11              #  5     0x13  4      OPC=vcvtpd2ps_xmm_ymm           
  vfmaddsub231ps %xmm7, %xmm7, %xmm11  #  6     0x17  5      OPC=vfmaddsub231ps_xmm_xmm_xmm  
  minpd %xmm11, %xmm1                  #  7     0x1c  5      OPC=minpd_xmm_xmm               
  retq                                 #  8     0x21  1      OPC=retq                        
                                                                                             
.size target, .-target
