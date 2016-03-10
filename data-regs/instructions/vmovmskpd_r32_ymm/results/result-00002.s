  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vpmovsxbq %xmm1, %ymm15       #  1     0     5      OPC=vpmovsxbq_ymm_xmm   
  vcvtdq2ps %ymm15, %ymm11      #  2     0x5   5      OPC=vcvtdq2ps_ymm_ymm   
  pmovsxbq %xmm11, %xmm5        #  3     0xa   6      OPC=pmovsxbq_xmm_xmm    
  vmovups %xmm5, %xmm14         #  4     0x10  4      OPC=vmovups_xmm_xmm     
  vxorpd %xmm11, %xmm15, %xmm2  #  5     0x14  5      OPC=vxorpd_xmm_xmm_xmm  
  minpd %xmm2, %xmm14           #  6     0x19  5      OPC=minpd_xmm_xmm       
  psubd %xmm14, %xmm1           #  7     0x1e  5      OPC=psubd_xmm_xmm       
  vmovmskpd %ymm1, %rbx         #  8     0x23  4      OPC=vmovmskpd_r64_ymm   
  retq                          #  9     0x27  1      OPC=retq                
                                                                              
.size target, .-target
