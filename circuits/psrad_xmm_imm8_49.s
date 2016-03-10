  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpmovsxdq %xmm1, %ymm2           #  1     0     5      OPC=vpmovsxdq_ymm_xmm        
  vmovshdup %ymm2, %ymm6           #  2     0x5   4      OPC=vmovshdup_ymm_ymm        
  vfmsub132ps %ymm2, %ymm6, %ymm2  #  3     0x9   5      OPC=vfmsub132ps_ymm_ymm_ymm  
  vcvtpd2ps %ymm2, %xmm12          #  4     0xe   4      OPC=vcvtpd2ps_xmm_ymm        
  vmovdqu %ymm12, %ymm6            #  5     0x12  5      OPC=vmovdqu_ymm_ymm          
  movaps %xmm6, %xmm1              #  6     0x17  3      OPC=movaps_xmm_xmm           
  retq                             #  7     0x1a  1      OPC=retq                     
                                                                                      
.size target, .-target
