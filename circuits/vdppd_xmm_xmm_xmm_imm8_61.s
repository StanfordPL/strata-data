  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vpbroadcastq %xmm2, %xmm8          #  1     0     5      OPC=vpbroadcastq_xmm_xmm     
  vpmovsxbd %xmm8, %xmm9             #  2     0x5   5      OPC=vpmovsxbd_xmm_xmm        
  vandnps %xmm2, %xmm2, %xmm10       #  3     0xa   4      OPC=vandnps_xmm_xmm_xmm      
  vmulpd %xmm3, %xmm2, %xmm15        #  4     0xe   4      OPC=vmulpd_xmm_xmm_xmm       
  vunpcklpd %ymm10, %ymm15, %ymm13   #  5     0x12  5      OPC=vunpcklpd_ymm_ymm_ymm    
  vfmadd213sd %xmm9, %xmm13, %xmm15  #  6     0x17  5      OPC=vfmadd213sd_xmm_xmm_xmm  
  vpmovsxbq %xmm2, %xmm6             #  7     0x1c  5      OPC=vpmovsxbq_xmm_xmm        
  vunpckhpd %ymm6, %ymm15, %ymm15    #  8     0x21  4      OPC=vunpckhpd_ymm_ymm_ymm    
  vaddsd %xmm15, %xmm13, %xmm1       #  9     0x25  5      OPC=vaddsd_xmm_xmm_xmm       
  retq                               #  10    0x2a  1      OPC=retq                     
                                                                                        
.size target, .-target
