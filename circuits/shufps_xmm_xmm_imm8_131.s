  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckhdq %xmm2, %xmm1, %xmm15  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpmovsxbd %xmm15, %ymm6          #  2     0x4   5      OPC=vpmovsxbd_ymm_xmm       
  pmovsxwq %xmm15, %xmm6           #  3     0x9   6      OPC=pmovsxwq_xmm_xmm        
  punpcklqdq %xmm1, %xmm6          #  4     0xf   4      OPC=punpcklqdq_xmm_xmm      
  vunpckhps %ymm6, %ymm15, %ymm10  #  5     0x13  4      OPC=vunpckhps_ymm_ymm_ymm   
  movss %xmm2, %xmm15              #  6     0x17  5      OPC=movss_xmm_xmm           
  vmovlhps %xmm15, %xmm10, %xmm14  #  7     0x1c  5      OPC=vmovlhps_xmm_xmm_xmm    
  movapd %xmm14, %xmm1             #  8     0x21  5      OPC=movapd_xmm_xmm          
  retq                             #  9     0x26  1      OPC=retq                    
                                                                                     
.size target, .-target
