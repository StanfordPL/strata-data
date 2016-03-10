  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm14  #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  movshdup %xmm14, %xmm1   #  2     0x5   5      OPC=movshdup_xmm_xmm   
  subsd %xmm1, %xmm14      #  3     0xa   5      OPC=subsd_xmm_xmm      
  vmovmskpd %ymm14, %rbx   #  4     0xf   5      OPC=vmovmskpd_r64_ymm  
  retq                     #  5     0x14  1      OPC=retq               
                                                                        
.size target, .-target
