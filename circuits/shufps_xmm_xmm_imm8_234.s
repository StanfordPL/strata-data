  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movsldup %xmm1, %xmm1  #  1     0    4      OPC=movsldup_xmm_xmm  
  rsqrtss %xmm2, %xmm2   #  2     0x4  4      OPC=rsqrtss_xmm_xmm   
  unpckhpd %xmm2, %xmm1  #  3     0x8  4      OPC=unpckhpd_xmm_xmm  
  retq                   #  4     0xc  1      OPC=retq              
                                                                    
.size target, .-target
