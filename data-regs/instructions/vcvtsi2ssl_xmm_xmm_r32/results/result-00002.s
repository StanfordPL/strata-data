  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  movslq %ebx, %r11       #  1     0    3      OPC=movslq_r64_r32     
  vmovups %xmm2, %xmm1    #  2     0x3  4      OPC=vmovups_xmm_xmm    
  cvtsi2ssl %r11d, %xmm1  #  3     0x7  5      OPC=cvtsi2ssl_xmm_r32  
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
