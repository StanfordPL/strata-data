  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vmovq %rbx, %xmm12              #  1     0    5      OPC=vmovq_xmm_r64          
  movq %xmm2, %xmm7               #  2     0x5  4      OPC=movq_xmm_xmm           
  vunpcklpd %xmm12, %xmm7, %xmm1  #  3     0x9  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                            #  4     0xe  1      OPC=retq                   
                                                                                  
.size target, .-target
