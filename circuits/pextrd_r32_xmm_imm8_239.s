  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  movdqa %xmm1, %xmm8      #  1     0     5      OPC=movdqa_xmm_xmm     
  vmovshdup %xmm1, %xmm12  #  2     0x5   4      OPC=vmovshdup_xmm_xmm  
  punpckhdq %xmm8, %xmm12  #  3     0x9   5      OPC=punpckhdq_xmm_xmm  
  movd %xmm12, %ebx        #  4     0xe   5      OPC=movd_r32_xmm       
  retq                     #  5     0x13  1      OPC=retq               
                                                                        
.size target, .-target
