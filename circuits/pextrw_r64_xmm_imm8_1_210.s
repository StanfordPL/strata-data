  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                
.target:                  #        0     0      OPC=<label>           
  movshdup %xmm1, %xmm9   #  1     0     5      OPC=movshdup_xmm_xmm  
  pmovzxwd %xmm9, %xmm14  #  2     0x5   6      OPC=pmovzxwd_xmm_xmm  
  movd %xmm14, %ebx       #  3     0xb   5      OPC=movd_r32_xmm      
  retq                    #  4     0x10  1      OPC=retq              
                                                                      
.size target, .-target
