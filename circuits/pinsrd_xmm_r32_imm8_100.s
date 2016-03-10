  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovd %ebx, %xmm7           #  1     0     4      OPC=vmovd_xmm_r32       
  cvtsi2ssl %ebx, %xmm1       #  2     0x4   4      OPC=cvtsi2ssl_xmm_r32   
  vmovss %xmm7, %xmm1, %xmm8  #  3     0x8   4      OPC=vmovss_xmm_xmm_xmm  
  movss %xmm8, %xmm1          #  4     0xc   5      OPC=movss_xmm_xmm       
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
