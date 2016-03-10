  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vpmovsxbq %xmm1, %xmm12        #  1     0     5      OPC=vpmovsxbq_xmm_xmm     
  vmovddup %xmm12, %xmm15        #  2     0x5   5      OPC=vmovddup_xmm_xmm      
  vpaddd %ymm15, %ymm12, %ymm14  #  3     0xa   5      OPC=vpaddd_ymm_ymm_ymm    
  vpsubq %xmm14, %xmm14, %xmm4   #  4     0xf   5      OPC=vpsubq_xmm_xmm_xmm    
  vmovhlps %xmm1, %xmm4, %xmm15  #  5     0x14  4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovsd %xmm15, %xmm1, %xmm3    #  6     0x18  5      OPC=vmovsd_xmm_xmm_xmm    
  movd %xmm3, %ebx               #  7     0x1d  4      OPC=movd_r32_xmm          
  retq                           #  8     0x21  1      OPC=retq                  
                                                                                 
.size target, .-target
