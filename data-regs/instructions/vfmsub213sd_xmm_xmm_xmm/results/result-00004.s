  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vfmsub231pd %xmm1, %xmm2, %xmm3  #  1     0     5      OPC=vfmsub231pd_xmm_xmm_xmm  
  cvtps2pd %xmm3, %xmm12           #  2     0x5   4      OPC=cvtps2pd_xmm_xmm         
  vcvtpd2ps %xmm12, %xmm8          #  3     0x9   5      OPC=vcvtpd2ps_xmm_xmm        
  rcpps %xmm12, %xmm8              #  4     0xe   4      OPC=rcpps_xmm_xmm            
  vfmadd132ps %ymm3, %ymm8, %ymm8  #  5     0x12  5      OPC=vfmadd132ps_ymm_ymm_ymm  
  vmovlhps %xmm8, %xmm3, %xmm12    #  6     0x17  5      OPC=vmovlhps_xmm_xmm_xmm     
  vmovsd %xmm12, %xmm1, %xmm1      #  7     0x1c  5      OPC=vmovsd_xmm_xmm_xmm       
  retq                             #  8     0x21  1      OPC=retq                     
                                                                                      
.size target, .-target
