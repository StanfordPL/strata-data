  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovd %ebx, %xmm3           #  1     0     4      OPC=vmovd_xmm_r32       
  vmovdqu %ymm3, %ymm6        #  2     0x4   4      OPC=vmovdqu_ymm_ymm     
  vmaxps %xmm6, %xmm3, %xmm9  #  3     0x8   4      OPC=vmaxps_xmm_xmm_xmm  
  movdqu %xmm9, %xmm1         #  4     0xc   5      OPC=movdqu_xmm_xmm      
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
