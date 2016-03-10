  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovsd %xmm2, %xmm2, %xmm1  #  1     0    4      OPC=vmovsd_xmm_xmm_xmm  
  cvtsi2ssl %ebx, %xmm1       #  2     0x4  4      OPC=cvtsi2ssl_xmm_r32   
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
