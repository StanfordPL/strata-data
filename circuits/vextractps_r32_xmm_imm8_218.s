  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  pmovzxwq %xmm1, %xmm13          #  1     0     6      OPC=pmovzxwq_xmm_xmm        
  vcvtps2pd %xmm13, %ymm3         #  2     0x6   5      OPC=vcvtps2pd_ymm_xmm       
  vpunpckhdq %xmm3, %xmm1, %xmm8  #  3     0xb   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movq %xmm8, %rbx                #  4     0xf   5      OPC=movq_r64_xmm            
  retq                            #  5     0x14  1      OPC=retq                    
                                                                                    
.size target, .-target
