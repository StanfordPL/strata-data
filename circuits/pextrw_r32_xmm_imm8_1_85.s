  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  pmovzxwq %xmm9, %xmm15             #  2     0x5   6      OPC=pmovzxwq_xmm_xmm        
  vaddss %xmm15, %xmm9, %xmm2        #  3     0xb   5      OPC=vaddss_xmm_xmm_xmm      
  vpunpckhdq %xmm2, %xmm15, %xmm7    #  4     0x10  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %xmm7, %ebx                   #  5     0x14  4      OPC=movd_r32_xmm            
  retq                               #  6     0x18  1      OPC=retq                    
                                                                                       
.size target, .-target
