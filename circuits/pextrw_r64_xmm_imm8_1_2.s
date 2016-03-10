  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  pmovzxwd %xmm1, %xmm8            #  1     0     6      OPC=pmovzxwd_xmm_xmm        
  vpunpckhdq %xmm8, %xmm8, %xmm12  #  2     0x6   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %xmm12, %ebx                #  3     0xb   5      OPC=movd_r32_xmm            
  retq                             #  4     0x10  1      OPC=retq                    
                                                                                     
.size target, .-target
