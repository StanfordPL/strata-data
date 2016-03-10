  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovsxwd %xmm1, %xmm12  #  1     0     5      OPC=vpmovsxwd_xmm_xmm  
  vmovshdup %xmm12, %xmm9  #  2     0x5   5      OPC=vmovshdup_xmm_xmm  
  pmovzxwd %xmm9, %xmm10   #  3     0xa   6      OPC=pmovzxwd_xmm_xmm   
  vmovd %xmm10, %ebx       #  4     0x10  4      OPC=vmovd_r32_xmm      
  retq                     #  5     0x14  1      OPC=retq               
                                                                        
.size target, .-target
